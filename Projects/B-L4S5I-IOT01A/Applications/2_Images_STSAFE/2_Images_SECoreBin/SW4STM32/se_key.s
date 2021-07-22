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
	.global SE_ReadKey_Pairing
SE_ReadKey_Pairing:
	PUSH {R1-R5}
	MOVW R1, #0x1100
	MOVT R1, #0x3322
	MOVW R2, #0x5544
	MOVT R2, #0x7766
	MOVW R3, #0x9988
	MOVT R3, #0xbbaa
	MOVW R4, #0xddcc
	MOVT R4, #0xffee
	STM R0, {R1-R4}
	ADD R0, R0,#16
	MOVW R1, #0x1111
	MOVT R1, #0x2222
	MOVW R2, #0x3333
	MOVT R2, #0x4444
	MOVW R3, #0x5555
	MOVT R3, #0x6666
	MOVW R4, #0x7777
	MOVT R4, #0x8888
	STM R0, {R1-R4}
	POP {R1-R5}
	BX LR

    .end

/************************ (C) COPYRIGHT STMicroelectonics *****END OF FILE****/
