/**
  ******************************************************************************
  * @file    main.h
  * @author  MCD Application Team
  * @brief   This file contains definitions for main application file.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef MAIN_H
#define MAIN_H

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"
#include "stm32h750b_discovery.h"
#include "stdio.h"

#if defined(__CC_ARM) || defined(__ARMCC_VERSION)
#include "mapping_fwimg.h"
#include "mapping_sbsfu.h"
#elif defined (__ICCARM__) || defined(__GNUC__)
#include "mapping_export.h"
#endif /* __ICCARM__ || __GNUC__ */

/* Exported constants --------------------------------------------------------*/
/**
  *  Slot list : 2 slots per image configuration + swap
  */
#define NB_SLOTS      8U
#define SLOT_INACTIVE 0U     /* this index should not be used ==> no tag found in the header */
#define SLOT_ACTIVE_1 1U
#define SLOT_ACTIVE_2 2U
#define SLOT_ACTIVE_3 3U
#define SLOT_DWL_1    4U
#define SLOT_DWL_2    5U
#define SLOT_DWL_3    6U
#define SLOT_SWAP     7U


/* Calculation of the size of a slot */
#define SLOT_SIZE(a) (SlotEndAdd[a] - SlotStartAdd[a] + 1U)

/* Cortex-M7: align the init vectors on 0x400 instead of 0x200 */
#define IMAGE_OFFSET ((uint32_t)1024U)

#define LOADER_STATUS_LED (LED_GREEN)         /*!< LED to be used to provide the status to the end-user */

/* External variables --------------------------------------------------------*/
extern const uint32_t  SlotHeaderAdd[NB_SLOTS];
extern const uint32_t  SlotStartAdd[NB_SLOTS];
extern const uint32_t  SlotEndAdd[NB_SLOTS];

/* Exported macros -----------------------------------------------------------*/
/* #define DEBUG_MODE */                                 /* Debug printf on console */

#ifdef DEBUG_MODE
#define TRACE   (void) printf
#else
#define TRACE(...)
#endif /* DEBUG_MODE */

/* Exported functions ------------------------------------------------------- */

#endif /* MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
