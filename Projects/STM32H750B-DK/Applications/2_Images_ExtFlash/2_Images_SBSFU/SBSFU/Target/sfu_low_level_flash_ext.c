/**
  ******************************************************************************
  * @file    sfu_low_level_flash_ext.c
  * @author  MCD Application Team
  * @brief   SFU Flash Low Level Interface module
  *          This file provides set of firmware functions to manage SFU external
  *          flash low level interface.
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "sfu_low_level_flash_ext.h"
#include "sfu_low_level_security.h"
#include "stm32h750b_discovery_qspi.h"
#include "se_interface_bootloader.h"

/* Private defines -----------------------------------------------------------*/
#define ERASE_BLOC_SIZE           0x2000U            /*!< 8 Kbytes */

/* Functions Definition ------------------------------------------------------*/
/**
  * @brief  This function initialize QSPI interface
  * @param  none
  * @retval SFU_ErrorStatus SFU_SUCCESS if successful, SFU_ERROR otherwise.
  */
SFU_ErrorStatus SFU_LL_FLASH_EXT_Init(void)
{
  if (BSP_QSPI_Init() != QSPI_OK)
  {
    return SFU_ERROR;
  }
  else
  {
    return SFU_SUCCESS;
  }
}

/**
  * @brief  This function does an erase of n (depends on Length) pages in external OSPI flash
  * @param  pFlashStatus: SFU_FLASH Status pointer
  * @param  pStart: flash address to be erased
  * @param  Length: number of bytes
  * @retval SFU_ErrorStatus SFU_SUCCESS if successful, SFU_ERROR otherwise.
  */
SFU_ErrorStatus SFU_LL_FLASH_EXT_Erase_Size(SFU_FLASH_StatusTypeDef *pFlashStatus, uint8_t *pStart, uint32_t Length)
{
  SFU_ErrorStatus e_ret_status = SFU_SUCCESS;
  uint32_t i;
  uint32_t address;

  /* flash address to erase is the offset from begin of external flash */
  address = (uint32_t) pStart - EXTERNAL_FLASH_ADDRESS;
  *pFlashStatus = SFU_FLASH_SUCCESS;

  /* Loop on 64KBytes block */
  for (i = 0 ; i < ((Length - 1U) / ERASE_BLOC_SIZE) + 1U; i++)
  {
    if (BSP_QSPI_Erase_Block(address) != QSPI_OK)
    {
      *pFlashStatus = SFU_FLASH_ERR_ERASE;
      e_ret_status = SFU_ERROR;
    }

    /* next 64KBytes block */
    address += ERASE_BLOC_SIZE;

    /* reload watch dog */
    SFU_LL_SECU_IWDG_Refresh();
  }
  return e_ret_status;
}

/**
  * @brief  This function writes a data buffer in external QSPI flash.
  * @param  pFlashStatus: FLASH_StatusTypeDef
  * @param  pDestination: flash address to write
  * @param  pSource: pointer on buffer with data to write
  * @param  Length: number of bytes
  * @retval SFU_ErrorStatus SFU_SUCCESS if successful, SFU_ERROR otherwise.
  */
SFU_ErrorStatus SFU_LL_FLASH_EXT_Write(SFU_FLASH_StatusTypeDef *pFlashStatus, uint8_t  *pDestination,
                                       const uint8_t *pSource, uint32_t Length)
{
  /* Do nothing if Length equal to 0 */
  if (Length == 0)
  {
    *pFlashStatus = SFU_FLASH_SUCCESS;
    return SFU_SUCCESS;
  }

  /* flash address to write is the offset from begin of external flash */
  if (BSP_QSPI_Write((uint8_t *) pSource, (uint32_t) pDestination - EXTERNAL_FLASH_ADDRESS, Length) != QSPI_OK)
  {
    *pFlashStatus = SFU_FLASH_ERR_WRITING;
    return SFU_ERROR;
  }
  else
  {
    *pFlashStatus = SFU_FLASH_SUCCESS;
    return SFU_SUCCESS;
  }
}

