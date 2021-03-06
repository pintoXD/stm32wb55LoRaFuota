;******************************************************************************
;* File Name          : SE_CORE_Bin.s
;* Author             : MCD Application Team
;* Description        : Include SECoreBin binary.
;*******************************************************************************
;* @attention
;*
;* Copyright (c) 2017 STMicroelectronics. All rights reserved.
;*
;* This software component is licensed by ST under Ultimate Liberty license
;* SLA0044, the "License"; You may not use this file except in compliance with
;* the License. You may obtain a copy of the License at:
;*                             www.st.com/SLA0044
;*
;*******************************************************************************
;
;

 AREA SE_CORE_Bin, CODE, READONLY
 INCBIN ../../1_Image_SECoreBin/MDK-ARM/NUCLEO-G031K8\Exe/SECoreBin.bin
 END

;************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE*****
