/**
  ******************************************************************************
  * @file    main.c
  * @author  MCD Application Team
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2016 STMicroelectronics</center></h2>
  *
  * STSAFE DRIVER SOFTWARE LICENSE AGREEMENT (SLA0088)
  *
  * BY INSTALLING, COPYING, DOWNLOADING, ACCESSING OR OTHERWISE USING THIS SOFTWARE
  * OR ANY PART THEREOF (AND THE RELATED DOCUMENTATION) FROM STMICROELECTRONICS
  * INTERNATIONAL N.V, SWISS BRANCH AND/OR ITS AFFILIATED COMPANIES (STMICROELECTRONICS),
  * THE RECIPIENT, ON BEHALF OF HIMSELF OR HERSELF, OR ON BEHALF OF ANY ENTITY BY WHICH
  * SUCH RECIPIENT IS EMPLOYED AND/OR ENGAGED AGREES TO BE BOUND BY THIS SOFTWARE LICENSE
  * AGREEMENT.
  *
  * Under STMicroelectronics’ intellectual property rights, the redistribution,
  * reproduction and use in source and binary forms of the software or any part thereof,
  * with or without modification, are permitted provided that the following conditions
  * are met:
  * 1.  Redistribution of source code (modified or not) must retain any copyright notice,
  *     this list of conditions and the disclaimer set forth below as items 10 and 11.
  * 2.  Redistributions in binary form, except as embedded into a microcontroller or
  *     microprocessor device or a software update for such device, must reproduce any
  *     copyright notice provided with the binary code, this list of conditions, and the
  *     disclaimer set forth below as items 10 and 11, in documentation and/or other
  *     materials provided with the distribution.
  * 3.  Neither the name of STMicroelectronics nor the names of other contributors to this
  *     software may be used to endorse or promote products derived from this software or
  *     part thereof without specific written permission.
  * 4.  This software or any part thereof, including modifications and/or derivative works
  *     of this software, must be used and execute solely and exclusively in combination
  *     with a secure microcontroller device from STSAFE family manufactured by or for
  *     STMicroelectronics.
  * 5.  No use, reproduction or redistribution of this software partially or totally may be
  *     done in any manner that would subject this software to any Open Source Terms.
  *     “Open Source Terms” shall mean any open source license which requires as part of
  *     distribution of software that the source code of such software is distributed
  *     therewith or otherwise made available, or open source license that substantially
  *     complies with the Open Source definition specified at www.opensource.org and any
  *     other comparable open source license such as for example GNU General Public
  *     License(GPL), Eclipse Public License (EPL), Apache Software License, BSD license
  *     or MIT license.
  * 6.  STMicroelectronics has no obligation to provide any maintenance, support or
  *     updates for the software.
  * 7.  The software is and will remain the exclusive property of STMicroelectronics and
  *     its licensors. The recipient will not take any action that jeopardizes
  *     STMicroelectronics and its licensors' proprietary rights or acquire any rights
  *     in the software, except the limited rights specified hereunder.
  * 8.  The recipient shall comply with all applicable laws and regulations affecting the
  *     use of the software or any part thereof including any applicable export control
  *     law or regulation.
  * 9.  Redistribution and use of this software or any part thereof other than as  permitted
  *     under this license is void and will automatically terminate your rights under this
  *     license.
  * 10. THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" AND ANY
  *     EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  *     WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
  *     OF THIRD PARTY INTELLECTUAL PROPERTY RIGHTS, WHICH ARE DISCLAIMED TO THE FULLEST
  *     EXTENT PERMITTED BY LAW. IN NO EVENT SHALL STMICROELECTRONICS OR CONTRIBUTORS BE
  *     LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  *     DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  *     THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
  *     NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
  *     ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  * 11. EXCEPT AS EXPRESSLY PERMITTED HEREUNDER, NO LICENSE OR OTHER RIGHTS, WHETHER EXPRESS
  *     OR IMPLIED, ARE GRANTED UNDER ANY PATENT OR OTHER INTELLECTUAL PROPERTY RIGHTS OF
  *     STMICROELECTRONICS OR ANY THIRD PARTY.
  ******************************************************************************
  */

/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "mbedtls/ecdsa.h"
#include "mbedtls/x509_crt.h"
#include "mbedtls/sha256.h"
#include "stsafea_conf.h"
#include "stsafea_core.h"
#include "stsafea_crypto.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "HAL_STSAFE-Axx.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

