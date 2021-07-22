;*******************************************************************************
;* File Name          : svc_handler.s
;* Author             : MCD Application Team
;* Description        : Wrapper for SE isolation with MPU.
;*******************************************************************************
;*
;* Copyright (c) 2017 STMicroelectronics. All rights reserved.
;*
;* This software component is licensed by ST under Apache License, Version 2.0,
;* the "License"; You may not use this file except in compliance with the
;* License. You may obtain a copy of the License at:
;*                        opensource.org/licenses/Apache-2.0
;*
;*******************************************************************************
;
;
;
; Cortex-M version
;
      SECTION .text:CODE:NOROOT:REORDER(2)
      EXPORT SVC_Handler
SVC_Handler
        IMPORT MPU_SVC_Handler
        MRS r0, PSP
        B MPU_SVC_Handler
        END
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
