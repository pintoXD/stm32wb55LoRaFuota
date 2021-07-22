/* USER CODE BEGIN Header */
/**
 ***************************************************************************************
  * File Name          : stm32_lpm_if.c
  * Description        : Low layer function to enter/exit low power modes (stop, sleep).
 ***************************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "stm32_lpm_if.h"
#include "stm32_lpm.h"
#include "stm32wbxx_ll_pwr.h"
#include "stm32wbxx_ll_cortex.h"
#include "stm32wbxx_ll_hsem.h"
#include "radio_board_if.h"
/* USER CODE BEGIN include */

/* USER CODE END include */

/* Exported variables --------------------------------------------------------*/
const struct UTIL_LPM_Driver_s UTIL_PowerDriver =
{
  PWR_EnterSleepMode,
  PWR_ExitSleepMode,

  PWR_EnterStopMode,
  PWR_ExitStopMode,

  PWR_EnterOffMode,
  PWR_ExitOffMode,
};

/* Private function prototypes -----------------------------------------------*/
static void Switch_On_HSI( void );
/* USER CODE BEGIN Private_Function_Prototypes */

/* USER CODE END Private_Function_Prototypes */
/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN Private_Typedef */

/* USER CODE END Private_Typedef */
/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN Private_Define */

/* USER CODE END Private_Define */
/* Private macro -------------------------------------------------------------*/
/* Index of the semaphore used to access the RCC */
#define CFG_HW_RCC_SEMID                                        3

/* Index of the semaphore used to manage the entry Stop Mode procedure */
#define CFG_HW_ENTRY_STOP_MODE_SEMID                            4
/* USER CODE BEGIN Private_Macro */

/* USER CODE END Private_Macro */
/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Private_Variables */

/* USER CODE END Private_Variables */

/* Functions Definition ------------------------------------------------------*/
void PWR_EnterOffMode(void)
{
  /* USER CODE BEGIN EnterOffMode_1 */

  /* USER CODE END EnterOffMode_1 */
}

void PWR_ExitOffMode(void)
{
  /* USER CODE BEGIN ExitOffMode_1 */

  /* USER CODE END ExitOffMode_1 */
}

/**
  * @brief Enters Low Power Stop Mode
  * @note ARM exists the function when waking up
  * @param none
  * @retval none
  */
void PWR_EnterStopMode( void )
{
/* USER CODE BEGIN PWR_EnterStopMode */
  /**
   * When HAL_DBGMCU_EnableDBGStopMode() is called to keep the debugger active in Stop Mode,
   * the systick shall be disabled otherwise the cpu may crash when moving out from stop mode
   *
   * When in production, the HAL_DBGMCU_EnableDBGStopMode() is not called so that the device can reach best power consumption
   * However, the systick should be disabled anyway to avoid the case when it is about to expire at the same time the device enters
   * stop mode ( this will abort the Stop Mode entry ).
   */
  HAL_SuspendTick();

  /**
   * This function is called from CRITICAL SECTION
   */
  while( LL_HSEM_1StepLock( HSEM, CFG_HW_RCC_SEMID ) );

  Sx_Board_IoInit();

  if ( ! LL_HSEM_1StepLock( HSEM, CFG_HW_ENTRY_STOP_MODE_SEMID ) )
  {
    if( LL_PWR_IsActiveFlag_C2DS( ) )
    {
      /* Release ENTRY_STOP_MODE semaphore */
      LL_HSEM_ReleaseLock( HSEM, CFG_HW_ENTRY_STOP_MODE_SEMID, 0 );

      /**
       * The switch on HSI before entering Stop Mode is required
       */
      Switch_On_HSI( );
    }
  }
  else
  {
    /**
     * The switch on HSI before entering Stop Mode is required
     */
    Switch_On_HSI( );
  }

  /* Release RCC semaphore */
  LL_HSEM_ReleaseLock( HSEM, CFG_HW_RCC_SEMID, 0 );

  /************************************************************************************
   * ENTER STOP MODE
   ***********************************************************************************/
  LL_PWR_SetPowerMode( LL_PWR_MODE_STOP2 );

  LL_LPM_EnableDeepSleep( ); /**< Set SLEEPDEEP bit of Cortex System Control Register */

/* USER CODE END PWR_EnterStopMode */
}

/**
  * @brief Exits Low Power Stop Mode
  * @note Enable the pll at 32MHz
  * @param none
  * @retval none
  */
void PWR_ExitStopMode( void )
{
/* USER CODE BEGIN PWR_ExitStopMode */
  /**
   * This function is called from CRITICAL SECTION
   */

  /* Release ENTRY_STOP_MODE semaphore */
  LL_HSEM_ReleaseLock( HSEM, CFG_HW_ENTRY_STOP_MODE_SEMID, 0 );

  while( LL_HSEM_1StepLock( HSEM, CFG_HW_RCC_SEMID ) );

  if(LL_RCC_GetSysClkSource( ) == LL_RCC_SYS_CLKSOURCE_STATUS_HSI)
  {
    LL_RCC_HSE_Enable( );
    while(!LL_RCC_HSE_IsReady( ));
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_HSE);
    while (LL_RCC_GetSysClkSource( ) != LL_RCC_SYS_CLKSOURCE_STATUS_HSE);
  }
  else
  {
    /**
     * As long as the current application is fine with HSE as system clock source,
     * there is nothing to do here
     */
  }
  Sx_Board_IoInit();

  /* Release RCC semaphore */
  LL_HSEM_ReleaseLock( HSEM, CFG_HW_RCC_SEMID, 0 );

  HAL_ResumeTick();

/* USER CODE END PWR_ExitStopMode */
}

void PWR_EnterSleepMode(void)
{
  HAL_PWR_EnterSLEEPMode(PWR_MAINREGULATOR_ON, PWR_SLEEPENTRY_WFI);
}

void PWR_ExitSleepMode(void)
{
}

/*************************************************************
 *
 * LOCAL FUNCTIONS
 *
 *************************************************************/
/**
  * @brief Switch the system clock on HSI
  * @param none
  * @retval none
  */
static void Switch_On_HSI( void )
{
  LL_RCC_HSI_Enable( );
  while(!LL_RCC_HSI_IsReady( ));
  LL_RCC_SetSysClkSource( LL_RCC_SYS_CLKSOURCE_HSI );
  LL_RCC_SetSMPSClockSource(LL_RCC_SMPS_CLKSOURCE_HSI);
  while (LL_RCC_GetSysClkSource( ) != LL_RCC_SYS_CLKSOURCE_STATUS_HSI);
}

/* USER CODE BEGIN Private_Functions */

/* USER CODE END Private_Functions */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