/**
  * @brief  This function reads external QSPI flash
  * @param  pDestination: pointer on buffer to store data
  * @param  pSource: flash address to read
  * @param  Length: number of bytes
  * @retval SFU_ErrorStatus SFU_SUCCESS if successful, SFU_ERROR otherwise.
  */
SFU_ErrorStatus SFU_LL_FLASH_EXT_Read(uint8_t *pDestination, const uint8_t *pSource, uint32_t Length)
{
  /* ensure previous operation is finished (erase/write) : GetStatus()
     such verification is done (inside BSP driver) at the beginning of erase or write operation  but
     not for read operation ==> in order to maximise BSP driver execution timing efficiency */
  while (BSP_QSPI_GetStatus() !=  QSPI_OK)
  {
  }

  /* flash address to read is the offset from begin of external flash */
  if (BSP_QSPI_Read((uint8_t *) pDestination, (uint32_t) pSource - EXTERNAL_FLASH_ADDRESS, Length) != QSPI_OK)
  {
    return SFU_ERROR;
  }
  else
  {
    return SFU_SUCCESS;
  }
}

/**
  * @brief  This function compare a buffer with a flash area
  * @note   The flash area should not be located inside the secure area
  * @param  pFlash: address of the flash area
  * @param  Pattern1: first 32 bits pattern to be compared
  * @param  Pattern2: second 32 bits pattern to be compared
  * @param  Length: number of bytes to be compared
  * @retval SFU_ErrorStatus SFU_SUCCESS if successful, SFU_ERROR otherwise.
  */
SFU_ErrorStatus SFU_LL_FLASH_EXT_Compare(const uint8_t *pFlash, const uint32_t Pattern1, const uint32_t Pattern2, uint32_t Length)
{
  uint32_t a_flash_buffer[4U];
  uint32_t flash = (uint32_t) pFlash;
  uint32_t i;
  uint32_t j;

  /* ensure previous operation is finished (erase/write) : GetStatus()
     such verification is done (inside BSP driver) at the beginning of erase or write operation  but
     not for read operation ==> in order to maximise BSP driver execution timing efficiency */
  while (BSP_QSPI_GetStatus() !=  QSPI_OK)
  {
  }

  /* by construction (AES_BLOCK_SIZE) firmware length is multiple of 16 bytes */
  if ((Length & 0x0000000FU) != 0U)
  {
    return SFU_ERROR;
  }

  /* flash address to read is the offset from begin of external flash */
  for ( i = 0U; i < Length; i += 16U)
  {
    if (BSP_QSPI_Read((uint8_t *)&a_flash_buffer[0], flash + i - EXTERNAL_FLASH_ADDRESS, 16U) == QSPI_OK)
    {
      for (j = 0U; j < 4U; j++)
      {
        if ((a_flash_buffer[j] != Pattern1) && (a_flash_buffer[j] != Pattern2))
        {
          return SFU_ERROR;
        }
      }
    }
  }
  return SFU_SUCCESS;
}

/**
  * @brief  This function configure the flash in memory mapped mode to be able to execute code
  * @param  none
  * @retval SFU_ErrorStatus SFU_SUCCESS if successful, SFU_ERROR otherwise.
  */
SFU_ErrorStatus SFU_LL_FLASH_EXT_Config_Exe(uint32_t SlotNumber)
{
  SFU_ErrorStatus e_ret_status = SFU_ERROR;

  UNUSED(SlotNumber);

  /* ensure previous operation is finished (erase/write) : GetStatus()
     such verification is done (inside BSP driver) at the beginning of erase or write operation  but
     not for read operation ==> in order to maximise BSP driver execution timing efficiency */
  while (BSP_QSPI_GetStatus() !=  QSPI_OK)
  {
    HAL_Delay(1);
  }

  /* Enable memory map mode */
  if (BSP_QSPI_EnableMemoryMappedMode() ==  QSPI_OK)
  {
    e_ret_status = SFU_SUCCESS;
  }

  return e_ret_status;
}



/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
