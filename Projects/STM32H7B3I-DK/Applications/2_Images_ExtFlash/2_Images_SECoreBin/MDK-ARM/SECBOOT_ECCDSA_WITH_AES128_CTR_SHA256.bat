::Post build for SECBOOT_ECCDSA_WITH_AES128_CTR_SHA256
:: arg1 is the build directory
:: arg2 is the elf file path+name
:: arg3 is the bin file path+name
:: arg4 is the firmware Id (1/2/3)
:: arg5 is the version
:: arg6 when present forces "bigelf" generation
@echo off
set "projectdir=%1"
set "execname=%~n3"
set "elf=%2"
set "bin=%3"
set "fwid=%4"
set "version=%5"

set "SBSFUBootLoader=%~d0%~p0\\..\\.."
::The default installation path of the Cube Programmer tool is: "C:\Program Files (x86)\STMicroelectronics\STM32Cube\STM32CubeProgrammer\bin"
::If you installed it in another location, please update the %programmertool% variable below accordingly.
set "programmertool="C:\\Program Files (x86)\\STMicroelectronics\\STM32Cube\\STM32CubeProgrammer\\bin\\STM32_Programmer_CLI""
set "userAppBinary=%projectdir%\\..\\Binary\\"

set "sfu=%userAppBinary%\\%execname%.sfu"
set "sfb=%userAppBinary%\\%execname%.sfb"
set "sign=%userAppBinary%\\%execname%.sign"
set "headerbin=%userAppBinary%\\%execname%sfuh.bin"
set "bigbinary=%userAppBinary%\\SBSFU_%execname%_Header.bin"
set "elfbackup=%userAppBinary%\\SBSFU_%execname%.elf"
set "partialbin=%userAppBinary%\\Partial%execname%.bin"
set "partialsfb=%userAppBinary%\\Partial%execname%.sfb"
set "partialsfu=%userAppBinary%\\Partial%execname%.sfu"
set "partialsign=%userAppBinary%\\Partial%execname%.sign"
set "partialoffset=%userAppBinary%\\Partial%execname%.offset"
set "ref_userapp=%projectdir%\\RefUserApp.bin"

set "nonce=%SBSFUBootLoader%\\2_Images_SECoreBin\\Binary\\nonce.bin"
set "oemkey=%SBSFUBootLoader%\\2_Images_SECoreBin\\Binary\\OEM_KEY_COMPANY%fwid%_key_AES_CTR.bin"
set "ecckey=%SBSFUBootLoader%\\2_Images_SECoreBin\\Binary\\ECCKEY%fwid%.txt"
set "sbsfuelf=%SBSFUBootLoader%\\2_Images_SBSFU\\MDK-ARM\\STM32H7B3I_DISCO\\Exe\\SBSFU.axf"
set "mapping=%SBSFUBootLoader%\\Linker_Common\\MDK-ARM\\mapping_fwimg.h"
set "magic=SFU%fwid%"
set "offset=1024"
::With standalone loader alignment for partial update must be done on SWAP size
set "alignment=131072"

::comment this line to force python
::python is used if windows executable not found
pushd %projectdir%\..\..\..\..\..\..\Middlewares\ST\STM32_Secure_Engine\Utilities\KeysAndImages
set basedir=%cd%
popd
goto exe:
goto py:
:exe
::line for window executable
echo Postbuild with windows executable
set "prepareimage=%basedir%\\win\\prepareimage\\prepareimage.exe"
set "python="
if exist %prepareimage% (
goto postbuild
)
:py
::line for python
echo Postbuild with python script
set "prepareimage=%basedir%\\prepareimage.py"
set "python=python "
:postbuild

::Make sure we have a Binary sub-folder in UserApp folder
if not exist "%userAppBinary%" (
mkdir "%userAppBinary%"
)

::PostBuild is fired if elf has been regenerated from last run, so elf is different from backup elf
if exist %elfbackup% (
fc %elfbackup% %elf% >NUL && (goto nothingtodo) || echo "elf has been modified, processing required"
)
::Initialization vector AES_IV[127:0]= Nonce[63:0] || 0b0000 0000 0000 0000 0000 0000 0000 0000 0000 || Address[31:4] (address modulo 128-bit)
:: Address[31:4] == ((__ICFEDIT_region_SLOT_0_start__ + FW_OFFSET_IMAGE) >> 4) ==> -a 0x09000040
set "command=%python%%prepareimage% enc -k %oemkey% -n %nonce% -a 0x09000040 %bin% %sfu%  > %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

:: FW Signature calculated on encrypted firmware
set "command=%python%%prepareimage% sha256 %sfu% %sign% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

set "command=%python%%prepareimage% pack -m %magic% -k %ecckey%  -r 36 -v %version% -n %nonce% -f %sfu% -t %sign% %sfb% -o %offset% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

set "command=%python%%prepareimage% header -m %magic% -k  %ecckey% -r 36 -v %version%  -n %nonce% -f %sfu% -t %sign% -o %offset% %headerbin% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

::get Header address when not contiguous with firmware
if exist %projectdir%\header.txt (
  del %projectdir%\header.txt
)
set "command=%python%%prepareimage% extract -d "SLOT_ACTIVE_1_HEADER" %mapping% > %projectdir%\header.txt"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error
set /P header=<%projectdir%\header.txt >> %projectdir%\output.txt 2>>&1
echo header %header% >> %projectdir%\output.txt 2>>&1

::Big binary : SBSFU + header of Slot0
set "command=%python%%prepareimage% merge -i %headerbin% -s %sbsfuelf% -x %header% %bigbinary% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

::Partial image generation if reference userapp exists
if not exist "%ref_userapp%" (
goto :bigelf
)
set "command=%python%%prepareimage% diff -1 %ref_userapp% -2 %bin% %partialbin% -a %alignment% --poffset %partialoffset% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

set "command=%python%%prepareimage% enc -k %oemkey% -n %nonce% -a 0x09000040 --poffset %partialoffset% %partialbin% %partialsfu%  >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

set "command=%python%%prepareimage% sha256  %partialsfu% %partialsign% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

set "command=%python%%prepareimage% pack -m %magic% -k %ecckey%  -r 36 -v %version% -n %nonce% -f %sfu% -t %sign% -o %offset% --pfw %partialsfu% --ptag %partialsign% --poffset  %partialoffset% %partialsfb%>> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

:bigelf
IF  "%~6"=="" goto :finish
echo "Generating the global elf file (SBSFU and userApp)"
echo "Generating the global elf file (SBSFU and userApp)" >> %projectdir%\output.txt
set "command=%programmertool% -ms %elf% %headerbin% %sbsfuelf% >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error
set "command=copy %elf% %elfbackup%  >> %projectdir%\output.txt 2>&1"
%command%
IF %ERRORLEVEL% NEQ 0 goto :error

:finish
::backup and clean up the intermediate file
del %sign%
del %sfu%
del %headerbin%
if exist "%ref_userapp%" (
del %partialsign%
del %partialbin%
del %partialsfu%
del %partialoffset%
)

exit 0

:error
echo "%command% : failed" >> %projectdir%\\output.txt
:: remove the elf to force the regeneration
if exist %elf%(
  del %elf%
)
if exist %elfbackup%(
  del %elfbackup%
)
echo %command% : failed

pause
exit 1

:nothingtodo
exit 0