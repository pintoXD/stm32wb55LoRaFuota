;******************************************************************************
;* File Name          : Loader_Bin.s
;* Author             : MCD Application Team
;* Description        : Include Loader binary.
;*******************************************************************************
;* @attention
;*
;* Copyright (c) 2021 STMicroelectronics. All rights reserved.
;*
;* This software component is licensed by ST under Ultimate Liberty license
;* SLA0044, the "License"; You may not use this file except in compliance with
;* the License. You may obtain a copy of the License at:
;*                             www.st.com/SLA0044
;*
;*******************************************************************************
;
;

 AREA LOADER_Bin, CODE, READONLY
 INCBIN ../../2_Images_Loader/MDK-ARM/STM32H750B_DISCO/Exe/Loader.bin
 END

;************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE*****
