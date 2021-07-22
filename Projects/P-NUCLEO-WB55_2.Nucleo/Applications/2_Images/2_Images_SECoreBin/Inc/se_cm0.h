/**
  ******************************************************************************
  * @file    se_cm0.h
  * @author  MCD Application Team
  * @brief   This file contains definitions for communication with CM0
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
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
#ifndef SE_CM0_H
#define SE_CM0_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "tl.h"
#include "shci_tl.h"
#include "shci.h"
#include "app_conf.h"
#include "se_def_core.h"

/* Exported constants --------------------------------------------------------*/
/* AES Key index */
#define SBSFU_AES_KEY_IDX 0x01U

/* CM0 state during upgrade process */
#define CM0_UPDATE_NOT_INITIALIZED 0x00000000U
#define CM0_UPDATE_TO_BE_STARTED   0xDF23AC61U
#define CM0_UPDATE_IN_PROGRESS     0x98FCA513U
#define CM0_UPDATE_DONE            0xF234B97AU

#define CMO_UPDATE_PROCESS (*(uint32_t *)(LOADER_COM_REGION_RAM_START + 4U))

/* Exported functions -------------------²------------------------------------ */
void CM0_Init(void);
void CM0_DeInit(void);
SE_ErrorStatus CM0_Update(void);


#ifdef __cplusplus
}
#endif

#endif /* SE_CM0_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

