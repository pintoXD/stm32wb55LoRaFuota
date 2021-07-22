/**
  ******************************************************************************
  * @file    mapping_fwimg.h
  * @author  MCD Application Team
  * @brief   This file contains definitions for firmware images mapping
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright(c) 2017 STMicroelectronics International N.V.
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
#ifndef MAPPING_FWIMG_H
#define MAPPING_FWIMG_H

/* Slots  must be aligned on 2048 bytes (0x800) */

/* Active slot #1  (472 kbytes) */
/* Header does not start at the beginning of the sector to ensure the overlap constraint between 
   firewall NVDATA section and firewall CODE section. 
   This constraint is relevant only for products with dual bank and firewall isolation */
#define SLOT_ACTIVE_1_HEADER         0x08089E00
#define SLOT_ACTIVE_1_START          0x0808A000
#define SLOT_ACTIVE_1_END            0x080FFFFF

/* Dwl slot #1  (472 kbytes) */
#define SLOT_DWL_1_START             0x90000000
#define SLOT_DWL_1_END               0x90075FFF

/* Active slot #2  (432 kbytes) */
#define SLOT_ACTIVE_2_HEADER         0x08089000
#define SLOT_ACTIVE_2_START          0x08014000
#define SLOT_ACTIVE_2_END            0x0807FFFF

/* Dwl slot #2  (432 kbytes) */
#define SLOT_DWL_2_START             0x90080000
#define SLOT_DWL_2_END               0x900EBFFF

/* Slots not configured */
#define SLOT_ACTIVE_3_HEADER         0x00000000
#define SLOT_ACTIVE_3_START          0x00000000
#define SLOT_ACTIVE_3_END            0x00000000
#define SLOT_DWL_3_START             0x00000000
#define SLOT_DWL_3_END               0x00000000

/* SWAP installation feature not allowed in this example in order to keep dwl slot encrypted */
#define SWAP_START                   0x00000000
#define SWAP_END                     0x00000000


#endif
