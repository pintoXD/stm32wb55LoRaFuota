/*
******************************************************************************
**
**  File        : STM32H750XBHx_FLASH.ld
**
**
**
**  Abstract    : Linker script for STM32H7 series
**                128Kbytes FLASH and 192Kbytes RAM
**
**                Set heap size, stack size and stack location according
**                to application requirements.
**
**                Set memory bank area and size if external memory is used.
**
**  Target      : STMicroelectronics STM32
**
**  Distribution: The file is distributed “as is,” without any warranty
**                of any kind.
**
*****************************************************************************
** @attention
**
** <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
** All rights reserved.</center></h2>
**
** This software component is licensed by ST under BSD 3-Clause license,
** the "License"; You may not use this file except in compliance with the
** License. You may obtain a copy of the License at:
**                        opensource.org/licenses/BSD-3-Clause
**
*****************************************************************************
*/

/* Entry Point */
ENTRY(Reset_Handler)

/* Highest address of the user mode stack */
_estack = 0x20020000;

/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x800; /* required amount of stack */

INCLUDE mapping_fwimg.ld
INCLUDE mapping_sbsfu.ld

/* Specific ROM/RAM UserApp definition */
__ICFEDIT_intvec_start__  = __ICFEDIT_SLOT_Active_1_start__    + 0x400;  /* Cortex-M7: align the init vectors on 0x400 */
APP_LOADER_region_ROM_length = __ICFEDIT_APP_LOADER_region_ROM_end__ - __ICFEDIT_APP_LOADER_region_ROM_start__ + 1;
/* Be careful : a specific region reserved for LOADER from __ICFEDIT_APP_LOADER_region_ROM_start__ to __ICFEDIT_APP_LOADER_region_ROM_end__ */
APPLI_region_ROM_start    = __ICFEDIT_APP_LOADER_region_ROM_end__  + 1;
APPLI_region_ROM_length   = __ICFEDIT_SLOT_Active_1_end__  - APPLI_region_ROM_start + 1;
APPLI_region_RAM_start    = __ICFEDIT_SE_region_RAM_end__ + 1;
/* Be careful : a specific region reserved for LOADER execution from RAM starts from __ICFEDIT_APP_LOADER_region_RAM_code_start__ */
APPLI_region_RAM_length    = __ICFEDIT_APP_LOADER_region_RAM_code_start__ - APPLI_region_RAM_start;

/* Specify the memory areas */
MEMORY
{
 ISR_VECTOR (rx)   : ORIGIN = __ICFEDIT_intvec_start__, LENGTH = VECTOR_SIZE
 APP_LOADER_region_ROM : ORIGIN = __ICFEDIT_APP_LOADER_region_ROM_start__, LENGTH = APP_LOADER_region_ROM_length
 APPLI_region_ROM  : ORIGIN = APPLI_region_ROM_start, LENGTH = APPLI_region_ROM_length
 APPLI_region_RAM  : ORIGIN = APPLI_region_RAM_start, LENGTH = APPLI_region_RAM_length
}

