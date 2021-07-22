/**
  ******************************************************************************
  * @file    sfu_fwimg_counter.h
  * @author  MCD Application Team
  * @brief   This file contains definitions for Non Volatile Secure Counter
  *          mechanism.
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

#ifndef SFU_FWIMG_COUNTER_H
#define SFU_FWIMG_COUNTER_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "sfu_def.h"

/* Exported constants --------------------------------------------------------*/
#define SECURE_COUNTER_REGION_ROM_SIZE ((uint32_t)(SECURE_COUNTER_REGION_ROM_END - SECURE_COUNTER_REGION_ROM_START + 1))

/* Exported functions ------------------------------------------------------- */
/* Initialize the secure counter and the related area in flash */
SFU_ErrorStatus SFU_IMG_SecureCounterInit(void);
/* Read the last stored secure counter */
SFU_ErrorStatus SFU_IMG_SecureCounterRead(uint32_t ImageId, uint32_t *pImgSecureCounter);
/* Write a new secure counter */
SFU_ErrorStatus SFU_IMG_SecureCounterWrite(uint32_t ImageId, uint32_t ImgSecureCounter);

#ifdef __cplusplus
}
#endif

#endif /* SFU_FWIMG_COUNTER_H */
