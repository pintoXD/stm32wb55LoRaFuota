/**
  ******************************************************************************
  * @file    mapping_sbsfu.h
  * @author  MCD Application Team
  * @brief   This file contains definitions for SBSFU mapping
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
#ifndef MAPPING_SBSFU_H
#define MAPPING_SBSFU_H

#define ROM_START                           0x08000000
#define VECTOR_SIZE                         0x400

/* SE Code region */
#define SE_CODE_REGION_ROM_START            (ROM_START + VECTOR_SIZE)
#define SE_CALLGATE_REGION_ROM_START        (SE_CODE_REGION_ROM_START + 0x8)
#define SE_CALLGATE_REGION_ROM_END          (SE_CODE_REGION_ROM_START + 0x1FF)

/* SE key region */
#define SE_KEY_REGION_ROM_START             (SE_CALLGATE_REGION_ROM_END + 0x1)
#define SE_KEY_REGION_ROM_END               (SE_KEY_REGION_ROM_START+ 0x2FF) /* H7: The minimum PCROP area that can be set is 16 Flash words, that is 512 bytes. */

/* SE Startup */
#define SE_STARTUP_REGION_ROM_START         (SE_KEY_REGION_ROM_END + 0x1)
#define SE_CODE_NOKEY_REGION_ROM_START      (SE_STARTUP_REGION_ROM_START + 0x100)
/* Aligned SE End at the end of the 1st 28Kbytes of flash, MPU protection isolation constraints */
#define SE_CODE_REGION_ROM_END              0x08006FFF

/* SE IF ROM: used to locate Secure Engine interface code out of MPU isolation     */
/* 
 * We must be out of Region 2 to allow unprivileged access 
 * With the current settings Region 2 starts from ROM_START and covers 28kB of code (0x7000)
 */
#define SE_IF_REGION_ROM_START              (ROM_START + 0x7000)
#define SE_IF_REGION_ROM_END                (SE_IF_REGION_ROM_START + 0x7FF)

/* Secure memory activation code - initialization area */
#define SB_HDP_REGION_ROM_START             (SE_IF_REGION_ROM_END + 0x1)
#define SB_HDP_REGION_ROM_END               (SB_HDP_REGION_ROM_START + 0xFF)

/* SBSFU Code region */
#define SB_REGION_ROM_START                 (SB_HDP_REGION_ROM_END + 0x1)
/* Aligned SBSFU end at the end of the 1st 96Kbytes of FLASH, MPU protection constraints */
#define SB_REGION_ROM_END                   0x08017FFF

/* ROM regions size definition */
#define SE_CALLGATE_REGION_ROM_SIZE         (SE_CALLGATE_REGION_ROM_END - SE_CODE_REGION_ROM_START + 0x1)
#define SE_KEY_REGION_ROM_SIZE              (SE_KEY_REGION_ROM_END - SE_KEY_REGION_ROM_START + 0x1)
#define SE_ROM_REGION_SIZE                  (SE_CODE_REGION_ROM_END - SE_CODE_NOKEY_REGION_ROM_START + 0x1)
#define SE_IF_ROM_REGION_SIZE               (SE_IF_REGION_ROM_END - SE_IF_REGION_ROM_START + 0x1)
#define SB_HDP_ROM_REGION_SIZE              (SB_HDP_REGION_ROM_END - SB_HDP_REGION_ROM_START + 0x1)
#define SB_ROM_REGION_SIZE                  (SB_REGION_ROM_END - SB_REGION_ROM_START + 0x1)

/*                              RAM section                                   */
/* SE RAM region */
/* SE stack is placed 1st in RAM, stack overflow does not write on other RAM area */
#define SE_REGION_RAM_START               0x20000000
#define SE_REGION_RAM_STACK_TOP           0x20000400
#define SE_REGION_RAM_END                 0x20000FFF

/* Secure memory activation code area - execution in RAM */
#define SB_HDP_CODE_REGION_RAM_START      (SE_REGION_RAM_END + 1)
#define SB_HDP_CODE_REGION_RAM_END        (SB_HDP_CODE_REGION_RAM_START + 0xFF)

/* SBSFU RAM region */
#define SB_REGION_RAM_START               (SB_HDP_CODE_REGION_RAM_END + 0x1)
#define SB_REGION_RAM_END                 0x2001FFFF

#define SE_RAM_REGION_START               (SE_REGION_RAM_STACK_TOP)
#define SE_RAM_REGION_SIZE                (SE_REGION_RAM_END - SE_REGION_RAM_STACK_TOP + 0x1)
#define SB_HDP_CODE_RAM_REGION_SIZE       (SB_HDP_CODE_REGION_RAM_END - SB_HDP_CODE_REGION_RAM_START + 0x1)
#define SB_RAM_REGION_SIZE                (SB_REGION_RAM_END - SB_REGION_RAM_START + 0x1)

#endif