/* Define output sections */
SECTIONS
{
  /* The startup code goes first into FLASH */
  .isr_vector :
  {
    . = ALIGN(8);
    KEEP(*(.isr_vector)) /* Startup code */
    FILL(0);
    . = ORIGIN(ISR_VECTOR) + LENGTH(ISR_VECTOR) - 1;
    BYTE(0)
    . = ALIGN(8);
  } >ISR_VECTOR

  .SE_IF_Code : {
  KEEP(*se_interface_app.o (.text .text*))
  } >SE_IF_region_ROM

  .text.LOADER_Bin :
  {
    LOADER_Bin_start = .;
    KEEP(*(LOADER_Bin));
    LOADER_Bin_end = .;
  } > APP_LOADER_region_ROM


  /* The program code and other data goes into FLASH */
  .text :
  {
    . = ALIGN(8);
    *(.text)           /* .text sections (code) */
    *(.text*)          /* .text* sections (code) */
    *(.glue_7)         /* glue arm to thumb code */
    *(.glue_7t)        /* glue thumb to arm code */
    *(.eh_frame)

    KEEP (*(.init))
    KEEP (*(.fini))

    . = ALIGN(8);
    _etext = .;        /* define a global symbols at end of code */
  } >APPLI_region_ROM

  /* Constant data goes into FLASH */
  .rodata :
  {
    . = ALIGN(8);
    *(.rodata)         /* .rodata sections (constants, strings, etc.) */
    *(.rodata*)        /* .rodata* sections (constants, strings, etc.) */
    . = ALIGN(8);
  } >APPLI_region_ROM

  .ARM.extab   :
  {
  . = ALIGN(8);
  *(.ARM.extab* .gnu.linkonce.armextab.*)
  . = ALIGN(8);
  } >APPLI_region_ROM
  .ARM : {
	. = ALIGN(8);
    __exidx_start = .;
    *(.ARM.exidx*)
    __exidx_end = .;
	. = ALIGN(8);
  } >APPLI_region_ROM

  .preinit_array     :
  {
	. = ALIGN(8);
    PROVIDE_HIDDEN (__preinit_array_start = .);
    KEEP (*(.preinit_array*))
    PROVIDE_HIDDEN (__preinit_array_end = .);
	. = ALIGN(8);
  } >APPLI_region_ROM

  .init_array :
  {
	. = ALIGN(8);
    PROVIDE_HIDDEN (__init_array_start = .);
    KEEP (*(SORT(.init_array.*)))
    KEEP (*(.init_array*))
    PROVIDE_HIDDEN (__init_array_end = .);
	. = ALIGN(8);
  } >APPLI_region_ROM
  .fini_array :
  {
	. = ALIGN(8);
    PROVIDE_HIDDEN (__fini_array_start = .);
    KEEP (*(SORT(.fini_array.*)))
    KEEP (*(.fini_array*))
    PROVIDE_HIDDEN (__fini_array_end = .);
	. = ALIGN(8);
  } >APPLI_region_ROM

  /* used by the startup to initialize data */
  _sidata = LOADADDR(.data);

  /* Initialized data sections goes into RAM, load LMA copy after code */
  .data :
  {
    . = ALIGN(8);
    _sdata = .;        /* create a global symbol at data start */
    *(.data)           /* .data sections */
    *(.data*)          /* .data* sections */

    . = ALIGN(8);
    _edata = .;        /* define a global symbol at data end */
  } >APPLI_region_RAM AT>APPLI_region_ROM

  /* Extra ROM section (last one) to make sure the binary size is a multiple of the AES block size (16 bytes) and H7 flash writing unit (32 bytes)*/
  .align32 :
  {
    . = . + 1;         /* _edata=. is aligned on 8 bytes so could be aligned on 32 bytes: add 1 byte gap */
    . = ALIGN(32) - 1; /* increment the location counter until next 32 bytes aligned address (-1 byte)   */
    BYTE(0);           /* allocate 1 byte (value is 0) to be a multiple of 32 bytes                      */
  } > APPLI_region_ROM

  /* Uninitialized data section */
  . = ALIGN(4);
  .bss :
  {
    /* This is used by the startup in order to initialize the .bss section */
    _sbss = .;         /* define a global symbol at bss start */
    __bss_start__ = _sbss;
    *(.bss)
    *(.bss*)
    *(COMMON)

    . = ALIGN(4);
    _ebss = .;         /* define a global symbol at bss end */
    __bss_end__ = _ebss;
  } >APPLI_region_RAM

  /* User_heap_stack section, used to check that there is enough RAM left */
  ._user_heap_stack :
  {
    . = ALIGN(8);
    PROVIDE ( end = . );
    PROVIDE ( _end = . );
    . = . + _Min_Heap_Size;
    . = . + _Min_Stack_Size;
    . = ALIGN(8);
  } >APPLI_region_RAM



  /* Remove information from the standard libraries */
  /DISCARD/ :
  {
    libc.a ( * )
    libm.a ( * )
    libgcc.a ( * )
  }

  .ARM.attributes 0 : { *(.ARM.attributes) }
}



