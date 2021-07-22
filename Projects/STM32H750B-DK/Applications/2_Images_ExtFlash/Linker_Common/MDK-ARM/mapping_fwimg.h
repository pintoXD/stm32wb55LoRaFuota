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

/* Slots  must be aligned on sector size */

/* swap  (128 kbytes) */
#define SWAP_START                   0x90800000
#define SWAP_END                     0x9081FFFF

/* Active slot #1 in external memory : 4 Mbytes
   Header located into internal flash to be protected by secure area but
   out of WRP protection areas (SBSFU + standalone loader)
 */
#define SLOT_ACTIVE_1_HEADER         0x90000000
#define SLOT_ACTIVE_1_START          0x90000000
#define SLOT_ACTIVE_1_END            0x903FFFFF
/* APP LOADER code located inside Active slot 1
   with execution from RAM to be able to download new image inside external flash  
   First 0x800 bytes reserved for header + vector table */ 
#define APP_LOADER_REGION_ROM_START  0x90000800
#define APP_LOADER_REGION_ROM_END    0x90006FFF
#define APP_LOADER_ROM_REGION_SIZE   (APP_LOADER_REGION_ROM_END - APP_LOADER_REGION_ROM_START + 0x1)

/* Dwl slot #1  (4 Mbytes) */
#define SLOT_DWL_1_START             0x90400000
#define SLOT_DWL_1_END               0x907FFFFF

/* Slots not configured */
#define SLOT_ACTIVE_2_HEADER         0x00000000
#define SLOT_ACTIVE_2_START          0x00000000
#define SLOT_ACTIVE_2_END            0x00000000
#define SLOT_ACTIVE_3_HEADER         0x00000000
#define SLOT_ACTIVE_3_START          0x00000000
#define SLOT_ACTIVE_3_END            0x00000000
#define SLOT_DWL_2_START             0x00000000
#define SLOT_DWL_2_END               0x00000000
#define SLOT_DWL_3_START             0x00000000
#define SLOT_DWL_3_END               0x00000000

#endif