static void MX_USART1_UART_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval uint8_t
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */

  MX_USART1_UART_Init();

  /* USER CODE BEGIN 2 */

  /* CERT_CA_FIRMWARE */
  /* sbsfu_r0_crt.der */
  static uint8_t CERT_CA_FW [] = { 0x30,0x82,0x1,0xf5,0x30,0x82,0x1,0x9a,0xa0,0x3,0x2,0x1,0x2,0x2,0x9,0x0,0x98,0x2d,0xc2,0xb4,0xde,0x65,0x39,0x7c,0x30,0xa,0x6,0x8,0x2a,0x86,0x48,0xce,0x3d,0x4,0x3,0x2,0x30,0x4d,0x31,0xb,0x30,0x9,0x6,0x3,0x55,0x4,0x6,0x13,0x2,0x46,0x52,0x31,0x1f,0x30,0x1d,0x6,0x3,0x55,0x4,0xa,0xc,0x16,0x53,0x54,0x4d,0x69,0x63,0x72,0x6f,0x65,0x6c,0x65,0x63,0x74,0x72,0x6f,0x6e,0x69,0x63,0x73,0x20,0x49,0x6e,0x63,0x31,0x1d,0x30,0x1b,0x6,0x3,0x55,0x4,0x3,0xc,0x14,0x53,0x42,0x53,0x46,0x55,0x20,0x53,0x61,0x6d,0x70,0x6c,0x65,0x20,0x52,0x6f,0x6f,0x74,0x20,0x43,0x41,0x30,0x1e,0x17,0xd,0x32,0x30,0x30,0x34,0x31,0x30,0x31,0x35,0x34,0x38,0x32,0x30,0x5a,0x17,0xd,0x32,0x33,0x30,0x31,0x30,0x35,0x31,0x35,0x34,0x38,0x32,0x30,0x5a,0x30,0x4d,0x31,0xb,0x30,0x9,0x6,0x3,0x55,0x4,0x6,0x13,0x2,0x46,0x52,0x31,0x1f,0x30,0x1d,0x6,0x3,0x55,0x4,0xa,0xc,0x16,0x53,0x54,0x4d,0x69,0x63,0x72,0x6f,0x65,0x6c,0x65,0x63,0x74,0x72,0x6f,0x6e,0x69,0x63,0x73,0x20,0x49,0x6e,0x63,0x31,0x1d,0x30,0x1b,0x6,0x3,0x55,0x4,0x3,0xc,0x14,0x53,0x42,0x53,0x46,0x55,0x20,0x53,0x61,0x6d,0x70,0x6c,0x65,0x20,0x52,0x6f,0x6f,0x74,0x20,0x43,0x41,0x30,0x59,0x30,0x13,0x6,0x7,0x2a,0x86,0x48,0xce,0x3d,0x2,0x1,0x6,0x8,0x2a,0x86,0x48,0xce,0x3d,0x3,0x1,0x7,0x3,0x42,0x0,0x4,0x79,0x29,0xdf,0xf9,0xec,0xf3,0x44,0xb3,0xd2,0x2,0xe0,0x9e,0x2f,0x99,0x91,0x7e,0xf8,0x94,0x64,0x73,0xee,0xbd,0x7f,0x9c,0x62,0xcb,0x97,0x58,0x10,0xc9,0x86,0x88,0x7e,0x2c,0x7e,0xc5,0x7,0xec,0x11,0x47,0xe4,0xde,0x5e,0x1b,0xc7,0x19,0x58,0x4e,0x31,0x1a,0x59,0x5,0x7b,0x6e,0x71,0x7b,0xcc,0xcd,0xf1,0x3c,0xbc,0x6f,0xc5,0xce,0xa3,0x63,0x30,0x61,0x30,0x1d,0x6,0x3,0x55,0x1d,0xe,0x4,0x16,0x4,0x14,0x53,0x3d,0x9d,0xf9,0x23,0xf9,0xed,0x59,0x6,0x5,0x97,0x48,0x19,0x14,0xf1,0x14,0xbe,0x37,0x3d,0x6b,0x30,0x1f,0x6,0x3,0x55,0x1d,0x23,0x4,0x18,0x30,0x16,0x80,0x14,0x53,0x3d,0x9d,0xf9,0x23,0xf9,0xed,0x59,0x6,0x5,0x97,0x48,0x19,0x14,0xf1,0x14,0xbe,0x37,0x3d,0x6b,0x30,0xf,0x6,0x3,0x55,0x1d,0x13,0x1,0x1,0xff,0x4,0x5,0x30,0x3,0x1,0x1,0xff,0x30,0xe,0x6,0x3,0x55,0x1d,0xf,0x1,0x1,0xff,0x4,0x4,0x3,0x2,0x1,0x86,0x30,0xa,0x6,0x8,0x2a,0x86,0x48,0xce,0x3d,0x4,0x3,0x2,0x3,0x49,0x0,0x30,0x46,0x2,0x21,0x0,0xd8,0xca,0xc8,0x16,0xec,0xab,0xfa,0x4d,0x94,0x0,0x74,0x4f,0x59,0xdf,0xd9,0x1e,0x22,0xb0,0x19,0x1f,0xc6,0x7a,0x15,0xa0,0xae,0xe7,0xa7,0x29,0xbb,0x4,0xf4,0x2c,0x2,0x21,0x0,0x88,0xca,0x65,0x72,0x91,0xea,0xb6,0x3a,0xf0,0xb9,0xf2,0xb8,0x17,0xff,0x4b,0x6e,0xea,0xf6,0x31,0xd0,0x30,0x9f,0x28,0x4b,0xb0,0x90,0xad,0x86,0x1a,0x3f,0xde,0x38};


  /* CERT_CA_OEM_FIRMWARE */
  /* sbsfu_inter1_oem1_crt.der */
  static uint8_t CERT_CA_OEM_FW [] = { 0x30,0x82,0x1,0xe7,0x30,0x82,0x1,0x8e,0xa0,0x3,0x2,0x1,0x2,0x2,0x1,0x1,0x30,0xa,0x6,0x8,0x2a,0x86,0x48,0xce,0x3d,0x4,0x3,0x2,0x30,0x4d,0x31,0xb,0x30,0x9,0x6,0x3,0x55,0x4,0x6,0x13,0x2,0x46,0x52,0x31,0x1f,0x30,0x1d,0x6,0x3,0x55,0x4,0xa,0xc,0x16,0x53,0x54,0x4d,0x69,0x63,0x72,0x6f,0x65,0x6c,0x65,0x63,0x74,0x72,0x6f,0x6e,0x69,0x63,0x73,0x20,0x49,0x6e,0x63,0x31,0x1d,0x30,0x1b,0x6,0x3,0x55,0x4,0x3,0xc,0x14,0x53,0x42,0x53,0x46,0x55,0x20,0x53,0x61,0x6d,0x70,0x6c,0x65,0x20,0x52,0x6f,0x6f,0x74,0x20,0x43,0x41,0x30,0x1e,0x17,0xd,0x32,0x30,0x30,0x34,0x31,0x30,0x31,0x35,0x34,0x38,0x32,0x33,0x5a,0x17,0xd,0x32,0x31,0x30,0x34,0x32,0x30,0x31,0x35,0x34,0x38,0x32,0x33,0x5a,0x30,0x46,0x31,0xb,0x30,0x9,0x6,0x3,0x55,0x4,0x6,0x13,0x2,0x46,0x52,0x31,0x11,0x30,0xf,0x6,0x3,0x55,0x4,0xa,0xc,0x8,0x53,0x54,0x4d,0x20,0x4f,0x45,0x4d,0x31,0x31,0x24,0x30,0x22,0x6,0x3,0x55,0x4,0x3,0xc,0x1b,0x53,0x42,0x53,0x46,0x55,0x20,0x53,0x61,0x6d,0x70,0x6c,0x65,0x20,0x49,0x4e,0x54,0x45,0x52,0x31,0x3a,0x4f,0x45,0x4d,0x31,0x20,0x43,0x41,0x30,0x59,0x30,0x13,0x6,0x7,0x2a,0x86,0x48,0xce,0x3d,0x2,0x1,0x6,0x8,0x2a,0x86,0x48,0xce,0x3d,0x3,0x1,0x7,0x3,0x42,0x0,0x4,0x7b,0x4b,0x5c,0xeb,0x63,0x62,0x78,0xfb,0xfd,0x5,0x4,0x1,0x88,0x5f,0xc8,0x40,0x0,0x8d,0xd8,0x47,0x64,0x65,0x8d,0x86,0x7d,0xb3,0xbc,0xdf,0xfa,0x46,0x5f,0xce,0x2b,0xee,0x7f,0xf5,0x91,0x79,0x73,0x80,0x8a,0xcd,0x29,0x51,0xaf,0x93,0xf8,0x7a,0x88,0xab,0x2a,0x79,0x8b,0xf4,0xb3,0x9,0x9b,0x1e,0x25,0x45,0x78,0x23,0x5c,0x96,0xa3,0x66,0x30,0x64,0x30,0x1d,0x6,0x3,0x55,0x1d,0xe,0x4,0x16,0x4,0x14,0xad,0xc7,0x81,0x10,0xa6,0x25,0xec,0xc7,0xd6,0xa3,0x66,0x65,0x91,0x67,0x32,0x2c,0x58,0x49,0x58,0x47,0x30,0x1f,0x6,0x3,0x55,0x1d,0x23,0x4,0x18,0x30,0x16,0x80,0x14,0x53,0x3d,0x9d,0xf9,0x23,0xf9,0xed,0x59,0x6,0x5,0x97,0x48,0x19,0x14,0xf1,0x14,0xbe,0x37,0x3d,0x6b,0x30,0x12,0x6,0x3,0x55,0x1d,0x13,0x1,0x1,0xff,0x4,0x8,0x30,0x6,0x1,0x1,0xff,0x2,0x1,0x1,0x30,0xe,0x6,0x3,0x55,0x1d,0xf,0x1,0x1,0xff,0x4,0x4,0x3,0x2,0x1,0x86,0x30,0xa,0x6,0x8,0x2a,0x86,0x48,0xce,0x3d,0x4,0x3,0x2,0x3,0x47,0x0,0x30,0x44,0x2,0x20,0x49,0x3e,0xb6,0x24,0xf1,0xd,0xd4,0x23,0xa0,0xaf,0xd0,0xf0,0x18,0x33,0x65,0xb6,0x2a,0x2b,0x37,0x49,0xc6,0x99,0xa5,0x5a,0xe1,0x89,0x92,0x8e,0x18,0x8e,0xc4,0xcd,0x2,0x20,0x7a,0xfd,0x5b,0xc,0x81,0x48,0x4b,0x7e,0x7c,0x27,0x6a,0xcc,0x97,0xec,0xa6,0xdd,0x74,0x8b,0x7a,0x6d,0x97,0x6c,0x4f,0x94,0xec,0xca,0x69,0x6f,0x88,0x22,0x82,0x73};

