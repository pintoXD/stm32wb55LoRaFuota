/*
******************************************************************************
**
**  File        : LinkerScript.ld
**
**  Author		: Auto-generated by STM32CubeIDE
**
**  Abstract    : Linker script for STM32H7B3LIHxQ Device from STM32H7 series
**                      2048Kbytes ROM
**                      128Kbytes RAM
**
**                Set heap size, stack size and stack location according
**                to application requirements.
**
**                Set memory bank area and size if external memory is used.
**
**  Target      : STMicroelectronics STM32
**
**  Distribution: The file is distributed as is without any warranty
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

/* Slots must be aligned on sector size */

/* Swap sector :  kbytes */
__ICFEDIT_SWAP_start__           = 0x08108000;
__ICFEDIT_SWAP_end__             = 0x0810FFFF;

/* Active slot #1 : 960 kbytes */
__ICFEDIT_SLOT_Active_1_start__  = 0x08018000;
__ICFEDIT_SLOT_Active_1_end__    = 0x08107FFF;
__ICFEDIT_SLOT_Active_1_header__ = __ICFEDIT_SLOT_Active_1_start__;

/* Dwl slot #1 : 960 kbytes */
__ICFEDIT_SLOT_Dwl_1_start__     = 0x08110000;
__ICFEDIT_SLOT_Dwl_1_end__       = 0x081FFFFF;


/* Slots not configured */
__ICFEDIT_SLOT_Active_2_header__ = 0x00000000;
__ICFEDIT_SLOT_Active_2_start__  = 0x00000000;
__ICFEDIT_SLOT_Active_2_end__    = 0x00000000;
__ICFEDIT_SLOT_Active_3_header__ = 0x00000000;
__ICFEDIT_SLOT_Active_3_start__  = 0x00000000;
__ICFEDIT_SLOT_Active_3_end__    = 0x00000000;
__ICFEDIT_SLOT_Dwl_2_start__     = 0x00000000;
__ICFEDIT_SLOT_Dwl_2_end__       = 0x00000000;
__ICFEDIT_SLOT_Dwl_3_start__     = 0x00000000;
__ICFEDIT_SLOT_Dwl_3_end__       = 0x00000000;
