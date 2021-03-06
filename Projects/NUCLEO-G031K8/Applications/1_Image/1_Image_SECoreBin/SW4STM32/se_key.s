/**
  ******************************************************************************
  * @file      se_key.s
  * @author    MCD Application Team
  * @brief     ReadKey from PCROP area
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */

	.section .SE_Key_Data,"a",%progbits
	.syntax unified
	.thumb
	.global SE_ReadKey_1
SE_ReadKey_1:
	PUSH {R1-R5}
	MOVS R1, #0x5f
	LSLS R1, R1, #24
	MOVS R5, #0x4d
	LSLS R5, R5, #16
	ADD R1, R1, R5
	MOVS R5, #0x45
	LSLS R5, R5, #8
	ADD R1, R1, R5
	MOVS R5, #0x4f
	ADD R1, R1, R5
	MOVS R2, #0x5f
	LSLS R2, R2, #24
	MOVS R5, #0x59
	LSLS R5, R5, #16
	ADD R2, R2, R5
	MOVS R5, #0x45
	LSLS R5, R5, #8
	ADD R2, R2, R5
	MOVS R5, #0x4b
	ADD R2, R2, R5
	MOVS R3, #0x50
	LSLS R3, R3, #24
	MOVS R5, #0x4d
	LSLS R5, R5, #16
	ADD R3, R3, R5
	MOVS R5, #0x4f
	LSLS R5, R5, #8
	ADD R3, R3, R5
	MOVS R5, #0x43
	ADD R3, R3, R5
	MOVS R4, #0x31
	LSLS R4, R4, #24
	MOVS R5, #0x59
	LSLS R5, R5, #16
	ADD R4, R4, R5
	MOVS R5, #0x4e
	LSLS R5, R5, #8
	ADD R4, R4, R5
	MOVS R5, #0x41
	ADD R4, R4, R5
	STM R0!, {R1-R4}
	POP {R1-R5}
	BX LR

    .end

/************************ (C) COPYRIGHT STMicroelectonics *****END OF FILE****/