#ifdef READ_CERTIFICATE_AND_VERIFY
  uint8_t Zone_Out_Cert_CA[sizeof(CERT_CA_FW)];
  uint8_t Zone_Out_Cert_CA_OEM[sizeof(CERT_CA_OEM_FW)];
#endif /* TEST_VERIFY_CERTIFICATE_WRITING */

  StSafeA_Handle_t   stsafea_handle;
  uint8_t a_rx_tx_stsafea_data [STSAFEA_BUFFER_MAX_SIZE];
  uint8_t StatusCode = OK;

  printf("\r\n-------------------------------------------------------------------------------\n");
  printf("Start provisioning of STSAFE-A \r\n");

  STS_CHK(StatusCode, StSafeA_Init(&stsafea_handle, a_rx_tx_stsafea_data));

  if (!StatusCode)
  {
    STS_CHK(StatusCode, Init_HAL(&stsafea_handle))

    if ((!StatusCode) || (StatusCode == STSAFEA_KEY_NOT_FOUND))
    {
#ifdef FORCE_PAIRING
      StatusCode = STSAFEA_KEY_NOT_FOUND;
      printf("\r\nForce STSAFE-A provisioning\r\n");
#endif /* FORCE_PAIRING */

      if (StatusCode == STSAFEA_KEY_NOT_FOUND)
      {
        printf("\r\nLaunching STSAFE-A pairing\r\n");

        if (Init_Perso(&stsafea_handle, DEFAULT_KEYS, NULL) == OK)
        {
          printf("Pairing OK \r\n");
          StSafeA_HostKeys_Init();
        }
        else
        {
          printf("Please check User configuration, Option Byte DBANK must be DBANK=0  \r\n");
          printf("Pairing NOK, End of Provisioning \r\n");          
          while(1);
          
        }
      }

#ifdef ERASE_CERTIFICATE_BEFORE_UPDATE

      printf("\r\nErase Data : ");

      if (HAL_Erase_Data_Zone(&stsafea_handle, ZONE_CERT_CA_FIRMW, sizeof(CERT_CA_FW), 0) == 0
          && HAL_Erase_Data_Zone(&stsafea_handle, ZONE_CERT_OEM_FIRMW, sizeof(CERT_CA_OEM_FW), 0) == 0)
      {
        printf("OK \r\n");
      }
      else
      {
        printf("Erase data NOK, to understand source of the error please enable log \r\nusing #define PRINTF_ON, End of Provisioning !!!! \r\n");
        while(1);
        
      }

#endif /* ERASE_CERTIFICATE_BEFORE_UPDATE */

      /* Writing of STM_POC_SBSFU_ROOT_TEST_CA_00 */

      printf("\r\nNow Store Certificate STM_POC_SBSFU_ROOT_TEST_CA_00 inside STSAFE-A \r\n");

      if (HAL_Store_Data_Zone(&stsafea_handle, ZONE_CERT_CA_FIRMW, sizeof(CERT_CA_FW), CERT_CA_FW, 0) == OK)
      {
        printf("Certificate STM_POC_SBSFU_ROOT_TEST_CA_00 successfully written inside STSAFE-A : OK\r\n");
      }
      else
      {
        printf("Store Data NOK, to understand source of the error please enable log \r\nusing #define PRINTF_ON, End of Provisioning !!!! \r\n");
        while(1);
      }

      /* Writing of STM_POC_SBSFU_OEM_TEST_CA_00  */

      printf("\r\nNow Store Certificate  STM_POC_SBSFU_OEM_TEST_CA_00 inside STSAFE-A \r\n");


      if (HAL_Store_Data_Zone(&stsafea_handle, ZONE_CERT_OEM_FIRMW, sizeof(CERT_CA_OEM_FW), CERT_CA_OEM_FW, 0) == OK)
      {
        printf("Certificate STM_POC_SBSFU_OEM_TEST_CA_00 successfully written inside STSAFE-A : OK\r\n");
      }
      else
      {
        printf("Store Data NOK, to understand source of the error please enable log \r\nusing #define PRINTF_ON, End of Provisioning !!!! \r\n");
        while(1);
      }

#ifdef READ_CERTIFICATE_AND_VERIFY

      printf("\r\nNow reading and compare Certificates written inside STSAFE-A :\r\n\r\n");

      if (HAL_Get_Data_Zone(&stsafea_handle,ZONE_CERT_CA_FIRMW,sizeof(CERT_CA_FW), Zone_Out_Cert_CA,0)==OK)
      {
        printf("Get Certificate CERT_CA_FW OK \r\n");
      }
      else
      {        
        printf("Get Certificate fail \r\n");
        while(1);
      }

      if (!StatusCode && memcmp(CERT_CA_FW, Zone_Out_Cert_CA, sizeof(CERT_CA_FW)))
      {
       
        printf("Certificate not equals expected datas \r\n");
        while(1);
      }
      else
      {
        printf("Certificate CERT_CA_FW successfuly read and compared : OK\r\n");
      }

      if (HAL_Get_Data_Zone(&stsafea_handle,ZONE_CERT_OEM_FIRMW,sizeof(CERT_CA_OEM_FW), Zone_Out_Cert_CA_OEM,0)==OK)
      {
        printf("Get Certificate CERT_CA_OEM_FW OK \r\n");
      }
      else
      {
        printf("Get Certificate fail \r\n");
        while(1);
      }              

      if (!StatusCode && memcmp(CERT_CA_OEM_FW, Zone_Out_Cert_CA_OEM, sizeof(CERT_CA_OEM_FW)))
      {
        printf("Certificate not equals expected datas \r\n");        
      }
      else
      {
        printf("Certificate CERT_CA_OEM_FW successfuly read and compared : OK \r\n");
        
      }

#endif /* READ_CERTIFICATE_AND_VERIFY */

      printf("\r\nEnd provisioning of STSAFE-A \r\n");

    }
    else
    {
      printf("\r\nProblem while initialization of STSAFE-Axx secure storage API\n");
    }

  } /* if (!StatusCode)*/
  else
  {
    printf("\r\nProblem while initialization of STSAFE-Axx\n");
  }


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}


/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /**Initializes the CPU, AHB and APB busses clocks
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 40;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /**Initializes the CPU, AHB and APB busses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
                                | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }

  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
  /**Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{
  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = UART_SPEED;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
}

#if (defined(__GNUC__) && !defined(__CC_ARM) && !defined(__ARMCC_VERSION))
/* With GCC/RAISONANCE, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */

#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#define GETCHAR_PROTOTYPE int fgetc(FILE *f)

#endif /* __GNUC__ */

/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */

PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART2 and Loop until the end of transmission */
  while (HAL_OK != HAL_UART_Transmit(&huart1, (uint8_t *) &ch, 1, 30000))
  {
    ;
  }
  return ch;
}
/**
  * @brief  Retargets the C library scanf function to the USART.
  * @param  None
  * @retval None
  */
GETCHAR_PROTOTYPE
{
  /* Place your implementation of fgetc here */
  /* e.g. readwrite a character to the USART2 and Loop until the end of transmission */
  uint8_t ch = 0;
  while (HAL_OK != HAL_UART_Receive(&huart1, (uint8_t *)&ch, 1, 30000))
  {
    ;
  }
  return ch;
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
