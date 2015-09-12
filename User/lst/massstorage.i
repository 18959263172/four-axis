#line 1 "..\\BSP_Lib\\Src\\USB\\MassStorage.c"
 
 
 
 
 

#line 1 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
 
 
 
 




 








 











#line 37 "C:\\Keil\\ARM\\RV31\\INC\\string.h"


  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 184 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 200 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 223 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 238 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 261 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 493 "C:\\Keil\\ARM\\RV31\\INC\\string.h"



 
#line 8 "..\\BSP_Lib\\Src\\USB\\MassStorage.c"
#line 1 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"
 
 
 
 
 



#line 1 "..\\CMSIS\\NUC1xx\\NUC1xx.h"
 
 
 
 
 









 
 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  HardFault_IRQn		      = -13,     
  SVCall_IRQn                 = -5,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  BOD_IRQn                  = 0,
  WDT_IRQn                  = 1,
  EINT0_IRQn                = 2,
  EINT1_IRQn                = 3,
  GPAB_IRQn                 = 4,
  GPCDE_IRQn                = 5,
  PWMA_IRQn                 = 6,
  PWMB_IRQn                 = 7,
  TMR0_IRQn                 = 8,
  TMR1_IRQn                 = 9,
  TMR2_IRQn                 = 10,
  TMR3_IRQn                 = 11,
  UART0_IRQn                = 12,
  UART1_IRQn                = 13,
  SPI0_IRQn                 = 14,
  SPI1_IRQn                 = 15,
  SPI2_IRQn                 = 16,
  SPI3_IRQn                 = 17,
  I2C0_IRQn                 = 18,
  I2C1_IRQn                 = 19,
  CAN0_IRQn                 = 20,
  CAN1_IRQn                 = 21,
  SD_IRQn                   = 22,
  USBD_IRQn                 = 23,
  PS2_IRQn                  = 24,
  ACMP_IRQn                 = 25,
  PDMA_IRQn                 = 26,
  I2S_IRQn                  = 27,
  PWRWU_IRQn                = 28,
  ADC_IRQn                  = 29,
  DAC_IRQn                  = 30,
  RTC_IRQn                  = 31
} IRQn_Type;






 

 





#line 1 "..\\CMSIS\\CM0\\core_cm0.h"
 




















 











 








 











#line 1 "C:\\Keil\\ARM\\RV31\\INC\\stdint.h"
 
 





 









#line 25 "C:\\Keil\\ARM\\RV31\\INC\\stdint.h"







 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 196 "C:\\Keil\\ARM\\RV31\\INC\\stdint.h"

     







     










     











#line 260 "C:\\Keil\\ARM\\RV31\\INC\\stdint.h"



 


#line 56 "..\\CMSIS\\CM0\\core_cm0.h"

















 

#line 82 "..\\CMSIS\\CM0\\core_cm0.h"





 


 





 
typedef struct
{
  volatile uint32_t ISER[1];                       
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                       
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                       
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                       
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IPR[8];                        
}  NVIC_Type;
   





 
typedef struct
{
  volatile const  uint32_t CPUID;                         
  volatile uint32_t ICSR;                          
       uint32_t RESERVED0;                                      
  volatile uint32_t AIRCR;                         
  volatile uint32_t SCR;                           
  volatile uint32_t CCR;                           
       uint32_t RESERVED1;                                      
  volatile uint32_t SHP[2];                        
  volatile uint32_t SHCSR;                         
       uint32_t RESERVED2[2];                                   
  volatile uint32_t DFSR;                          
} SCB_Type;                                                

 















 



























 















 









 






 



 














   





 
typedef struct
{
  volatile uint32_t CTRL;                          
  volatile uint32_t LOAD;                          
  volatile uint32_t VAL;                           
  volatile const  uint32_t CALIB;                         
} SysTick_Type;

 












 



 



 








   





 
typedef struct
{
  volatile uint32_t DHCSR;                         
  volatile  uint32_t DCRSR;                         
  volatile uint32_t DCRDR;                         
  volatile uint32_t DEMCR;                         
} CoreDebug_Type;

 

































 






 








   


 











   




 





#line 377 "..\\CMSIS\\CM0\\core_cm0.h"


 


 




#line 395 "..\\CMSIS\\CM0\\core_cm0.h"


 
 








 
extern uint32_t __get_PSP(void);








 
extern void __set_PSP(uint32_t topOfProcStack);








 
extern uint32_t __get_MSP(void);








 
extern void __set_MSP(uint32_t topOfMainStack);








 
extern uint32_t __REV16(uint16_t value);








 
extern int32_t __REVSH(int16_t value);


#line 500 "..\\CMSIS\\CM0\\core_cm0.h"








 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}







 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}





#line 770 "..\\CMSIS\\CM0\\core_cm0.h"







 
 

 

 
 












 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}








 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}












 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) | 
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->IPR[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000) + 0x0100))->IPR[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}















 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)((((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
  else {
    return((uint32_t)((((NVIC_Type *) ((0xE000E000) + 0x0100))->IPR[( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
}



 












 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{ 
  if (ticks > (0xFFFFFFul << 0))  return (1);             
                                                               
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->LOAD  = (ticks & (0xFFFFFFul << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL  = (1ul << 2) | 
                   (1ul << 1)   | 
                   (1ul << 0);                     
  return (0);                                                   
}






 





 
static __inline void NVIC_SystemReset(void)
{
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR  = ((0x5FA << 16)      | 
                 (1ul << 2));
  __dsb(0);                                                                                            
  while(1);                                                                             
}

   





   



 
#line 75 "..\\CMSIS\\NUC1xx\\NUC1xx.h"
#line 1 "..\\CMSIS\\NUC1xx\\system_NUC1xx.h"
 
 
 
 
 









 






extern uint32_t SystemCoreClock;                    










 
extern void SystemInit(void);










 
extern void SystemCoreClockUpdate (void);





#line 76 "..\\CMSIS\\NUC1xx\\NUC1xx.h"
#line 1 "..\\BSP_Lib\\Inc\\System\\SysInfra.h"
 
 
 
 
 





 
 
 
#line 1 "..\\BSP_Lib\\Inc\\System\\ModuleID.h"
 
 
 
 
 





typedef enum
{
	 
	
	 
	MODULE_ID_DRVPROTECT		= 0,		 

	MODULE_ID_DRVADC			= 2,		 
	MODULE_ID_DRVAIC			= 4,		 
	MODULE_ID_DRVAPU			= 6,		 
	MODULE_ID_DRVAUDIOADC		= 8,		 
	MODULE_ID_DRVCACHE			= 10,		 
	MODULE_ID_DRVCAN			= 11,		 
	MODULE_ID_DRVEBI			= 12,		 
	MODULE_ID_DRVEDMA			= 13,		 
	MODULE_ID_DRVGDMA			= 14,		 
	MODULE_ID_DRVFSC			= 15,		 
	MODULE_ID_DRVGE				= 16,		 
	MODULE_ID_DRVFMC			= 17,		 
	MODULE_ID_DRVGPIO			= 18,		 
	
	MODULE_ID_DRVGPU			= 20,		 
	MODULE_ID_DRVI2C			= 22,		 
	MODULE_ID_DRVI2S			= 24,		 
	MODULE_ID_DRVI2SM			= 26,		 
	MODULE_ID_DRVMPU			= 28,		 
	MODULE_ID_DRVNAND			= 30,		 
	MODULE_ID_DRVNOR			= 32,		 
	MODULE_ID_DRVPDMA     		= 33,        
	MODULE_ID_DRVPWM			= 34,		 
	MODULE_ID_DRVPS2			= 35,		 
	MODULE_ID_DRVRTC			= 36,		 
	MODULE_ID_DRVSDCARD			= 38,		 
	MODULE_ID_DRVSIO			= 39,		 

	MODULE_ID_DRVSPI			= 40,		 
	MODULE_ID_DRVSPIMS			= 41,		 
	MODULE_ID_DRVSPIFLASH		= 42,		 
	MODULE_ID_DRVSPIM			= 43,		 
	MODULE_ID_DRVSYS			= 44,		 
	MODULE_ID_DRVSPU			= 45,		 
	MODULE_ID_DRVTIMER			= 46,		 
	MODULE_ID_DRVUART			= 48,		 
	MODULE_ID_DRVUSB			= 50,		 
	MODULE_ID_DRVUSBH			= 52,		 
	MODULE_ID_DRVVDMA			= 54,		 
	MODULE_ID_DRVVIDEOIN		= 56,		 
	MODULE_ID_DRVVPOST			= 58,		 

	MODULE_ID_DRVVRAM			= 60,		 
	MODULE_ID_DRVW55U02			= 62,		 
	MODULE_ID_DRVI2CH			= 64,		 
	MODULE_ID_DRVWDT			= 66,		 
	MODULE_ID_DRVJPEG			= 68,		 
	
	MODULE_ID_DRVZEROG			= 70,		 
	MODULE_ID_DRVSI2C			= 71,		 

	 
	MODULE_ID_AEC				= 81,		 
	MODULE_ID_BEATDET			= 82,		 
	MODULE_ID_SNDEFF			= 83,		 
	MODULE_ID_AUDIOSYN			= 84,		 
	MODULE_ID_G726ADPCM			= 85,		 
	MODULE_ID_IMAADPCM			= 86,		 
	MODULE_ID_MP3DEC			= 88,		 
	MODULE_ID_PITCHCHANGE		= 90,		 
	MODULE_ID_WAVFILEUTIL		= 92,		 
	MODULE_ID_WMADEC			= 96,		 
	MODULE_ID_WMADECDRM			= 98,		 
	MODULE_ID_AUDIOCTRL			= 100,		 
	MODULE_ID_EQ				= 106,		 
	MODULE_ID_OGGDEC			= 110,		 
	MODULE_ID_MP3ENC			= 112,		 
	MODULE_ID_UADEC				= 114,		 
	MODULE_ID_ULSPEECHDEC		= 115,		 
	MODULE_ID_USPEECHDEC		= 116,		 
	MODULE_ID_SPEECHRECOG		= 118,		 

	 
	MODULE_ID_FS				= 120,		 
	
	 
	MODULE_ID_FL				= 128,		 
	
	 
	MODULE_ID_KEYPAD			= 130,		 
	MODULE_ID_LWIP				= 132,		 
	MODULE_ID_WLANMGR			= 134,		 
	MODULE_ID_HTTPD				= 136,		 
	MODULE_ID_VIRTUALCOM		= 139,		 

	 
	MODULE_ID_GFXRESLDR			= 140,		 
	MODULE_ID_GFXLIB			= 141,		 
	MODULE_ID_IMGPROC			= 142,		 
	MODULE_ID_JPEG				= 144,		 
	MODULE_ID_PNGDEC			= 146,		 
	MODULE_ID_BARCODE2D			= 148,		 	 
	MODULE_ID_PTNRECOG			= 150,		 
	MODULE_ID_MOTIONDET			= 152,		 
	
	 
	MODULE_ID_STORIF			= 160,		 
	MODULE_ID_SDCARD			= 161,		 
	MODULE_ID_SYSNAND			= 162,		 
	MODULE_ID_SPIFLASH			= 163,		 
	MODULE_ID_WTRIF				= 164,		 
	MODULE_ID_NORFLASH			= 165,		 
	MODULE_ID_SYSNANDLITE		= 166,		 
	
	 
	MODULE_ID_INTMGR			= 180,		 
	MODULE_ID_BLKLDR			= 181,		 
	MODULE_ID_MEMMGR			= 182,		 
	MODULE_ID_EVTMGR			= 183,		 
	MODULE_ID_PROF				= 184,		 
	MODULE_ID_PROGLDR			= 186,		 
	MODULE_ID_SYSINFRA			= 188,		 
	MODULE_ID_TIMERCTRL			= 190,		 
	MODULE_ID_TIMEUTIL			= 192,		 
	MODULE_ID_CONPROGLDR		= 194,		 
	
	 
	MODULE_ID_USBCOREH			= 78,		 
	MODULE_ID_HID				= 220,		 
	MODULE_ID_MASSSTOR			= 222,		 
	MODULE_ID_MASSSTORHID		= 224,		 
	MODULE_ID_MASSSTORLITE		= 226,		 
	MODULE_ID_MTP				= 230,		 
	MODULE_ID_USBINFRA			= 232,		 
	MODULE_ID_UAC				= 234,		 
	MODULE_ID_UAVC				= 236,		 
	MODULE_ID_UVC				= 238,		 
	MODULE_ID_MASSSTORH			= 252,		 
	MODULE_ID_HIDH				= 254,		 
	MODULE_ID_VCOM				= 253,		 

	 
	MODULE_ID_MSDRMPD			= 228,		 
	
	 
	MODULE_ID_AVICODEC			= 240,		 
	MODULE_ID_MJPEG				= 242,		 
	MODULE_ID_WIVICORE			= 244,		 
	MODULE_ID_WIVI				= 246,		 	
	MODULE_ID_AVCTRL			= 248,		 
	MODULE_ID_AVIUTIL			= 250,		 
	
	 
	MODULE_ID_WTCHAN			= 168,		 
	MODULE_ID_WTCMDSERV			= 170,		 
	MODULE_ID_WTDISPLAY			= 172,		 
	MODULE_ID_WTMEDIA			= 174,		 
	MODULE_ID_WTSYS				= 176,		 
	MODULE_ID_WTTRANS			= 178,		 
	
	
} E_SYSINFRA_MODULE_ID;


#line 15 "..\\BSP_Lib\\Inc\\System\\SysInfra.h"
#line 16 "..\\BSP_Lib\\Inc\\System\\SysInfra.h"
#line 17 "..\\BSP_Lib\\Inc\\System\\SysInfra.h"






 
 
 





 
 
 
 



 



 

 

 


 






 
 
 
 
















#line 77 "..\\CMSIS\\NUC1xx\\NUC1xx.h"


 
 
 

 
typedef struct
{
    volatile uint32_t PMD0:2;
    volatile uint32_t PMD1:2;
    volatile uint32_t PMD2:2;
    volatile uint32_t PMD3:2;
    volatile uint32_t PMD4:2;
    volatile uint32_t PMD5:2;
    volatile uint32_t PMD6:2;
    volatile uint32_t PMD7:2;
    volatile uint32_t PMD8:2;
    volatile uint32_t PMD9:2;
    volatile uint32_t PMD10:2;
    volatile uint32_t PMD11:2;
    volatile uint32_t PMD12:2;
    volatile uint32_t PMD13:2;
    volatile uint32_t PMD14:2;
    volatile uint32_t PMD15:2;
} GPIO_PMD_T;

typedef volatile uint32_t GPIO_OFFD_T;

typedef volatile uint32_t GPIO_DOUT_T;

typedef volatile uint32_t GPIO_DMASK_T;

typedef volatile uint32_t GPIO_PIN_T;

typedef volatile uint32_t GPIO_DBEN_T;

typedef volatile uint32_t GPIO_IMD_T;

typedef volatile uint32_t GPIO_IEN_T;

typedef volatile uint32_t GPIO_ISRC_T;

typedef struct
{
    volatile uint32_t  DBCLKSEL:4;
    volatile uint32_t  DBCLKSRC:1;
    volatile uint32_t  ICLK_ON:1;
    volatile const  uint32_t  RESERVE:26;    
} GPIO_DBNCECON_T;

typedef struct
{
    GPIO_PMD_T      PMD;
    GPIO_OFFD_T     OFFD;
    GPIO_DOUT_T     DOUT;
    GPIO_DMASK_T    DMASK;
    GPIO_PIN_T      PIN;
    GPIO_DBEN_T     DBEN;
    GPIO_IMD_T      IMD;
    GPIO_IEN_T      IEN;
    GPIO_ISRC_T     ISRC;
    
} GPIO_T;


 

typedef volatile uint32_t UART_DATA_T;


typedef struct
{
    volatile uint32_t  RDA_IEN:1;
    volatile uint32_t  THRE_IEN:1;
    volatile uint32_t  RLS_IEN:1;
    volatile uint32_t  MODEM_IEN:1;
    volatile uint32_t  RTO_IEN:1;	  
    volatile uint32_t  BUF_ERR_IEN:1;
    volatile uint32_t  WAKE_IEN:1;
    volatile const  uint32_t  RESERVE0:1;
	volatile uint32_t  LIN_RX_BRK_IEN:1;
    volatile const  uint32_t  RESERVE1:2;
    volatile uint32_t  TIME_OUT_EN:1;       
    volatile uint32_t  AUTO_RTS_EN:1;
    volatile uint32_t  AUTO_CTS_EN:1;
    volatile uint32_t  DMA_TX_EN:1;
    volatile uint32_t  DMA_RX_EN:1;
    volatile const  uint32_t  RESERVE2:16;    
    
} UART_IER_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  RFR:1;
    volatile uint32_t  TFR:1;
    volatile const  uint32_t  RESERVE1:1;
    volatile uint32_t  RFITL:4;              
    volatile uint32_t  RX_DIS:1;
    volatile const  uint32_t  RESERVE2:7;
    volatile uint32_t  RTS_TRI_LEVEL:4;
    volatile const  uint32_t  RESERVE3:12;
} UART_FCR_T;

typedef struct
{
    volatile uint32_t  WLS:2;                
    volatile uint32_t  NSB:1;                
    volatile uint32_t  PBE:1;                
    volatile uint32_t  EPE:1;                
    volatile uint32_t  SPE:1;                
    volatile uint32_t  BCB:1;                
    volatile const  uint32_t  RESERVE:25;
} UART_LCR_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  RTS:1;
    volatile const  uint32_t  RESERVE1:2;
    volatile uint32_t  LBME:1;
    volatile const  uint32_t  RESERVE2:4;
    volatile uint32_t  LEV_RTS:1;
    volatile const  uint32_t  RESERVE3:3;
    volatile const  uint32_t  RTS_ST:1;                
    volatile const  uint32_t  RESERVE4:18;
} UART_MCR_T;

typedef struct
{
    volatile uint32_t  DCTSF:1;
    volatile const  uint32_t  RESERVE0:3;
    volatile const  uint32_t  CTS_ST:1;                
    volatile const  uint32_t  RESERVE1:3;
    volatile uint32_t  LEV_CTS:1;
    volatile const  uint32_t  RESERVE2:23;
} UART_MSR_T;

typedef struct
{
    volatile uint32_t  RX_OVER_IF:1;
    volatile const  uint32_t  RESERVE0:2;
	volatile uint32_t  RS485_ADD_DETF:1;
    volatile uint32_t  PEF:1;
    volatile uint32_t  FEF:1;
    volatile uint32_t  BIF:1;
    volatile const  uint32_t  RESERVE1:1;
    volatile const  uint32_t  RX_POINTER:6;
    volatile const  uint32_t  RX_EMPTY:1;
    volatile const  uint32_t  RX_FULL:1;
    volatile const  uint32_t  TX_POINTER:6;
    volatile const  uint32_t  TX_EMPTY:1;
    volatile const  uint32_t  TX_FULL:1;
    volatile uint32_t  TX_OVER_IF:1;
    volatile const  uint32_t  RESERVE2:3;
    volatile const  uint32_t  TE_FLAG:1;                 
    volatile const  uint32_t  RESERVE3:3;
} UART_FSR_T;

typedef struct
{
    volatile uint32_t  RDA_IF:1;
    volatile uint32_t  THRE_IF:1;
    volatile uint32_t  RLS_IF:1;
    volatile uint32_t  MODEM_IF:1;
    volatile uint32_t  TOUT_IF:1;
    volatile uint32_t  BUF_ERR_IF:1;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  LIN_RX_BREAK_IF:1;

    volatile uint32_t  RDA_INT:1;
    volatile uint32_t  THRE_INT:1;
    volatile uint32_t  RLS_INT:1;
    volatile uint32_t  MODEM_INT:1;
    volatile uint32_t  TOUT_INT:1;
    volatile uint32_t  BUF_ERR_INT:1;
    volatile const  uint32_t  RESERVE1:1;
    volatile uint32_t  LIN_Rx_Break_INT:1;

    volatile const  uint32_t  RESERVE2:2;
    volatile uint32_t  HW_RLS_IF:1;
    volatile uint32_t  HW_MODEM_IF:1;
    volatile uint32_t  HW_TOUT_IF:1;
    volatile uint32_t  HW_BUF_ERR_IF:1;
    volatile uint32_t  RESERVE3:1;
    volatile uint32_t  HW_LIN_RX_BREAK_IF:1;

    volatile const  uint32_t  RESERVE4:2;
    volatile uint32_t  HW_RLS_INT:1;
    volatile uint32_t  HW_MODEM_INT:1;
    volatile uint32_t  HW_TOUT_INT:1;
    volatile uint32_t  HW_BUF_ERR_INT:1;
    volatile uint32_t  RESERVE5:1;
    volatile uint32_t  HW_LIN_RX_BREAK_INT:1;
} UART_ISR_T;

typedef struct
{
    volatile uint32_t  TOIC:7;
	volatile const  uint32_t  RESERVE0:1;
	volatile uint32_t  DLY:8;
    volatile const  uint32_t  RESERVE1:16;

} UART_TOR_T;

typedef struct
{
    volatile uint32_t  BRD:16;
    volatile const  uint32_t  RESERVE0:8;
    volatile uint32_t  DIVIDER_X:4;
    volatile uint32_t  DIV_X_ONE:1;            
    volatile uint32_t  DIV_X_EN:1;            
    volatile const  uint32_t  RESERVE1:2;
} UART_BAUD_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  TX_SELECT:1;
    volatile const  uint32_t  RESERVE1:3;
    volatile uint32_t  INV_TX:1;            
    volatile uint32_t  INV_RX:1;
    volatile const  uint32_t  RESERVE2:25;
} UART_IRCR_T;

typedef struct
{
    volatile uint32_t  LIN_BKFL:4;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  LIN_RX_EN:1;
    volatile uint32_t  LIN_TX_EN:1;            
    volatile uint32_t  RS485_NMM:1;
	volatile uint32_t  RS485_AAD:1;
	volatile uint32_t  RS485_AUD:1;
	volatile const  uint32_t  RESERVE1:4;
	volatile uint32_t  RS485_ADD_EN:1;
	volatile const  uint32_t  RESERVE2:8;
	volatile uint32_t  ADDR_MATCH:8;
} UART_ALTCON_T;



typedef struct
{
    volatile uint32_t  FUN_SEL:2;
    volatile const  uint32_t  RESERVE0:30;

} UART_FUNSEL_T;


typedef struct
{
    UART_DATA_T     DATA;
    UART_IER_T      IER;
    UART_FCR_T      FCR;
    UART_LCR_T      LCR;
    UART_MCR_T      MCR;
    UART_MSR_T      MSR;
    UART_FSR_T      FSR;
    UART_ISR_T      ISR;
    UART_TOR_T      TOR;
    UART_BAUD_T     BAUD;
    UART_IRCR_T     IRCR;
    UART_ALTCON_T   ALTCON;    
	UART_FUNSEL_T   FUNSEL;    
} UART_T;

 
typedef struct
{
    volatile uint32_t  PRESCALE:8;
    volatile const  uint32_t  RESERVE0:8;
    volatile uint32_t  TDR_EN:1;
    volatile const  uint32_t  RESERVE1:7;
	volatile uint32_t  COUNTER_EN:1;		  
    volatile uint32_t  CACT:1;		  
    volatile uint32_t  CRST:1;
    volatile uint32_t  MODE:2;
    volatile uint32_t  IE:1;
    volatile uint32_t  CEN:1;
    volatile uint32_t  nDBGACK_EN:1;
} TIMER_TCSR_T;

typedef volatile uint32_t TIMER_TCMPR_T;

typedef volatile uint32_t TIMER_TDR_T;

typedef struct
{
    volatile uint32_t  TIF:1;
    volatile const  uint32_t  RESERVE:31;
} TIMER_TISR_T;

typedef struct
{
    TIMER_TCSR_T     TCSR;
    TIMER_TCMPR_T    TCMPR;
    TIMER_TISR_T     TISR;    
    TIMER_TDR_T      TDR;
 } TIMER_T;


 
typedef struct
{
    volatile uint32_t  WTR:1;
	volatile uint32_t  WTRE:1;
	volatile uint32_t  WTRF:1;
	volatile uint32_t  WTIF:1;
	volatile uint32_t  WTWKE:1;
	volatile const  uint32_t  WTWKF:1;
	volatile uint32_t  WTIE:1;
	volatile uint32_t  WTE:1;
	volatile uint32_t  WTIS:3;
    volatile const  uint32_t  RESERVE1:21;
} WDT_WTCR_T;

typedef struct
{
    WDT_WTCR_T     WTCR;
    
 } WDT_T;

 
typedef struct
{
    volatile uint32_t  GO_BUSY:1;
    volatile uint32_t  RX_NEG:1;
    volatile uint32_t  TX_NEG:1;
    volatile uint32_t  TX_BIT_LEN:5;
    volatile uint32_t  TX_NUM:2;
    volatile uint32_t  LSB:1;
    volatile uint32_t  CLKP:1;
    volatile uint32_t  SP_CYCLE:4;
    volatile uint32_t  IF:1;
    volatile uint32_t  IE:1;
    volatile uint32_t  SLAVE:1;
    volatile uint32_t  BYTE_REORDER:2;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  TWOB:1;
    volatile uint32_t  VARCLK_EN:1;
    volatile const  uint32_t  RESERVE:8;
} SPI_CNTRL_T;

typedef struct
{
    volatile uint32_t  DIVIDER:16;
    volatile uint32_t  DIVIDER2:16;
} SPI_DIVIDER_T;

typedef struct
{
    volatile uint32_t  SSR:2;
    volatile uint32_t  SS_LVL:1;
    volatile uint32_t  AUTOSS:1;
    volatile uint32_t  SS_LTRIG:1;
    volatile uint32_t  LTRIG_FLAG:1;
    volatile const  uint32_t  RESERVE:26;
} SPI_SSR_T;


typedef volatile const  uint32_t   SPI_RX_T;
typedef volatile  uint32_t   SPI_TX_T;
typedef volatile uint32_t SPI_VARCLK_T;

typedef struct
{
    volatile uint32_t  TX_DMA_GO:1;
    volatile uint32_t  RX_DMA_GO:1;
    volatile const  uint32_t  RESERVE:30;
} SPI_DMA_T;

typedef struct
{
    SPI_CNTRL_T     CNTRL;
    SPI_DIVIDER_T   DIVIDER;
    SPI_SSR_T       SSR;
    uint32_t        RESERVE0;
    SPI_RX_T        RX[2];
    uint32_t        RESERVE1;
    uint32_t        RESERVE2;
    SPI_TX_T        TX[2];
    uint32_t        RESERVE3;
    uint32_t        RESERVE4;
    uint32_t        RESERVE5;
    SPI_VARCLK_T    VARCLK;
    SPI_DMA_T       DMA;
} SPI_T;

 
typedef struct
{
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  AA:1;
    volatile uint32_t  SI:1;
    volatile uint32_t  STO:1;
    volatile uint32_t  STA:1;
    volatile uint32_t  ENSI:1;
   	volatile uint32_t  EI:1;
    volatile const  uint32_t  RESERVE1:24;
} I2C_CON_T;

typedef struct
{
    volatile uint32_t  GC:1;
    volatile uint32_t  ADDR:7;
    volatile const  uint32_t  RESERVE:24;
} I2C_ADDR_T;

typedef volatile uint32_t I2C_DATA_T;

typedef volatile const  uint32_t I2C_STATUS_T;

typedef volatile uint32_t I2C_CLK_T;

typedef struct
{
    volatile uint32_t  TIF:1;
    volatile uint32_t  DIV4:1;
    volatile uint32_t  ENTI:1;
    volatile const  uint32_t  RESERVE:29;
} I2C_TOC_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  ADM:7;
    volatile const  uint32_t  RESERVE1:24;
} I2C_ADRM_T;

typedef struct
{
    I2C_CON_T       CON;
    I2C_ADDR_T      ADDR0;
    I2C_DATA_T      DATA;
    I2C_STATUS_T    STATUS;
    I2C_CLK_T       CLK;
    I2C_TOC_T       TOC;
	I2C_ADDR_T	    ADDR1;
	I2C_ADDR_T	    ADDR2;
	I2C_ADDR_T	    ADDR3;
	I2C_ADRM_T		ADRM0;
	I2C_ADRM_T		ADRM1;
	I2C_ADRM_T		ADRM2;
	I2C_ADRM_T	    ADRM3;        
} I2C_T;


 

typedef volatile uint32_t RTC_INIR_T;

typedef struct
{
    volatile uint32_t  AER:16;
    volatile const  uint32_t  ENF:1;
    volatile const  uint32_t  RESERVE1:15;
} RTC_AER_T;

typedef struct
{
    volatile uint32_t  FRACTION:6;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  INTEGER:4;
    volatile const  uint32_t  RESERVE1:20;
} RTC_FCR_T;

typedef struct
{
    volatile uint32_t  SEC1:4;
    volatile uint32_t  SEC10:3;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  MIN1:4;
    volatile uint32_t  MIN10:3;
    volatile const  uint32_t  RESERVE1:1;
    volatile uint32_t  HR1:4;
    volatile uint32_t  HR10:2;
    volatile const  uint32_t  RESERVE2:10;
} RTC_TLR_T;

typedef struct
{
    volatile uint32_t  DAY1:4;
    volatile uint32_t  DAY10:2;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  MON1:4;
    volatile uint32_t  MON10:1;
    volatile const  uint32_t  RESERVE1:3;
    volatile uint32_t  YEAR1:4;
    volatile uint32_t  YEAR10:4;
    volatile const  uint32_t  RESERVE2:8;
} RTC_CLR_T;

typedef struct
{
    volatile uint32_t  HR24:1;
    volatile const  uint32_t  RESERVE:31;
} RTC_TSSR_T;

typedef struct
{
    volatile uint32_t  DWR:3;
    volatile const  uint32_t  RESERVE:29;
} RTC_DWR_T;

typedef RTC_TLR_T   RTC_TAR_T;
typedef RTC_CLR_T   RTC_CAR_T;

typedef struct
{
    volatile uint32_t  LIR:1;
    volatile const  uint32_t  RESERVE:31;
} RTC_LIR_T;

typedef struct
{
    volatile uint32_t  AIER:1;
    volatile uint32_t  TIER:1;
    volatile const  uint32_t  RESERVE:30;
} RTC_RIER_T;



typedef struct
{
    volatile uint32_t  AI:1;
    volatile uint32_t  TI:1;
    volatile const  uint32_t  RESERVE:30;
} RTC_RIIR_T;

typedef struct
{
    volatile uint32_t  TTR:3;
	volatile uint32_t  TWKE:1;
    volatile const  uint32_t  RESERVE:28;
} RTC_TTR_T;

typedef struct
{
    volatile uint32_t  PTOUT:16;
    volatile const  uint32_t  RESERVE0:7;
    volatile uint32_t  PWROFF:1;
    volatile const  uint32_t  RESERVE1:8;
} RTC_PWRCON_T;

typedef struct
{
    RTC_INIR_T  INIR;
    RTC_AER_T   AER;
    RTC_FCR_T   FCR;
    RTC_TLR_T   TLR;
    RTC_CLR_T   CLR;
    RTC_TSSR_T  TSSR;
    RTC_DWR_T   DWR;
    RTC_TAR_T   TAR;
    RTC_CAR_T   CAR;
    RTC_LIR_T   LIR;
    RTC_RIER_T  RIER;
    RTC_RIIR_T  RIIR;
    RTC_TTR_T   TTR;
    RTC_PWRCON_T   PWRCON;
} RTC_T;


 
typedef struct
{
    volatile uint32_t  RSLT:16;
    volatile uint32_t  OVERRUN:1;
    volatile uint32_t  VALID:1;
    volatile const  uint32_t  RESERVE1:14;
} ADC_ADDR_T;

typedef struct
{
    volatile uint32_t  ADEN:1;
    volatile uint32_t  ADIE:1;
    volatile uint32_t  ADMD:2;
    volatile uint32_t  TRGS:2;
    volatile uint32_t  TRGCOND:2;
    volatile uint32_t  TRGEN:1;
    volatile uint32_t  PTEN:1;
    volatile uint32_t  DIFFEN:1;
    volatile uint32_t  ADST:1;
    volatile const  uint32_t  RESERVE0:19;
    volatile uint32_t  DMOF:1;
} ADC_ADCR_T;



typedef struct
{
    volatile uint32_t  CHEN:8;
    volatile uint32_t  PRESEL:2;
    volatile const  uint32_t  RESERVE:22;
} ADC_ADCHER_T;


typedef struct
{
    volatile uint32_t  CMPEN:1;
    volatile uint32_t  CMPIE:1;
    volatile uint32_t  CMPCOND:1;
    volatile uint32_t  CMPCH:3;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  CMPMATCNT:4;
    volatile const  uint32_t  RESERVE1:4;
    volatile uint32_t  CMPD:12;
    volatile const  uint32_t  RESERVE2:4;
} ADC_ADCMPR_T;

typedef struct
{
    volatile uint32_t  ADF:1;
    volatile uint32_t  CMPF0:1;
    volatile uint32_t  CMPF1:1;
    volatile uint32_t  BUSY:1;
    volatile uint32_t  CHANNEL:3;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  VALID:8;
    volatile uint32_t  OVERRUN:8;
    volatile const  uint32_t  RESERVE1:8;
} ADC_ADSR_T;

typedef struct
{
    volatile uint32_t  CALEN:1;
    volatile uint32_t  CALDONE:1;
    volatile const  uint32_t  RESERVE:30;
} ADC_ADCALR_T;

typedef struct
{
    volatile uint32_t  AD_PDMA:12;
    volatile const  uint32_t  RESERVE:20;
} ADC_ADPDMA_T;

typedef struct
{
    ADC_ADDR_T      ADDR[8];
    ADC_ADCR_T      ADCR;
    ADC_ADCHER_T    ADCHER;
    ADC_ADCMPR_T    ADCMPR[2];
    ADC_ADSR_T      ADSR;
    ADC_ADCALR_T    ADCALR;
    uint32_t        RESERVE0;
    uint32_t        RESERVE1;
    ADC_ADPDMA_T    ADPDMA;
} ADC_T;

 
typedef struct
{
    volatile uint32_t  CMPEN:1;
    volatile uint32_t  CMPIE:1;
    volatile uint32_t  CMP_HYSEN:1;
    volatile uint32_t  RESERVE0:1;
    volatile uint32_t  CMPCN:1;
    volatile uint32_t  RESERVE1:1;
    volatile const  uint32_t  RESERVE:26;
} ACMP_CMPCR_T;

typedef struct
{
    volatile uint32_t  CMPF0:1;
    volatile uint32_t  CMPF1:1;
    volatile uint32_t  CO0:1;
    volatile uint32_t  CO1:1;
    volatile const  uint32_t  RESERVE:28;
} ACMP_CMPSR_T;

typedef struct
{
    ACMP_CMPCR_T CMPCR[2];
    ACMP_CMPSR_T CMPSR;
} ACMP_T;

 
typedef struct
{
    volatile uint32_t  XTL12M_EN:1;
    volatile uint32_t  XTL32K_EN:1;
    volatile uint32_t  OSC22M_EN:1;
    volatile uint32_t  OSC10K_EN:1;
    volatile uint32_t  PD_WU_DLY:1;
    volatile uint32_t  PD_WU_INT_EN:1;
    volatile uint32_t  PD_WU_STS:1;
    volatile uint32_t  PWR_DOWN:1;
    volatile uint32_t  PD_WAIT_CPU:1;
    volatile const  uint32_t  RESERVE:23;
} SYSCLK_PWRCON_T;

typedef struct
{
	volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  PDMA_EN:1;
    volatile uint32_t  ISP_EN:1;
	volatile uint32_t  EBI_EN:1;
    volatile const  uint32_t  RESERVE1:28;
} SYSCLK_AHBCLK_T;

typedef struct
{
    volatile uint32_t  WDT_EN:1;
    volatile uint32_t  RTC_EN:1;
    volatile uint32_t  TMR0_EN:1;
    volatile uint32_t  TMR1_EN:1;
    volatile uint32_t  TMR2_EN:1;
    volatile uint32_t  TMR3_EN:1;
    volatile uint32_t  FDIV_EN:1;
	volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  I2C0_EN:1;
    volatile uint32_t  I2C1_EN:1;
    volatile const  uint32_t  RESERVE1:2;
    volatile uint32_t  SPI0_EN:1;
    volatile uint32_t  SPI1_EN:1;
    volatile uint32_t  SPI2_EN:1;
    volatile uint32_t  SPI3_EN:1;
    volatile uint32_t  UART0_EN:1;
    volatile uint32_t  UART1_EN:1;
	volatile uint32_t  UART2_EN:1;
    volatile const  uint32_t  RESERVE2:1;
    volatile uint32_t  PWM01_EN:1;
    volatile uint32_t  PWM23_EN:1;
	volatile uint32_t  PWM45_EN:1;
    volatile uint32_t  PWM67_EN:1;
    volatile uint32_t  CAN0_EN:1;
    volatile const  uint32_t  RESERVE3:2;
    volatile uint32_t  USBD_EN:1;
    volatile uint32_t  ADC_EN:1;
	volatile uint32_t  I2S_EN:1;
    volatile uint32_t  ACMP_EN:1;
    volatile uint32_t  PS2_EN:1;
} SYSCLK_APBCLK_T;

typedef struct
{
    volatile const  uint32_t  XTL12M_STB:1;
	volatile const  uint32_t  XTL32K_STB:1;
    volatile const  uint32_t  PLL_STB:1;
	volatile const  uint32_t  OSC10K_STB:1;
	volatile const  uint32_t  OSC22M_STB:1;
    volatile const  uint32_t  RESERVE0:2;
	volatile uint32_t  CLK_SW_FAIL:1;
    volatile const  uint32_t  RESERVE1:24;
} SYSCLK_CLKSTATUS_T;

typedef struct
{
    volatile uint32_t  HCLK_S:3;
    volatile uint32_t  STCLK_S:3;
    volatile const  uint32_t  RESERVE:26;
} SYSCLK_CLKSEL0_T;


typedef struct
{
    volatile uint32_t  WDT_S:2;
    volatile uint32_t  ADC_S:2;
    volatile const  uint32_t  RESERVE1:4;
    volatile uint32_t  TMR0_S:3;
    volatile const  uint32_t  RESERVE2:1;
    volatile uint32_t  TMR1_S:3;
    volatile const  uint32_t  RESERVE3:1;
    volatile uint32_t  TMR2_S:3;
    volatile const  uint32_t  RESERVE4:1;
    volatile uint32_t  TMR3_S:3;
    volatile const  uint32_t  RESERVE5:1;
    volatile uint32_t  UART_S:2;
    volatile uint32_t  CAN_S:2;
    volatile uint32_t  PWM01_S:2;
    volatile uint32_t  PWM23_S:2;
} SYSCLK_CLKSEL1_T;

typedef struct
{
    volatile uint32_t  I2S_S:2;
    volatile uint32_t  FRQDIV_S:2;
	volatile uint32_t  PWM45_S:2;
    volatile uint32_t  PWM67_S:2;
    volatile const  uint32_t  RESERVE:24;
} SYSCLK_CLKSEL2_T;

typedef struct
{
    volatile uint32_t  HCLK_N:4;
    volatile uint32_t  USB_N:4;
    volatile uint32_t  UART_N:4;
    volatile uint32_t  CAN_N:4;
    volatile uint32_t  ADC_N:8;
	volatile uint32_t  CAN_N_EXT:6;
    volatile const  uint32_t  RESERVE:2;
} SYSCLK_CLKDIV_T;

typedef struct
{
    volatile uint32_t  FB_DV:9;
    volatile uint32_t  IN_DV:5;
    volatile uint32_t  OUT_DV:2;
    volatile uint32_t  PD:1;
    volatile uint32_t  BP:1;
    volatile uint32_t  OE:1;
    volatile uint32_t  PLL_SRC:1;
    volatile const  uint32_t  RESERVE:12;
} SYSCLK_PLLCON_T;


typedef struct
{    
    volatile uint32_t  FSEL:4;
	volatile uint32_t  FDIV_EN:1;
    volatile const  uint32_t  RESERVE:27;
} SYSCLK_FRQDIV_T;

typedef struct
{
    SYSCLK_PWRCON_T    PWRCON;
    SYSCLK_AHBCLK_T    AHBCLK;
    SYSCLK_APBCLK_T    APBCLK;
    SYSCLK_CLKSTATUS_T CLKSTATUS;
    SYSCLK_CLKSEL0_T   CLKSEL0;
    SYSCLK_CLKSEL1_T   CLKSEL1;
    SYSCLK_CLKDIV_T    CLKDIV;
    SYSCLK_CLKSEL2_T   CLKSEL2;
	SYSCLK_PLLCON_T    PLLCON;
	SYSCLK_FRQDIV_T    FRQDIV;
    
} SYSCLK_T;

 
typedef volatile const uint32_t GCR_PDID_T;  

typedef struct
{
    volatile uint32_t  RSTS_POR:1;
	volatile uint32_t  RSTS_RESET:1;
	volatile uint32_t  RSTS_WDT:1;
	volatile uint32_t  RSTS_LVR:1;
	volatile uint32_t  RSTS_BOD:1;
	volatile uint32_t  RSTS_MCU:1;
	volatile const  uint32_t  RESERVE0:1;
	volatile uint32_t  RSTS_CPU:1;    
	volatile const  uint32_t  RESERVE1:24;
} GCR_RSTSRC_T;


typedef struct
{
    volatile uint32_t  CHIP_RST:1;
    volatile uint32_t  CPU_RST:1;
    volatile uint32_t  PDMA_RST:1;
	volatile uint32_t  EBI_RST:1;
    volatile const  uint32_t  RESERVE:28;
} GCR_IPRSTC1_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  GPIO_RST:1;
    volatile uint32_t  TMR0_RST:1;
    volatile uint32_t  TMR1_RST:1;
    volatile uint32_t  TMR2_RST:1;
    volatile uint32_t  TMR3_RST:1;
    volatile const  uint32_t  RESERVE1:2;
    volatile uint32_t  I2C0_RST:1;
    volatile uint32_t  I2C1_RST:1;
    volatile const  uint32_t  RESERVE2:2;
    volatile uint32_t  SPI0_RST:1;
    volatile uint32_t  SPI1_RST:1;
    volatile uint32_t  SPI2_RST:1;
    volatile uint32_t  SPI3_RST:1;
    volatile uint32_t  UART0_RST:1;
    volatile uint32_t  UART1_RST:1;
    volatile uint32_t  UART2_RST:1;
    volatile const  uint32_t  RESERVE3:1;
    volatile uint32_t  PWM03_RST:1;
    volatile uint32_t  PWM47_RST:1;
    volatile uint32_t  ACMP_RST:1;
    volatile uint32_t  PS2_RST:1;
    volatile uint32_t  CAN0_RST:1;
    volatile const  uint32_t  RESERVE4:2;
    volatile uint32_t  USBD_RST:1;
    volatile uint32_t  ADC_RST:1;
    volatile uint32_t  I2S_RST:1;
    volatile const  uint32_t  RESERVE5:2;
} GCR_IPRSTC2_T;

typedef struct
{
    volatile uint32_t  HPE:1;
    volatile const  uint32_t  RESERVE:31;
} GCR_CPR_T;


typedef struct
{
    volatile uint32_t  BOD_EN:1;
    volatile uint32_t  BOD_VL:2;
    volatile uint32_t  BOD_RSTEN:1;
    volatile uint32_t  BOD_INTF:1;
    volatile uint32_t  BOD_LPM:1;
    volatile uint32_t  BOD_OUT:1;
	volatile uint32_t  LVR_EN:1;
    volatile const  uint32_t  RESERVE1:24;
} GCR_BODCR_T;

typedef volatile uint32_t GCR_TEMPCR_T;

typedef volatile uint32_t GCR_PORCR_T;  

typedef struct
{
    volatile uint32_t ADC0:1;
    volatile uint32_t ADC1_AD12:1;
    volatile uint32_t ADC2_AD11:1;
    volatile uint32_t ADC3_AD10:1;
    volatile uint32_t ADC4_AD9:1;
    volatile uint32_t ADC5_AD8:1;
    volatile uint32_t ADC6_AD7:1;
    volatile uint32_t ADC7_SS21_AD6:1;
    volatile uint32_t I2C0_SDA:1;
    volatile uint32_t I2C0_SCL:1;
    volatile uint32_t I2C1_SDA_nWR:1;
    volatile uint32_t I2C1_SCL_nRD:1;
    volatile uint32_t PWM0_AD13:1;
    volatile uint32_t PWM1_AD14:1;
    volatile uint32_t PWM2_AD15:1;
    volatile uint32_t PWM3_I2SMCLK:1;
    volatile uint32_t SCHMITT:16;    
} GCR_GPAMFP_T;

typedef struct
{
    volatile uint32_t UART0_RX:1;
    volatile uint32_t UART0_TX:1;
    volatile uint32_t UART0_nRTS_nWRL:1;
    volatile uint32_t UART0_nCTS_nWRH:1;
    volatile uint32_t UART1_RX:1;
    volatile uint32_t UART1_TX:1;
    volatile uint32_t UART1_nRTS_ALE:1;
    volatile uint32_t UART1_nCTS_nCS:1;
    volatile uint32_t TM0:1;
    volatile uint32_t TM1_SS11:1;							   
    volatile uint32_t TM2_SS01:1;
    volatile uint32_t TM3_PWM4:1;					  
    volatile uint32_t CPO0_CLKO_AD0:1;
    volatile uint32_t CPO1_AD1:1;
    volatile uint32_t INT1_SS31:1;
	volatile uint32_t INT0:1;
    volatile uint32_t SCHMITT:16;    
} GCR_GPBMFP_T;

typedef struct
{
    volatile uint32_t SPI0_SS0_I2SLRCLK:1;
    volatile uint32_t SPI0_CLK_I2SBCLK:1;
    volatile uint32_t SPI0_MISO0_I2SDI:1;
    volatile uint32_t SPI0_MOSI0_I2SDO:1;
    volatile uint32_t SPI0_MISO1:1;
    volatile uint32_t SPI0_MOSI1:1;
    volatile uint32_t CPP0_AD4:1;
    volatile uint32_t CPN0_AD5:1;
    volatile uint32_t SPI1_SS0_MCLK:1;
    volatile uint32_t SPI1_CLK:1;
    volatile uint32_t SPI1_MISO0:1;
    volatile uint32_t SPI1_MOSI0:1;
    volatile uint32_t SPI1_MISO1:1;
    volatile uint32_t SPI1_MOSI1:1;
    volatile uint32_t CPP1_AD2:1;
    volatile uint32_t CPN1_AD3:1;
    volatile uint32_t SCHMITT:16;    
} GCR_GPCMFP_T;

typedef struct
{
    volatile uint32_t SPI2_SS0:1;
    volatile uint32_t SPI2_CLK_SPI0_SS1:1;
    volatile uint32_t SPI2_MISO0_SPI0_MISO1:1;
    volatile uint32_t SPI2_MOSI0_SPI0_MOSI1:1;
    volatile uint32_t SPI2_MISO1:1;
    volatile uint32_t SPI2_MOSI1:1;
    volatile uint32_t CAN0_RX:1;
    volatile uint32_t CAN0_TX:1;
    volatile uint32_t SPI3_SS0:1;
    volatile uint32_t SPI3_CLK:1;
    volatile uint32_t SPI3_MISO0:1;
    volatile uint32_t SPI3_MOSI0:1;
    volatile uint32_t SPI3_MISO1:1;
    volatile uint32_t SPI3_MOSI1:1;
    volatile uint32_t UART2_RX:1;
    volatile uint32_t UART2_TX:1;
    volatile uint32_t SCHMITT:16;    
} GCR_GPDMFP_T;


typedef struct
{
    volatile uint32_t  PWM6:1;
    volatile uint32_t  PWM7:1;
    volatile const  uint32_t  RESERVE1:3;
    volatile uint32_t  PWM5:1;
    volatile const  uint32_t  RESERVE2:10;
    volatile uint32_t  SCHMITT:16;
} GCR_GPEMFP_T;

typedef struct
{
    volatile uint32_t  PB10_S01:1;  	 
    volatile uint32_t  PB9_S11:1;  		 
    volatile uint32_t  PA7_S21:1;  		 
    volatile uint32_t  PB14_S31:1;  	 
    volatile uint32_t  PB11_PWM4:1;      
    volatile uint32_t  PC0_I2SLRCLK:1; 	 
    volatile uint32_t  PC1_I2SBCLK:1;  	 
    volatile uint32_t  PC2_I2SDI:1;    	 
    volatile uint32_t  PC3_I2SDO:1;    	 
    volatile uint32_t  PA15_I2SMCLK:1;   
    volatile uint32_t  PB12_CLKO:1;      
    volatile uint32_t  EBI_EN:1;     		
    volatile uint32_t  EBI_MCLK_EN:1;    
    volatile uint32_t  EBI_WRL_EN:1;     
    volatile uint32_t  EBI_WRH_EN:1;     
    volatile const  uint32_t  RESERVE0:1;  
    volatile uint32_t  EBI_HB_EN:8;     
    volatile const  uint32_t  RESERVE1:8;  
} GCR_ALTMFP_T;


typedef volatile uint32_t GCR_REGLOCK_T;
typedef volatile uint32_t GCR_RCADJ_T;


typedef struct
{
    volatile uint32_t  INTSRC:4;
    volatile const  uint32_t  RESERVE:28;
} GCR_INTSRC_T;

typedef struct
{
    volatile uint32_t  NMISEL:5;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  INT_TEST:1;
    volatile const  uint32_t  RESERVE1:24;
} GCR_NMISEL_T;


typedef volatile uint32_t GCR_MCUIRQ_T;

typedef struct
{
    GCR_PDID_T      PDID;   
    GCR_RSTSRC_T    RSTSRC;
    GCR_IPRSTC1_T   IPRSTC1;
    GCR_IPRSTC2_T   IPRSTC2;
	GCR_CPR_T       CPR;
	uint32_t        RESERVE0;
    GCR_BODCR_T     BODCR;
    GCR_TEMPCR_T    TEMPCR;
	uint32_t        RESERVE1;
	GCR_PORCR_T		PORCR;
	uint32_t        RESERVE2[2];
    GCR_GPAMFP_T    GPAMFP;
    GCR_GPBMFP_T    GPBMFP;
    GCR_GPCMFP_T    GPCMFP;
    GCR_GPDMFP_T    GPDMFP;
    GCR_GPEMFP_T    GPEMFP;
    uint32_t        RESERVE3[3];
	GCR_ALTMFP_T    ALTMFP;
    uint32_t        RESERVE4[43];
    GCR_REGLOCK_T   REGLOCK;
	uint32_t        RESERVE5[3];
	GCR_RCADJ_T		RCADJ;
} GCR_T;

typedef struct
{
    GCR_INTSRC_T    INTSRC[32];
    GCR_NMISEL_T    NMISEL;
    GCR_MCUIRQ_T    MCUIRQ;   
} GCR_INT_T;

 
typedef struct
{
    volatile uint32_t  ISPEN:1;
    volatile uint32_t  BS:1;
	volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  CFGUEN:1;
	volatile uint32_t  LDUEN:1;
    volatile uint32_t  ISPFF:1;
    volatile uint32_t  SWRST:1;
    volatile uint32_t  PT:3;
	volatile const  uint32_t  RESERVE1:1;
	volatile uint32_t  ET:3;
    volatile const  uint32_t  RESERVE2:17;

} FMC_ISPCON_T;

typedef volatile uint32_t FMC_ISPADR_T;
typedef volatile uint32_t FMC_ISPDAT_T;

typedef struct
{
    volatile uint32_t  FCTRL:4;
    volatile uint32_t  FCEN:1;
    volatile uint32_t  FOEN:1;
    volatile const  uint32_t  RESERVE:26;
} FMC_ISPCMD_T;

typedef struct
{
    volatile uint32_t  ISPGO:1;
    volatile const  uint32_t  RESERVE:31;
} FMC_ISPTRG_T;

typedef volatile const uint32_t FMC_DFBADR_T;

typedef struct
{
    volatile uint32_t  FPSEN:1;
    volatile uint32_t  FATS:3;
	volatile uint32_t  L_SPEED:1;
    volatile const  uint32_t  RESERVE:27;
} FMC_FATCON_T;

typedef struct
{
    FMC_ISPCON_T ISPCON;
    FMC_ISPADR_T ISPADR;
    FMC_ISPDAT_T ISPDAT;
    FMC_ISPCMD_T ISPCMD;
    FMC_ISPTRG_T ISPTRG;
    FMC_DFBADR_T DFBADR;
    FMC_FATCON_T FATCON;
} FMC_T;


 
typedef struct
{
    volatile uint32_t  PS2EN:1;
    volatile uint32_t  TXINTEN:1;
    volatile uint32_t  RXINTEN:1;
    volatile uint32_t  TXFIFO_DEPTH:4;
    volatile uint32_t  ACK:1;
    volatile uint32_t  CLRFIFO:1;
    volatile uint32_t  OVERRIDE:1;
    volatile uint32_t  FPS2CLK:1;
    volatile uint32_t  FPS2DAT:1;
    volatile const  uint32_t  RESERVE:20;
} PS2_CON_T;

typedef volatile uint32_t PS2_DATA_T;

typedef struct
{
    volatile uint32_t  PS2CLK:1;
    volatile uint32_t  PS2DATA:1;
    volatile uint32_t  FRAMERR:1;
    volatile uint32_t  RXPARTY:1;
    volatile uint32_t  RXBUSY:1;
    volatile uint32_t  TXBUSY:1;
    volatile uint32_t  RXOVF:1;
    volatile uint32_t  TXEMPTY:1;
    volatile uint32_t  BYTEIDX:4;
    volatile const  uint32_t  RESERVE:20;
} PS2_STATUS_T;

typedef volatile uint32_t PS2_INTID_T;

typedef struct
{
    PS2_CON_T       PS2CON;
    PS2_DATA_T      TXDATA[4];
    PS2_DATA_T      RXDATA;
    PS2_STATUS_T    STATUS;
    PS2_INTID_T     INTID;
} PS2_T;

 
typedef struct
{
    volatile uint32_t  RSTM:1;
	volatile uint32_t  LOM:1;
    volatile const  uint32_t  RESERVE:30;
    
} CAN_OPMODE_T;

typedef struct
{
    volatile uint32_t  TXREQ:1;
	volatile uint32_t  ABRT:1;
    volatile const  uint32_t  RESERVE2:3;
	volatile uint32_t  OVERFLOAD_EN:1;
	volatile uint32_t  WAKEUP_EN:1;
    volatile uint32_t  CAN_EN:1;
    volatile const  uint32_t  RESERVE:24;
} CAN_CMD_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:3;
    volatile uint32_t  TXCOMPLET:1;
    volatile uint32_t  RXSTS:1;
    volatile uint32_t  TXSTS:1;
    volatile uint32_t  BUSIDLE:1;
    volatile uint32_t  BUSOFF:1;
    volatile uint32_t  EACTIVE:1;
    volatile uint32_t  EPASSIVE:1;
    volatile const  uint32_t  RESERVE1:22;
} CAN_BUSSTS_T;

typedef struct
{
    volatile uint32_t  RI:1;
    volatile uint32_t  TI:1;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  WUI:1;
    volatile const  uint32_t  RESERVE1:1;
    volatile uint32_t  ALI:1;
    volatile uint32_t  BEI:1;
    volatile const  uint32_t  RESERVE2:24;
} CAN_INTR_T;

typedef struct
{
    volatile uint32_t  RIE:1;
    volatile uint32_t  TIE:1;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  WUIE:1;
    volatile const  uint32_t  RESERVE1:1;
    volatile uint32_t  ALIE:1;
    volatile uint32_t  BEIE:1;
    volatile const  uint32_t  RESERVE2:24;
} CAN_INTEN_T;

typedef struct
{
    volatile uint32_t  BRP:4;
    volatile uint32_t  SJW:2;
    volatile uint32_t  TSEG1:5;
    volatile uint32_t  TSEG2:4;
    volatile uint32_t  SAMP:1;
    volatile const  uint32_t  RESERVE2:16;
} CAN_BTIMR_T;

typedef struct
{
    volatile const uint32_t  BIT_ERR:1;
    volatile const uint32_t  ACK_ERR:1;
    volatile const uint32_t  CRC_ERR:1;
    volatile const uint32_t  FORM_ERR:1;
    volatile const uint32_t  STUFF_ERR:1;
	volatile const uint32_t  ID11_NM:1;
	volatile const uint32_t  ID18_NM:1;
    volatile const  uint32_t  RESERVE:25;
} CAN_ERRCR_T;

typedef struct
{
    volatile uint32_t  RECNT:8;
    volatile const  uint32_t  RESERVE:24;
} CAN_RECNTR_T;

typedef struct
{
    volatile uint32_t  TECNT:8;
    volatile const  uint32_t  RESERVE:24;
} CAN_TECNTR_T;

typedef struct
{
    volatile uint32_t  TXDLC:6;
    volatile uint32_t  TXRTR:1;
    volatile uint32_t  TXFF:1;
    volatile const  uint32_t  RESERVE:24;
} CAN_TXFINFO_T;

typedef struct
{
    volatile const  uint32_t  RESERVE:3;
    volatile uint32_t  TXID:29;
} CAN_TXIDR_T;

typedef volatile uint32_t CAN_TXDATA_T;

typedef struct
{
    volatile uint32_t  RXDLC:4;
    volatile const  uint32_t  RESERVE0:2;
    volatile uint32_t  RXRTR:1;
    volatile uint32_t  RXIDE:1;
    volatile const  uint32_t  RESERVE1:24;
} CAN_RXFINFO_T;

typedef struct
{
    volatile const  uint32_t  RESERVE:3;
    volatile uint32_t  RXID:29;
} CAN_RXIDR_T;

typedef volatile uint32_t CAN_RXDATA_T;

typedef struct
{
    volatile const  uint32_t  RESERVE:3;
    volatile uint32_t  ACRID:29;
} CAN_ACR_T;

typedef struct
{
    volatile const  uint32_t  RESERVE:3;
    volatile uint32_t  AMRID:29;
} CAN_AMR_T;


typedef struct
{
    volatile const  uint32_t  RESERVE:32;
} CAN_RESERVE_T;

typedef struct
{
    CAN_OPMODE_T    OPMODE;
    CAN_CMD_T       CMD;
	CAN_BUSSTS_T    BUSSTS;    
	CAN_INTR_T      INTR;

    CAN_INTEN_T     INTEN;
    CAN_BTIMR_T     BTIMR;
	CAN_RESERVE_T	PROTECT[2];

    CAN_ERRCR_T     ERRCR;
	CAN_RESERVE_T	PROTECT1;
    CAN_RECNTR_T    RECNTR;
    CAN_TECNTR_T    TECNTR;

    CAN_TXFINFO_T   TXFINFO;
    CAN_TXIDR_T     TXIDR;
    CAN_TXDATA_T    TXDATA[2];

    CAN_RXFINFO_T   RXFINFO;
    CAN_RXIDR_T     RXIDR;
    CAN_RXDATA_T    RX_DATA[2];
    CAN_ACR_T       ACR;
    CAN_AMR_T       AMR;    
} CAN_T;


 
typedef struct
{
    volatile uint32_t  BUS:1;
    volatile uint32_t  USB:1;
    volatile uint32_t  FLD:1;
    volatile uint32_t  WAKEUP:1;
    volatile const  uint32_t  RESERVE0:4;
    volatile uint32_t  WAKEUP_EN:1;
    volatile const  uint32_t  RESERVE1:6;
    volatile uint32_t  INNAK_EN:1;
    volatile const  uint32_t  RESERVE2:16;
} USBD_INTEN_T;

typedef struct
{
    volatile uint32_t  BUS:1;
    volatile uint32_t  USB:1;
    volatile uint32_t  FLD:1;
    volatile uint32_t  WAKEUP:1;
    volatile const  uint32_t  RESERVE0:12;
    volatile uint32_t  EPTF:6;
    volatile const  uint32_t  RESERVE1:9;
    volatile uint32_t  SETUP:1;
} USBD_INTSTS_T;

typedef struct
{
    volatile uint32_t  FADDR:7;
    volatile const  uint32_t  RESERVE:25;
} USBD_FADDR_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:7;
    volatile uint32_t  OVERRUN:1;
    volatile uint32_t  EPSTS0:3;
    volatile uint32_t  EPSTS1:3;
    volatile uint32_t  EPSTS2:3;
    volatile uint32_t  EPSTS3:3;
    volatile uint32_t  EPSTS4:3;
    volatile uint32_t  EPSTS5:3;
    volatile const  uint32_t  RESERVE1:6;
} USBD_EPSTS_T;



typedef struct
{
    volatile uint32_t  USBRST:1;
    volatile uint32_t  SUSPEND:1;
    volatile uint32_t  RESUME:1;
    volatile uint32_t  TIMEOUT:1;
    volatile uint32_t  PHY_EN:1;
    volatile uint32_t  RWAKEUP:1;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  USB_EN:1;
	volatile uint32_t  DPPU_EN:1;
	volatile uint32_t  PDB:1;
    volatile const  uint32_t  RESERVE1:22;
} USBD_ATTR_T;



typedef struct
{
    volatile uint32_t  FLDET:1;
    volatile const  uint32_t  RESERVE:31;
} USBD_FLDET_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:3;
    volatile uint32_t  BUFSEG:6;
    volatile const  uint32_t  RESERVE:23;
} USBD_BUFSEG_T;

typedef struct
{
    volatile uint32_t  MXPLD:9;
    volatile const  uint32_t  RESERVE:23;
} USBD_MXPLD_T;

typedef struct
{
    volatile uint32_t  EPT:4;
    volatile uint32_t  ISOCH:1;
    volatile uint32_t  STATE:2;
    volatile uint32_t  DSQ:1;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  STALL_CTL:1;
    volatile const  uint32_t  RESERVE1:22;
} USBD_CFG_T;

typedef struct
{
    volatile uint32_t  CFGP:1;
    volatile uint32_t  STALL:1;
    volatile const  uint32_t  RESERVE:30;
} USBD_CFGP_T;

typedef struct
{
    volatile uint32_t  DRVSE0:1;
    volatile const  uint32_t  RESERVE:31;
} USBD_DRVSE0_T;

typedef struct
{
    volatile uint32_t  PDMA_RW:1;
    volatile uint32_t  PDMA_EN:1;
    volatile const  uint32_t  RESERVE:30;
} USBD_PDMA_T;


typedef struct
{
    USBD_BUFSEG_T   BUFSEG;
    USBD_MXPLD_T    MXPLD;
    USBD_CFG_T      CFG;
    USBD_CFGP_T     CFGP;
} USBD_EP_T;

typedef struct
{
    USBD_INTEN_T    INTEN;			
    USBD_INTSTS_T   INTSTS;			
    USBD_FADDR_T    FADDR;			
    USBD_EPSTS_T    EPSTS;
    USBD_ATTR_T     ATTR;
    USBD_FLDET_T    FLDET;
    USBD_BUFSEG_T   BUFSEG;
    uint32_t        RESERVE0;
	USBD_EP_T       EP[6];
    uint32_t        RESERVE1[4];
	USBD_DRVSE0_T   DRVSE0;
    uint32_t        RESERVE2[4];
    USBD_PDMA_T     PDMA;
} USBD_T;


 
typedef struct
{
    volatile uint32_t  PDMACEN:1;
    volatile uint32_t  SW_RST:1;
    volatile uint32_t  MODE_SEL:2;
    volatile uint32_t  SAD_SEL:2;
    volatile uint32_t  DAD_SEL:2;
    volatile const  uint32_t  RESERVE0:4;
    volatile uint32_t  WAR_BCR_SEL:4;
    volatile const  uint32_t  RESERVE1:3;
    volatile uint32_t  APB_TWS:2;
    volatile const  uint32_t  RESERVE2:2;
    volatile uint32_t  TRIG_EN:1;
    volatile const  uint32_t  RESERVE3:8;
} PDMA_CSR_T;

typedef volatile uint32_t PDMA_SAR_T;
typedef volatile uint32_t PDMA_DAR_T;

typedef volatile uint32_t PDMA_BCR_T;

typedef volatile uint32_t PDMA_CSAR_T;
typedef volatile uint32_t PDMA_CDAR_T;

typedef struct
{
    volatile uint32_t  CBCR:24;
    volatile const  uint32_t  RESERVE:8;
} PDMA_CBCR_T;

typedef struct
{
    volatile uint32_t  TABORT_IE:1;
    volatile uint32_t  BLKD_IE:1;
    volatile const  uint32_t  RESERVE:30;
} PDMA_IER_T;

typedef struct
{
    volatile uint32_t  TABORT_IF:1;
    volatile uint32_t  BLKD_IF:1;
	volatile const  uint32_t  RESERVE:30;
} PDMA_ISR_T;

typedef volatile uint32_t PDMA_SBUF_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:8;
    volatile uint32_t  CLK0_EN:1;
    volatile uint32_t  CLK1_EN:1;
    volatile uint32_t  CLK2_EN:1;
    volatile uint32_t  CLK3_EN:1;
    volatile uint32_t  CLK4_EN:1;
    volatile uint32_t  CLK5_EN:1;
    volatile uint32_t  CLK6_EN:1;
    volatile uint32_t  CLK7_EN:1;
    volatile uint32_t  CLK8_EN:1;
    volatile const  uint32_t  RESERVE1:15;
} PDMA_GCRCSR_T;


typedef struct
{
    volatile uint32_t  SPI0_RXSEL:4;
    volatile uint32_t  SPI0_TXSEL:4;
    volatile uint32_t  SPI1_RXSEL:4;
    volatile uint32_t  SPI1_TXSEL:4;
    volatile uint32_t  SPI2_RXSEL:4;
    volatile uint32_t  SPI2_TXSEL:4;
    volatile uint32_t  SPI3_RXSEL:4;
    volatile uint32_t  SPI3_TXSEL:4;
} PDMA_PDSSR0_T;


typedef struct
{
    volatile uint32_t  UART0_RXSEL:4;
    volatile uint32_t  UART0_TXSEL:4;
    volatile uint32_t  UART1_RXSEL:4;
    volatile uint32_t  UART1_TXSEL:4;
    volatile uint32_t  USBD_RXSEL:4;
    volatile uint32_t  USBD_TXSEL:4;
    volatile uint32_t  ADC_RXSEL:4;
    volatile uint32_t  ADC_TXSEL:4;
} PDMA_PDSSR1_T;
                                                        

typedef struct
{
    volatile const uint32_t  INTR0:1;
	volatile const uint32_t  INTR1:1;
	volatile const uint32_t  INTR2:1;
	volatile const uint32_t  INTR3:1;
	volatile const uint32_t  INTR4:1;
	volatile const uint32_t  INTR5:1;
	volatile const uint32_t  INTR6:1;
	volatile const uint32_t  INTR7:1;
	volatile const uint32_t  INTR8:1;
    volatile const uint32_t  RESERVED:22;
	volatile const uint32_t  INTR:1;
} PDMA_GCRISR_T;


typedef struct
{
    volatile uint32_t  I2S_RXSEL:4;
    volatile uint32_t  I2S_TXSEL:4;
    volatile const  uint32_t  RESERVED:24;
} PDMA_PDSSR2_T;


typedef struct
{
    PDMA_GCRCSR_T   GCRCSR;
    PDMA_PDSSR0_T   PDSSR0;
    PDMA_PDSSR1_T   PDSSR1;  
    PDMA_GCRISR_T   GCRISR;  
	PDMA_PDSSR2_T   PDSSR2;   
} PDMA_GCR_T;

typedef struct 
{
    PDMA_CSR_T      CSR;
    PDMA_SAR_T      SAR;
    PDMA_DAR_T      DAR;
    PDMA_BCR_T      BCR;
    uint32_t        POINT;
    PDMA_CSAR_T     CSAR;
    PDMA_CDAR_T     CDAR;
    PDMA_CBCR_T     CBCR;
    PDMA_IER_T      IER;
    PDMA_ISR_T      ISR;
    PDMA_SBUF_T     SBUF[4];
} PDMA_T;

 
typedef struct
{
    volatile uint32_t  CP01:8;
    volatile uint32_t  CP23:8;
    volatile uint32_t  DZI01:8;
    volatile uint32_t  DZI23:8;
} PWM_PPR_T;

typedef struct
{
    volatile uint32_t  CSR0:3;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  CSR1:3;
    volatile const  uint32_t  RESERVE1:1;
    volatile uint32_t  CSR2:3;
    volatile const  uint32_t  RESERVE2:1;
    volatile uint32_t  CSR3:3;
    volatile const  uint32_t  RESERVE3:17;
} PWM_CSR_T;

typedef struct
{
    volatile uint32_t  CH0EN:1;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  CH0INV:1;
    volatile uint32_t  CH0MOD:1;
    volatile uint32_t  DZEN01:1;
    volatile uint32_t  DZEN23:1;
    volatile const  uint32_t  RESERVE1:2;
    volatile uint32_t  CH1EN:1;
    volatile const  uint32_t  RESERVE2:1;
    volatile uint32_t  CH1INV:1;
    volatile uint32_t  CH1MOD:1;
    volatile const  uint32_t  RESERVE3:4;
    volatile uint32_t  CH2EN:1;
    volatile const  uint32_t  RESERVE4:1;
    volatile uint32_t  CH2INV:1;
    volatile uint32_t  CH2MOD:1;
    volatile const  uint32_t  RESERVE5:4;
    volatile uint32_t  CH3EN:1;
    volatile const  uint32_t  RESERVE6:1;
    volatile uint32_t  CH3INV:1;
    volatile uint32_t  CH3MOD:1;
    volatile const  uint32_t  RESERVE7:4;   
} PWM_PCR_T;

typedef volatile uint32_t PWM_CNR_T;

typedef volatile uint32_t PWM_CMR_T;

typedef volatile uint32_t PWM_PDR_T;

typedef struct
{
    volatile uint32_t  BCn:1;
	volatile const  uint32_t  RESERVE:31;
} PWM_PBCR_T;


typedef struct
{
    volatile uint32_t  PWMIE0:1;
    volatile uint32_t  PWMIE1:1;
    volatile uint32_t  PWMIE2:1;
    volatile uint32_t  PWMIE3:1;
	volatile const  uint32_t  RESERVE:28;
} PWM_PIER_T;

typedef struct
{
    volatile uint32_t  PWMIF0:1;
    volatile uint32_t  PWMIF1:1;
    volatile uint32_t  PWMIF2:1;
    volatile uint32_t  PWMIF3:1;
	volatile const  uint32_t  RESERVE:28;
} PWM_PIIR_T;

typedef struct
{
    volatile uint32_t  INV0:1;
    volatile uint32_t  CRL_IE0:1;
    volatile uint32_t  CFL_IE0:1;
    volatile uint32_t  CAPCH0EN:1;
    volatile uint32_t  CAPIF0:1;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  CRLRI0:1;
    volatile uint32_t  CFLRI0:1;
    volatile const  uint32_t  RESERVE1:8;
    volatile uint32_t  INV1:1;
    volatile uint32_t  CRL_IE1:1;
    volatile uint32_t  CFL_IE1:1;
    volatile uint32_t  CAPCH1EN:1;
    volatile uint32_t  CAPIF1:1;
    volatile const  uint32_t  RESERVE2:1;
    volatile uint32_t  CRLRI1:1;
    volatile uint32_t  CFLRI1:1;
    volatile const  uint32_t  RESERVE3:8;
} PWM_CCR0_T;


typedef struct
{
    volatile uint32_t  INV2:1;
    volatile uint32_t  CRL_IE2:1;
    volatile uint32_t  CFL_IE2:1;
    volatile uint32_t  CAPCH2EN:1;
    volatile uint32_t  CAPIF2:1;
    volatile const  uint32_t  RESERVE0:1;
    volatile uint32_t  CRLRI2:1;
    volatile uint32_t  CFLRI2:1;
    volatile const  uint32_t  RESERVE1:8;
    volatile uint32_t  INV3:1;
    volatile uint32_t  CRL_IE3:1;
    volatile uint32_t  CFL_IE3:1;
    volatile uint32_t  CAPCH3EN:1;
    volatile uint32_t  CAPIF3:1;
    volatile const  uint32_t  RESERVE2:1;
    volatile uint32_t  CRLRI3:1;
    volatile uint32_t  CFLRI3:1;
    volatile const  uint32_t  RESERVE3:8;
} PWM_CCR2_T;

typedef volatile uint32_t PWM_CRLR_T;

typedef volatile uint32_t PWM_CFLR_T;

typedef volatile uint32_t PWM_CAPENR_T;

typedef struct
{
    volatile uint32_t  PWM0:1;
    volatile uint32_t  PWM1:1;
    volatile uint32_t  PWM2:1;
    volatile uint32_t  PWM3:1;
	volatile const  uint32_t  RESERVE:28;
} PWM_POE_T;


typedef struct
{
    PWM_PPR_T       PPR;
    PWM_CSR_T       CSR;
    PWM_PCR_T       PCR;
    PWM_CNR_T       CNR0;
    PWM_CMR_T       CMR0;
    PWM_PDR_T       PDR0;
    PWM_CNR_T       CNR1;
    PWM_CMR_T       CMR1;
    PWM_PDR_T       PDR1;
    PWM_CNR_T       CNR2;
    PWM_CMR_T       CMR2;
    PWM_PDR_T       PDR2;
    PWM_CNR_T       CNR3;
    PWM_CMR_T       CMR3;
    PWM_PDR_T       PDR3;
	PWM_PBCR_T		PBCR;
    PWM_PIER_T      PIER;
    PWM_PIIR_T      PIIR;
    volatile const uint32_t    RESERVE1[2];
    PWM_CCR0_T      CCR0;
    PWM_CCR2_T      CCR2;
    PWM_CRLR_T      CRLR0;
    PWM_CFLR_T      CFLR0;
    PWM_CRLR_T      CRLR1;
    PWM_CFLR_T      CFLR1;
    PWM_CRLR_T      CRLR2;
    PWM_CFLR_T      CFLR2;
    PWM_CRLR_T      CRLR3;
    PWM_CFLR_T      CFLR3;
    PWM_CAPENR_T    CAPENR;
    PWM_POE_T       POE;    
        
    
} PWM_T;

 

typedef struct
{
    volatile uint32_t  I2SEN:1;
    volatile uint32_t  TXEN:1;
    volatile uint32_t  RXEN:1;
    volatile uint32_t  MUTE:1;
    volatile uint32_t  WORDWIDTH:2;
    volatile uint32_t  MONO:1;
    volatile uint32_t  FORMAT:1;
    volatile uint32_t  SLAVE:1;
    volatile uint32_t  TXTH:3;
	volatile uint32_t  RXTH:3;
	volatile uint32_t  MCLKEN:1;
    volatile uint32_t  RCHZCEN:1;
    volatile uint32_t  LCHZCEN:1;
    volatile uint32_t  CLR_TXFIFO:1;
    volatile uint32_t  CLR_RXFIFO:1;
	volatile uint32_t  TXDMA:1;
	volatile uint32_t  RXDMA:1;	
	volatile const  uint32_t  RESERVE:10;
} I2S_CON_T;

typedef struct
{
    volatile uint32_t  MCLK_DIV:3;
    volatile const  uint32_t  RESERVE0:5;
	volatile uint32_t  BCLK_DIV:8;
    volatile const  uint32_t  RESERVE1:16;
} I2S_CLKDIV_T;

typedef struct
{
    volatile uint32_t  RXUDFIE:1;
	volatile uint32_t  RXOVFIE:1;
	volatile uint32_t  RXTHIE:1;
    volatile const  uint32_t  RESERVE0:5;
	volatile uint32_t  TXUDFIE:1;
	volatile uint32_t  TXOVFIE:1;
	volatile uint32_t  TXTHIE:1;
	volatile uint32_t  RZCIE:1;
	volatile uint32_t  LZCIE:1;
    volatile const  uint32_t  RESERVE1:19;
} I2S_IE_T;

typedef struct
{
    volatile const  uint32_t  I2SINT:1;
	volatile const  uint32_t  I2SRXINT:1;
	volatile const  uint32_t  I2STXINT:1;
	volatile const  uint32_t  RIGHT:1;
    volatile const  uint32_t  RESERVE0:4;
	volatile uint32_t  RXUDF:1;
	volatile uint32_t  RXOVF:1;
	volatile const  uint32_t  RXTHF:1;
	volatile const  uint32_t  RXFULL:1;
	volatile const  uint32_t  RXEMPTY:1;
	volatile const  uint32_t  RESERVE1:3;
	volatile uint32_t  TXUDF:1;
	volatile uint32_t  TXOVF:1;
	volatile const  uint32_t  TXTHF:1;
	volatile const  uint32_t  TXFULL:1;
	volatile const  uint32_t  TXEMPTY:1;
	volatile const  uint32_t  TXBUSY:1;
	volatile const  uint32_t  RZCF:1;
	volatile const  uint32_t  LZCF:1;	
	volatile const  uint32_t  RX_LEVEL:4;
	volatile const  uint32_t  TX_LEVEL:4;
} I2S_STATUS_T;

typedef volatile uint32_t I2S_TXFIFO_T;
typedef volatile const uint32_t I2S_RXFIFO_T;

typedef struct
{
    I2S_CON_T        CON;
	I2S_CLKDIV_T     CLKDIV;
    I2S_IE_T      	 IE;
    I2S_STATUS_T     STATUS;
    I2S_TXFIFO_T     TXFIFO;
	I2S_RXFIFO_T     RXFIFO;
} I2S_T;

 
typedef struct
{
    volatile uint32_t  ExtEN:1;
    volatile uint32_t  ExtBW16:1;
    volatile const  uint32_t  RESERVE0:6;
    volatile uint32_t  MCLKDIV:3;
    volatile const  uint32_t  RESERVE1:5;
    volatile uint32_t  ExttALE:3;
    volatile const  uint32_t  RESERVE2:5;
    volatile const  uint32_t  RESERVE3:8;
} EBI_CON_T;

typedef struct
{
    volatile const  uint32_t  RESERVE0:3;
    volatile uint32_t  ExttACC:5;
    volatile uint32_t  ExttAHD:3;
    volatile const  uint32_t  RESERVE1:1;
	volatile uint32_t  ExtIW2X:4;
	volatile uint32_t  ExtIR2W:4;
    volatile const  uint32_t  RESERVE2:4;
	volatile uint32_t  ExtIR2R:4;
    volatile const  uint32_t  RESERVE3:4;
} EBI_TIME_T;

typedef struct
{
    EBI_CON_T       CON;
    EBI_TIME_T      TIME;
} EBI_T;

 
 
 
 






 


#line 2017 "..\\CMSIS\\NUC1xx\\NUC1xx.h"










































#line 2072 "..\\CMSIS\\NUC1xx\\NUC1xx.h"








 
 
 
#line 2090 "..\\CMSIS\\NUC1xx\\NUC1xx.h"











































#line 2144 "..\\CMSIS\\NUC1xx\\NUC1xx.h"













typedef volatile unsigned char  vu8;
typedef volatile unsigned long  vu32;
typedef volatile unsigned short vu16;




#line 2170 "..\\CMSIS\\NUC1xx\\NUC1xx.h"

#line 2177 "..\\CMSIS\\NUC1xx\\NUC1xx.h"













 
#line 2223 "..\\CMSIS\\NUC1xx\\NUC1xx.h"


                                                                                                 
#line 10 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"







 
 
 




 














 
#line 73 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"

#line 80 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"

#line 92 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"

#line 103 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"

#line 111 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"




#line 122 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"





#line 137 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"

 

	
 


 


 

		
 


 


 






 

	
 


 


 


 	


 


 	


 


 














 	

 
 


 


 







 
 
 
 




 





#line 241 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"


 
 
 
#line 253 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"
 



 
 
 




 


 




 
 
 



#line 284 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"

#line 291 "..\\BSP_Lib\\Inc\\Driver\\DrvUSB.h"
	
 
 
 
typedef enum
{
	eDRVUSB_DETACHED 	= 0,
	eDRVUSB_ATTACHED 	= 0x00000001,
	eDRVUSB_POWERED 	= eDRVUSB_ATTACHED + 0x00000002,
	eDRVUSB_DEFAULT 	= eDRVUSB_POWERED  + 0x00000004,
	eDRVUSB_ADDRESS 	= eDRVUSB_DEFAULT  + 0x00000008,
	eDRVUSB_CONFIGURED 	= eDRVUSB_ADDRESS  + 0x00000010,
	eDRVUSB_SUSPENDED 	= 0x00000020

} E_DRVUSB_STATE;


 
 
 
typedef struct
{
	uint8_t byLength;
	uint8_t byDescType;
	uint16_t au16UnicodeString[100];
	
} S_DRVUSB_STRING_DESC;

typedef S_DRVUSB_STRING_DESC	S_STRING_DESC;

typedef struct
{
	uint16_t u16VendorId;
	uint16_t u16ProductId;
	const S_DRVUSB_STRING_DESC *psVendorStringDesc;
	const S_DRVUSB_STRING_DESC *psProductStringDesc;

} S_DRVUSB_VENDOR_INFO;

typedef S_DRVUSB_VENDOR_INFO	S_VENDOR_INFO;


 
 
 
typedef void (*PFN_DRVUSB_ATTACH_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_DETACH_CALLBACK)(void *);

typedef void (*PFN_DRVUSB_BUS_RESET_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_BUS_SUSPEND_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_BUS_RESUME_CALLBACK)(void *);

typedef void (*PFN_DRVUSB_SETUP_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_EP_IN_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_EP_OUT_CALLBACK)(void *);

typedef void (*PFN_DRVUSB_CTRL_SETUP_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_CTRL_DATA_IN_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_CTRL_DATA_OUT_CALLBACK)(void *);


 
 
 
typedef void (*PFN_DRVUSB_ISR_ATTACH_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_ISR_DETACH_CALLBACK)(void *);

typedef void (*PFN_DRVUSB_ISR_BUS_RESET_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_ISR_BUS_SUSPEND_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_ISR_BUS_RESUME_CALLBACK)(void *);

typedef void (*PFN_DRVUSB_ISR_SETUP_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_ISR_EP_IN_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_ISR_EP_OUT_CALLBACK)(void *);

typedef void (*PFN_DRVUSB_CALLBACK)(void *);
typedef void (*PFN_DRVUSB_INTCALLBACK)(void *);
typedef int32_t (*PFN_DRVUSB_COMPARE)(uint8_t);


 
 
 
typedef struct
{
	uint8_t u8RequestType;
	uint8_t u8Request;
	PFN_DRVUSB_CTRL_SETUP_CALLBACK 		pfnCtrlSetupCallback;
	PFN_DRVUSB_CTRL_DATA_IN_CALLBACK	pfnCtrlDataInCallback;
	PFN_DRVUSB_CTRL_DATA_OUT_CALLBACK	pfnCtrlDataOutCallback;
	void *								pVoid;
} S_DRVUSB_CTRL_CALLBACK_ENTRY;

typedef struct
{
	int32_t 							bReg;
	S_DRVUSB_CTRL_CALLBACK_ENTRY 		sCtrlCallbackEntry;
} S_DRVUSB_CTRL_CALLBACK_ENTRY_REG;


 
 
 
typedef struct
{
	uint32_t u32EpNum;
	uint32_t u32MaxPacketSize; 
	uint8_t *u8SramBuffer;
}S_DRVUSB_EP_CTRL;


 
 
 
typedef struct
{
	PFN_DRVUSB_CALLBACK	apfnCallback;
	void *				apCallbackArgu;
}S_DRVUSB_EVENT_PROCESS;


 
 
 
 
typedef struct
{
	void * device;
	PFN_DRVUSB_CALLBACK pfnStart;        
	PFN_DRVUSB_COMPARE  pfnCompare;
	void * pVoid;
}S_DRVUSB_CLASS;


 
 
 
typedef struct
{
	uint32_t u32ATTR;
	uint32_t u32EPSTS;
	uint32_t u32FLDET;
	uint32_t u32INTSTS;

	int32_t  abData0[6];   
	S_DRVUSB_EP_CTRL sEpCrl[6+1];
	int32_t  eUsbState;	  		   

	uint16_t u16MiscEventFlags;

	uint16_t u16EPEventFlags;

	S_DRVUSB_CTRL_CALLBACK_ENTRY 	*pCtrlCallback;
	uint32_t CtrlCallbackSize;
	uint8_t  au8Setup[8];
	uint8_t  u8UsbAddress;
	uint8_t  u8UsbConfiguration;
		
	int32_t  bSelfPowered;	 
	int32_t  bRemoteWakeup;	 
	uint8_t  u8MaxPower;		 
		
	S_DRVUSB_CLASS *psUsbClass;
} S_DRVUSB_DEVICE;


 
extern S_DRVUSB_EP_CTRL sEpDescription[];
 
extern S_DRVUSB_EVENT_PROCESS g_sBusOps[];
 
extern S_DRVUSB_EVENT_PROCESS g_sUsbOps[];
extern uint32_t	CFG_EP_SETTING[6];	 
extern PFN_DRVUSB_INTCALLBACK g_FnIntCallBack;	 
extern S_DRVUSB_DEVICE gsUsbDevice;


 
 
 
 
int32_t DrvUSB_IsData0Out(uint32_t u32EpId);

 
E_DRVUSB_STATE DrvUSB_GetUsbState(void);

 
void DrvUSB_SetUsbState(E_DRVUSB_STATE eUsbState);


 
 
 







 
 
 
uint32_t DrvUSB_GetVersion(void);
int32_t  DrvUSB_Open(void * pVoid);
void 	 DrvUSB_PreDispatchEvent(void);
void 	 DrvUSB_DispatchEvent(void);
void 	 DrvUSB_Close(void);
void 	 DrvUSB_BusResetCallback(void * pVoid);
uint32_t DrvUSB_GetSetupBuffer(void);
void *   DrvUSB_InstallClassDevice(S_DRVUSB_CLASS *sUsbClass);
int32_t  DrvUSB_InstallCtrlHandler(void * *device, S_DRVUSB_CTRL_CALLBACK_ENTRY *psCtrlCallbackEntry, uint32_t u32RegCnt);
int32_t  DrvUSB_DataOutTrigger(uint32_t u32EpNum, uint32_t u32Size);
uint8_t* DrvUSB_GetOutData(uint32_t u32EpNum, uint32_t *u32Size);
int32_t  DrvUSB_DataIn(uint32_t u32EpNum, const uint8_t * u8Buffer, uint32_t u32Size);
void 	 DrvUSB_CtrlSetupAck(void * pArgu);
void 	 DrvUSB_CtrlDataInAck(void * pArgu);
void 	 DrvUSB_CtrlDataOutAck(void * pArgu);
void 	 DrvUSB_ClrCtrlReady(void);
void  	 DrvUSB_ClrCtrlReadyAndTrigStall(void);
void 	 DrvUSB_CtrlDataInDefault(void * pVoid);
void 	 DrvUSB_CtrlDataOutDefault(void * pVoid);
void 	 DrvUSB_Reset(uint32_t u32EpNum);
int32_t DrvUSB_GetEpId(uint32_t u32EpNum);
int32_t DrvUSB_GetEpIdentity(uint32_t u32EpNum, uint32_t u32EPAttr);
void 	 DrvUSB_EnableRemoteWakeup(void);
void 	 DrvUSB_DisableRemoteWakeup(void);
void 	 DrvUSB_EnableSelfPower (void);
void 	 DrvUSB_DisableSelfPower (void);
int32_t  DrvUSB_IsSelfPowerEnabled (void);			 
void 	 DrvUSB_EnableRemoteWakeup(void);
void 	 DrvUSB_DisableRemoteWakeup(void);
int32_t  DrvUSB_IsRemoteWakeupEnabled (void);		 
int32_t  DrvUSB_SetMaxPower(uint32_t u32MaxPower);	 
int32_t  DrvUSB_GetMaxPower(void);					 

void DrvUSB_CtrlSetupSetAddress(void * pVoid);
void DrvUSB_CtrlSetupClearSetFeature(void * pVoid);
void DrvUSB_CtrlSetupGetConfiguration(void * pVoid);
void DrvUSB_CtrlSetupGetStatus(void * pVoid);
void DrvUSB_CtrlSetupGetInterface(void * pVoid);
void DrvUSB_CtrlSetupSetInterface(void * pVoid);
void DrvUSB_CtrlSetupSetConfiguration(void * pVoid);
void DrvUSB_CtrlDataInSetAddress(void * pVoid);

uint32_t DrvUSB_GetVersion(void);
int32_t DrvUSB_IsData0(uint32_t u32EpId);

void DrvUSB_EnableUsb(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_DisableUsb(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_PreDispatchWakeupEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_PreDispatchFDTEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_PreDispatchEPEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_PreDispatchBusEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_DispatchWakeupEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_DispatchMiscEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_DispatchEPEvent(S_DRVUSB_DEVICE *psDevice);
void DrvUSB_memcpy(uint8_t *pi8Dest, uint8_t *pi8Src, uint32_t u32Size);
uint32_t DrvUSB_GetFreeSRAM(void);
	








#line 9 "..\\BSP_Lib\\Src\\USB\\MassStorage.c"
#line 1 "..\\BSP_Lib\\Inc\\USB\\UDC.h"
 
 
 
 
 




#line 11 "..\\BSP_Lib\\Inc\\USB\\UDC.h"
#line 12 "..\\BSP_Lib\\Inc\\USB\\UDC.h"





#line 28 "..\\BSP_Lib\\Inc\\USB\\UDC.h"




#line 38 "..\\BSP_Lib\\Inc\\USB\\UDC.h"

#line 46 "..\\BSP_Lib\\Inc\\USB\\UDC.h"

#line 55 "..\\BSP_Lib\\Inc\\USB\\UDC.h"



#line 69 "..\\BSP_Lib\\Inc\\USB\\UDC.h"






















#line 99 "..\\BSP_Lib\\Inc\\USB\\UDC.h"


#line 108 "..\\BSP_Lib\\Inc\\USB\\UDC.h"



























































						

















#line 199 "..\\BSP_Lib\\Inc\\USB\\UDC.h"


 
struct CBW
{
	uint32_t	dCBWSignature;
	uint32_t	dCBWTag;
	uint32_t	dCBWDataTransferLength;
	uint8_t		bmCBWFlags;
	uint8_t		bCBWLUN;
	uint8_t		bCBWCBLength;
	uint8_t		u8OPCode;
	uint8_t		u8LUN;
	uint8_t		au8Data[14];
};

struct CSW
{
	uint32_t	dCSWSignature;
	uint32_t	dCSWTag;
	uint32_t	dCSWDataResidue;
	uint8_t		bCSWStatus;
};

typedef struct Disk_Par_Inf 
{
	uint32_t	partition_size,
				data_location,
				bpb_location,
				fat_location,
				rootdir_location,
				free_size;
	uint16_t	rootdirentryno,
				totalcluster,
				NumCyl;
	uint8_t		NumHead,
				NumSector,
				capacity,
				fatcopyno,
				fatsectorno,
				fat16flg;
} Disk_Par_Info;

 
extern uint8_t g_u8BulkState;
extern int32_t udcOnLine;
extern int32_t g_bIsFirstRead;
extern uint32_t usbDataReady;
extern uint8_t g_u8UsbState;

 
void ReqSenCommand(void);
void RdFmtCapCommand(void);
void RdCurCapCommand(void);
uint8_t udcFlashInit(void);

void udcInit(void);  
void udcMassBulk(void);

#line 10 "..\\BSP_Lib\\Src\\USB\\MassStorage.c"













int32_t gTotalSectors = 0;
int32_t g_dataFlashTotalSectors = 0;

uint8_t volatile MassLUN=0;
uint8_t volatile F_DATA_FLASH_LUN = 0xFF;

 
extern void DataFlashRead(uint32_t addr, uint32_t size, uint32_t buffer);
extern void DataFlashWrite(uint32_t addr, uint32_t size, uint32_t buffer);

 
uint8_t g_u8UsbState;
uint8_t g_u8Address;
uint8_t g_u8Config;
uint8_t g_u8Flag;
uint8_t g_u8BulkState;

uint8_t g_au8SenseKey[4];

uint32_t g_u32DataFlashStartAddr;
uint32_t g_u32Address;
uint32_t g_u32Length;
uint32_t g_u32LbaAddress;
uint32_t g_u32BytesInStorageBuf;
uint32_t g_u32OutToggle;	
uint8_t preventflag=0;
uint8_t g_u8Size;
int32_t g_bCBWInvalid;
int32_t udcOnLine = 0;

 
struct CBW g_sCBW;
struct CSW g_sCSW;

uint32_t MassBlock[48 / 4];
uint32_t Storage_Block[512 / 4];





static uint8_t ModePage_01[12] = {
	0x01, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
	0x03, 0x00, 0x00, 0x00 };

static uint8_t ModePage_05[32] = {
	0x05, 0x1E, 0x13, 0x88, 0x08, 0x20, 0x02, 0x00,
	0x01, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x05, 0x1E, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x68, 0x00, 0x00 };

static uint8_t ModePage_1B[12] = {
	0x1B, 0x0A, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00 };

static uint8_t ModePage_1C[8] = {
	0x1C, 0x06, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00 };


const uint8_t MassDeviceDescriptor[18] =
{
	18,		    
	0x01,	    
	0x10, 0x01,		    
	0x00,			    
	0x00,			    
	0x00,			    
	64,	
	(0x0416 & 0xFF), 
	(0x0416 >> 8),   
	(0x501E & 0xFF), 
	(0x501E >> 8),  
	0x00, 0x00,		    
	0x01,			    
	0x02,			    
	0x01,			    
	0x01			    
};

const uint8_t MassConfigurationBlock[9+9+7*2] =
{
	9,		                                        
	0x02,	                                        
	(9+9+7*2), 0x00,		
	0x01,			                                        
	0x01,			                                        
	0x00,			                                        
	0xC0,			                                        
	0x32,			                                        

 
	9,	
	0x04,	
	0x00,			
	0x00,			
	0x02,			
	0x08,			
	0x05,			
	0x50,			
	0x00,			

 
	7,	        
	0x05,	        
	0x82,			        
	0x02,		        
	64, 0x00,	
	0x00,			        

 
	7,	        
	0x05,	        
	0x03,			        
	0x02,		        
	64, 0x00,	
	0x00			        
};

const uint8_t MassStringDescriptor0[4] =
{
	4,				
	0x03,	
	0x09, 0x04
};

const uint8_t MassStringDescriptor1[16] =
{
	16,				
	0x03,	
	'N', 0, 'u', 0, 'v', 0, 'o', 0, 't', 0, 'o', 0, 'n', 0
};

const uint8_t InquiryID[36] = 
{
	0x00,					
	0x80,					
	0x00,					
	0x00,					
	0x1F, 0x00, 0x00, 0x00,	

	 
	'N', 'u', 'v', 'o', 't', 'o', 'n', ' ',

	 
	'1', '0', '0', ' ', 'M', 'a', 's', 's', ' ', 'S', 't', 'o', 'r', 'a', 'g', 'e',

	 
	'1', '.', '0', '0'
};


static __inline uint32_t get_be32(uint8_t *buf)
{
	return ((uint32_t) buf[0] << 24) | ((uint32_t) buf[1] << 16) |
			((uint32_t) buf[2] << 8) | ((uint32_t) buf[3]);
}

void RoughDelay(uint32_t t)
{
    volatile int32_t delay;

    delay = t;

    while(delay-- >= 0);
}

void my_memcpy(void *dest, void *src, int32_t size)
{
    int32_t i;

    for (i = 0; i < size; i++)
       *((uint8_t *)dest + i) = *((uint8_t *)src + i);
}


void ModeSenseCommand(void)
{
	uint8_t i,j;
	uint8_t NumHead,NumSector;
	uint16_t NumCyl;

     
    *((uint32_t *)((uint32_t)&MassBlock[0])  ) = 0;
    *((uint32_t *)((uint32_t)&MassBlock[0])+1) = 0;

	switch (g_sCBW.au8Data[0])
	{
		case 0x01:
		{
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])))=19;
			i = 8;
			for (j = 0; j<12; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_01[j];
			break;
		}
		case 0x05:
		{
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])))=39;
			i = 8;
			for (j = 0; j<32; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_05[j];
			
			NumHead = 2;
			NumSector = 64;

			if (g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
				NumCyl = g_dataFlashTotalSectors/128;

			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+12))=NumHead;
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+13))=NumSector;
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+16))=(uint8_t)(NumCyl >> 8);
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+17))=(uint8_t)(NumCyl & 0x00ff);
			break;
		}
		case 0x1B:
		{
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])))=19;
			i = 8;
			for (j = 0; j<12; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_1B[j];
			break;
		}
		case 0x1C:
		{
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])))=15;
			i = 8;
			for (j = 0; j<8; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_1C[j];
			break;
		}
		case 0x3F:
		{
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])))=0x47;
			i = 8;
			for (j = 0; j<12; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_01[j];
			for (j = 0; j<32; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_05[j];
			for (j = 0; j<12; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_1B[j];
			for (j = 0; j<8; j++, i++)
				*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=ModePage_1C[j];
			
			NumHead = 2;
			NumSector = 64;

			if (g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
				NumCyl = g_dataFlashTotalSectors/128;

			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+24))=NumHead;
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+25))=NumSector;
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+28))=(uint8_t)(NumCyl >> 8);
			*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+29))=(uint8_t)(NumCyl & 0x00ff);
			break;
		}
		default:
			g_au8SenseKey[0] = 0x05;
			g_au8SenseKey[1] = 0x24;
			g_au8SenseKey[2] = 0x00;
	}
}


void ReqSenCommand(void)
{
    uint8_t tmp[20];
    
    if (preventflag==1)
    {
        preventflag=0;
		tmp[0] = 0x70;
    }
    else
		tmp[0] = 0xf0;

	tmp[1] = 0;
	tmp[3] = 0;
	tmp[4] = 0;
	tmp[5] = 0;
	tmp[6] = 0;
	tmp[7] = 0x0A;
	tmp[8] = 0;
	tmp[9] = 0;
	tmp[10] = 0;
	tmp[11] = 0;
	tmp[14] = 0;
	tmp[15] = 0;
	tmp[16] = 0;
	tmp[17] = 0;

	tmp[2] = g_au8SenseKey[0];
	tmp[12] = g_au8SenseKey[1];
	tmp[13] = g_au8SenseKey[2];

    my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), tmp, 20);
	
	
	g_au8SenseKey[0] = 0x00;
	g_au8SenseKey[1] = 0x00;
	g_au8SenseKey[2] = 0x00;
}


void RdFmtCapCommand(void)
{
    uint32_t i;
    uint32_t TotalSectors = 0;

	for (i = 0; i < 36; i++)
		*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=0;

	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+3))=0x10;

    if (g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
		TotalSectors = g_dataFlashTotalSectors;

	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+4))= *((uint8_t *)&TotalSectors+3);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+5))= *((uint8_t *)&TotalSectors+2);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+6))= *((uint8_t *)&TotalSectors+1);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+7))= *((uint8_t *)&TotalSectors+0);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+8))=0x02;
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+10))=0x02;
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+12))= *((uint8_t *)&TotalSectors+3);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+13))= *((uint8_t *)&TotalSectors+2);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+14))= *((uint8_t *)&TotalSectors+3);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+15))= *((uint8_t *)&TotalSectors+0);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+18))=0x02;
}


void RdCurCapCommand(void)
{
    int i;
    uint32_t temp;

	for (i = 0; i < 36; i++)
		*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+i))=0;

    if (g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
        temp = g_dataFlashTotalSectors - 1;

	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+0))= *((uint8_t *)&temp+3);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+1))= *((uint8_t *)&temp+2);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+2))= *((uint8_t *)&temp+1);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+3))= *((uint8_t *)&temp+0);
	*((volatile unsigned char *)(((uint32_t)&MassBlock[0])+6))=0x02;
}





void UsbCfg(void)
{
     
	(((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->FADDR . FADDR = 0x00);

     
	((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->BUFSEG.BUFSEG = 0x1F;						 		 
    *((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x2C)))=(0x00000001) & 0x03;					  		 
    *((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=((0x00000200 | 0x00000040 | 0)) & 0x03FF;				   		 
    *((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (0))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + 0x00) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);	 
    *((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x3C)))=(0x00000001) & 0x03;						   	 
    *((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(1))))=((0x00000200 | 0x00000020 | 0)) & 0x03FF;					  	 
    *((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (1))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + 0x00) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);  	 
    
     
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x4C)))=(0x00000001) & 0x03;				 			 
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(2))))=((0x00000040 | 2)) & 0x03FF;			  			 
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + ((0x00+64)+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100); 		 	
	
	 
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x5C)))=(0x00000001) & 0x03;			  				 
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(3))))=((0x00000020 | 3)) & 0x03FF;		  				 
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (3))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);		 
	
	g_u8Address = 0;     
	g_u8Config = 0;
	g_u8Flag = 0;        
	
	g_u8BulkState = 0x00;
	g_au8SenseKey[0] = 0;
	g_au8SenseKey[1] = 0;
	g_au8SenseKey[2] = 0;
	g_bCBWInvalid = 0;

	g_u32Address = 0;
	g_u32Length = 0;
	g_u8Size = 0;

	g_sCSW.dCSWSignature = 0x53425355;

	udcOnLine = 0;
	g_u32OutToggle = 0;	
}




void UsbFdt(void)
{
	uint8_t u8FLDET = ((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->FLDET.FLDET;

	*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00000004);
	
	if (u8FLDET)
	{
	     
	
		if(g_u8UsbState & 0x01)
		{
		     
			return;
		}
		
		 
		g_u8UsbState = 0x01;
		
		 
		UsbCfg();
		
	     
        *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x7D0;
	}
	else
	{
	     
	
	     
		g_u8UsbState = 0x00;
		
		udcOnLine = 0;
		
	     
        *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x760;
	}
}





void UsbBus(void)
{
	uint8_t u8ATTR = *((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)) & 0xFF;
	
     
	*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00000001);
	
	 
	if (g_u8UsbState == 0x00)
		return;

     
	if (u8ATTR & 0x00000001)
	{	
	     
        *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x7D0;		
		
		 
		g_u8UsbState = 0x11;
		
		 
		UsbCfg();
	}
	else if (u8ATTR & 0x00000002)
	{	
	     
        *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x7C0;
		
		 
		g_u8UsbState |= 0x80;
	}
	else if (u8ATTR & 0x00000004)
	{
	     
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x7D0;
		
		 
		g_u8UsbState &= ~0x80;
	}
}



int32_t UsbStdReq(void)
{
	int volatile len, idx;
    uint8_t tmp[8];
    
    my_memcpy(tmp, ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0xF8)), 8);
    
	 
	if ((g_u8UsbState & 0x10) == 0x00)
		return 0;

	 	
    switch (tmp[1])
	{
		case 0x06:
		{
			len = tmp[6] + ((uint32_t)tmp[7] << 8);
            
			switch (tmp[3])
            {
				
				case 0x01:
				{
					udcOnLine = 1;

					if (len > 18)
					    len = 18;

                    my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00)), (void *)MassDeviceDescriptor, len);
					break;
				}
				
				case 0x02:
				{
					if (len > MassConfigurationBlock[2])
					    len = MassConfigurationBlock[2];
					
					my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00)), (void *)MassConfigurationBlock, len);                   
                    break;
				}
				
				case 0x03:
				{
					
					if(tmp[4] == 0)
                    {
						if(len > MassStringDescriptor0[0])
						    len = MassStringDescriptor0[0];
						
						my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00)), (void *)MassStringDescriptor0, len);
                        
                        break;
					}
					
					if(len > MassStringDescriptor1[0])
					    len = MassStringDescriptor1[0];
										
					my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00)), (void *)MassStringDescriptor1, len);
                    
                    break;
				}
				default:
					return 0;
			}
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(len);
			g_u8Flag = 0x01;
			return 1;
		}
		case 0x05:
		{
		     
			if((g_u8UsbState & 0x40) == 0)
			{
				 
				g_u8Address = tmp[2];
                
				*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
				*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(0);
				g_u8Flag = 0x02;
				return 1;
			}
			return 0;
		}
		case 0x09:
		{
			g_u8Config = tmp[2];
            
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(0);
			g_u8Flag = 0x04;
			return 1;
		}
		case 0x01:
		case 0x03:
		{
			if (g_bCBWInvalid)
			{
		         
			}
			else if((tmp[0] == 2) && (tmp[2] == 0x00))
            {
				uint32_t u32CfgAddr;
                uint8_t  u8Cfg;

                u32CfgAddr = ((tmp[4] & 0xF) << 4) + (((( uint32_t)0x40000000) + 0x60000) + 0x2C);
                
				u8Cfg = *((volatile uint32_t *) (u32CfgAddr)) & 0xFF;
				
				if(tmp[1] == 0x01)
                	u8Cfg &= ~0x00000002;
				else
					u8Cfg |= 0x00000002;
				*((volatile uint32_t *) (u32CfgAddr)) = u8Cfg;
			}
			else
				return 0;
				
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(0);
			return 1;
		}
		case 0x08:
		{
			((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[0] = g_u8Config;
            
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(1);
			g_u8Flag = 0x01;
			return 1;
		}
		case 0x00:
		{
            uint8_t u8Data;

            u8Data = tmp[0];
			
			if (u8Data == 0x80)
            	((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[0] = 1;	
			
			
			else if (u8Data == 0x81)
            	((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[0] = 0;
			
			
			else if (u8Data == 0x82)
            {
                uint32_t u32CfgAddr;
                u8Data = tmp[4];
                u32CfgAddr = ((u8Data & 0xF) << 4) + (((( uint32_t)0x40000000) + 0x60000) + 0x2C);

				((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[0] = ((*((volatile unsigned int *)(u32CfgAddr))) >> 1) & 1;
			}
			else
				return 0;
   			
            ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[1] = 0;

			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(1);
			g_u8Flag = 0x01;
			return 1;
		}
		case 0x0A:
		{
			((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[0] = 0;

			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(1);
			g_u8Flag = 0x01;
			return 1;
		}
		case 0x0B:
		{
			g_u8Flag = 0x08;

			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(0);
			return 1;
		}
		default:
			return 0;
	}
}



int32_t UsbClassReq(void)
{
    uint8_t tmp[8];

    my_memcpy(tmp, ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0xF8)), 8);
    
	if ((tmp[2] != 0) || (tmp[3] != 0) || (tmp[4] != 0) || (tmp[5] != 0))
    	return 0;

	switch(tmp[1])
    {
		
		case 0xFF:
		{
			if ((tmp[6] != 0) || (tmp[7] != 0))
            	return 0;
			g_bCBWInvalid = 0;

			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(0);
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(2))))=(((0x00000040 | 2)&0x7F)) & 0x03FF;
			
			g_u8BulkState = 0x00;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(31);
			return 1;
		}
		
		case 0xFE:
		{
            if ((tmp[6] != 1) || (tmp[7] != 0))
				return 0;
			((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0x00))[0] = MassLUN - 1;
            if (MassLUN != 1)
                while(1);
            
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(0))))=(((0x00000200 | 0x00000040 | 0)|0x80)) & 0x03FF;
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(3))))=(((0x00000020 | 3)&0x7F)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(0)))))=(1);
			
			g_u8Flag = 0x01;
			return 1;
		}
	}
	return 0;
}



int32_t UsbSetup(void)
{
     
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x2C)))=(0x00000001) & 0x03;	
	*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x3C)))=(0x00000001) & 0x03;
	
	 
	switch (((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+0xF8))[0] & 0x60)
	{
		case 0x00:
			return UsbStdReq();
		case 0x20:
			return UsbClassReq();
		default:
			return 0;
	}
}



void UsbInAck(void)
{
	switch (g_u8Flag)
	{
		
		case 0x01:
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(1)))))=(0);
			break;
		
		case 0x02:
		{
			if (g_u8Address == 0)
				g_u8UsbState = 0x11;
			else
				g_u8UsbState = 0x31;
			
			(((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->FADDR . FADDR = g_u8Address);
			break;
		}
		
		case 0x08:
		
		case 0x04:
		{
			if (g_u8Config == 0)
				g_u8UsbState = 0x31;
			else
			{
				g_u8UsbState = 0x71;
				
				*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(2))))=(((0x00000040 | 2)&0x7F)) & 0x03FF;
				*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(31);
				
			}
			break;
		}
		
		case 0x10:
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(1)))))=(0);
			return;
		default:
			return;
	}
	g_u8Flag = 0;
}


void UsbOutAck(void)
{
	switch (g_u8Flag)
	{
		
		case 0x10:
		{
			
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x28)+(0x10*(2))))=(((0x00000040 | 2)&0x7F)) & 0x03FF;
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(31);
			
			break;
		}
		default:
			return;
	}
	g_u8Flag = 0;
}



void UsbRead(void)
{
    uint32_t u32Len;
    
	 
	if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[2].BUFSEG)) == ((0x00+64)+64))
		*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
	else
		*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + ((0x00+64)+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
		
	 	
	*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(g_u8Size);
	
	g_u32Length -= g_u8Size;
	g_u32BytesInStorageBuf -= g_u8Size;

    if (g_u32Length)
    {
        if (g_u32BytesInStorageBuf)
        {
        	 
        	g_u8Size = 64;
        	if (g_u8Size > g_u32Length)
        	    g_u8Size = g_u32Length;

        	if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[2].BUFSEG)) == ((0x00+64)+64))
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	else
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	g_u32Address += g_u8Size;
    	}
    	else
    	{
		    u32Len = g_u32Length;
		    if (u32Len > 512)
		        u32Len = 512;
		    
			DataFlashRead(g_u32LbaAddress, u32Len, (uint32_t)((uint32_t)&Storage_Block[0]));
		    g_u32BytesInStorageBuf = u32Len;
		    g_u32LbaAddress += u32Len;
            g_u32Address = ((uint32_t)&Storage_Block[0]);		    
		    
        	 
        	g_u8Size = 64;
        	if (g_u8Size > g_u32Length)
        	    g_u8Size = g_u32Length;

        	if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[2].BUFSEG)) == ((0x00+64)+64))
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	else
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	g_u32Address += g_u8Size;		    
    	}
	}
}


void UsbReadTrig(void)
{
    uint32_t u32Len;
    
    if (g_u32Length)
    {
        if (g_u32BytesInStorageBuf)
        {
        	 
        	g_u8Size = 64;
        	if (g_u8Size > g_u32Length)
        	    g_u8Size = g_u32Length;

        	if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[2].BUFSEG)) == ((0x00+64)+64))
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	else
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	g_u32Address += g_u8Size;
    	}
    	else
    	{
		    u32Len = g_u32Length;
		    if (u32Len > 512)
		        u32Len = 512;
		    
			DataFlashRead(g_u32LbaAddress, u32Len, (uint32_t)((uint32_t)&Storage_Block[0]));
		    g_u32BytesInStorageBuf = u32Len;
		    g_u32LbaAddress += u32Len;
            g_u32Address = ((uint32_t)&Storage_Block[0]);		    
		    
        	 
        	g_u8Size = 64;
        	if (g_u8Size > g_u32Length)
        	    g_u8Size = g_u32Length;

        	if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[2].BUFSEG)) == ((0x00+64)+64))
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	else
        	{
        		my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (int8_t *)g_u32Address, g_u8Size);
        	}
        	g_u32Address += g_u8Size;		    
    	}
	
		 
		if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[2].BUFSEG)) == ((0x00+64)+64))
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
		else
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + ((0x00+64)+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
		
		 	
		*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(g_u8Size);
	
		g_u32Length -= g_u8Size;
		g_u32BytesInStorageBuf -= g_u8Size;

	}
	else
		*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(0);	
}



void UsbBulkInAck(void)
{
	int32_t volatile idx;

	if (g_u8BulkState == 0x04)
	{
	     
		g_u8BulkState = 0x00;

		*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (3))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
		*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(31);
	}
	else if (g_u8BulkState == 0x01)
	{
		switch (g_sCBW.u8OPCode)
		{
			case 0x23:
			case 0x25:
			case 0x5A:
			
			{
				if (g_u32Length > 0)
				{
					UsbRead();
					return;
				}
			}
			case 0x28:
			{
				if (g_u32Length > 0)
				{
					
					UsbReadTrig();
					return;
				}			
			}
			
			case 0x03:
			case 0x12:
			{
				g_sCSW.dCSWDataResidue = 0;
				g_sCSW.bCSWStatus = 0;
				break;
			}

			case 0x1E:
			case 0x2F:
			case 0x1B:
			case 0x2A:
			case 0x61:
			{
				int32_t tmp;
				
				tmp = g_sCBW.dCBWDataTransferLength - 512;
				if (tmp < 0) 
					tmp = 0;
				
				g_sCSW.dCSWDataResidue = tmp;
				g_sCSW.bCSWStatus = 0;
				break;
			}
			case 0x00:
			{
				g_sCSW.dCSWDataResidue = 0;
				g_sCSW.bCSWStatus = 0;
				break;
			}
			default:
			{
			     
				g_sCSW.dCSWDataResidue = g_sCBW.dCBWDataTransferLength;
				g_sCSW.bCSWStatus = 0x01;
				break;
			}
		}
		
		 
		*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + ((0x00+64)+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);

        my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), &g_sCSW.dCSWSignature, 16);

		g_u8BulkState = 0x04;
		*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(13);
	}
}


void UsbWrite(void)
{
	uint32_t lba, len;

	if (g_u32Length > 64)
	{
		if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[3].BUFSEG)) == (0x00+64))
		{
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (3))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + ((0x00+64)+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(64);
			my_memcpy((char *)g_u32Address, ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))), 64);
		}
		else
		{
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (3))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(64);
			my_memcpy((char *)g_u32Address, ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), 64);
		}
				
		g_u32Address += 64;
		g_u32Length -= 64;
		
		 
		if (g_u32Address >= (((uint32_t)&Storage_Block[0]) + 512))
		{
			if (g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
				DataFlashWrite(g_u32DataFlashStartAddr, 512, (uint32_t)((uint32_t)&Storage_Block[0]));
		    
		    g_u32Address = ((uint32_t)&Storage_Block[0]);
		    g_u32DataFlashStartAddr += 512;
		}
	}
	else
	{
		if (*((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[3].BUFSEG)) == (0x00+64))
		{
			my_memcpy((char *)g_u32Address, ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))), g_u32Length);
		}
		else
		{
			my_memcpy((char *)g_u32Address, ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), g_u32Length);
		}
		g_u32Address += g_u32Length;
		g_u32Length = 0;


		if (g_sCBW.u8OPCode == 0x2A)
		{
			lba = get_be32(&g_sCBW.au8Data[0]);
			len = g_sCBW.dCBWDataTransferLength;

			if (g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
			{
			    len = lba * 512 + g_sCBW.dCBWDataTransferLength - g_u32DataFlashStartAddr;
			    if (len)
			    {
				    DataFlashWrite(g_u32DataFlashStartAddr, len, (uint32_t)((uint32_t)&Storage_Block[0]));
				}
		    }
		}

		g_u8BulkState = 0x01;
		UsbBulkInAck ();
	}
}



int32_t UsbBulkOutAck(void)
{
	uint8_t u8Len;
	int32_t i;

	if (g_u8BulkState == 0x00)
	{
		u8Len = *((volatile uint32_t *)(&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[3].MXPLD));
		
		 
		if ((*(uint32_t *) ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64))) != 0x43425355) || (u8Len != 31))
		{
			return 0;
		}
		
		 
		for (i = 0; i < u8Len; i++)
			*((uint8_t *) (&g_sCBW.dCBWSignature) + i) = ((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+(0x00+64)))[i];
			
		 
		g_sCSW.dCSWTag = g_sCBW.dCBWTag;
		
		 
		switch (g_sCBW.u8OPCode)
		{
			case 0x1E:
			{
				if (g_sCBW.au8Data[2] & 0x01)
				{
					g_au8SenseKey[0] = 0x05;  
					g_au8SenseKey[1] = 0x24;
					g_au8SenseKey[2] = 0;
					preventflag = 1;
				}
				else
					preventflag = 0;
				g_u8BulkState = 0x01;
				UsbBulkInAck ();
				return 1;
			}
			case 0x2F:
			case 0x1B:
			case 0x00:
			{
				g_u8BulkState = 0x01;
				UsbBulkInAck ();
				return 1;
			}
			case 0x03:
			{
				ReqSenCommand();
				g_u8BulkState = 0x01;
				*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(18);
				return 1;
			}
			case 0x23:
			{
				if (g_u32Length == 0)
				{
					g_u32Length = g_sCBW.dCBWDataTransferLength;
					g_u32Address = ((uint32_t)&MassBlock[0]);
				}
				RdFmtCapCommand();
				g_u8BulkState = 0x01;
				if (g_u32Length > 0)
				{
					if (g_u32Length > 64)
						g_u8Size = 64;
					else
						g_u8Size = g_u32Length;

					my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (char *)g_u32Address, g_u8Size);

					g_u32Address += g_u8Size;
					*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
					UsbRead ();
				}
				else
					UsbBulkInAck ();
				return 1;
			}
			case 0x25:
			{
				if (g_u32Length == 0)
				{
    				g_u32Length = g_sCBW.dCBWDataTransferLength;
					g_u32Address = ((uint32_t)&MassBlock[0]);
				}
				
				RdCurCapCommand();
				g_u8BulkState = 0x01;
				if (g_u32Length > 0)
				{
					if (g_u32Length > 64)
						g_u8Size = 64;
					else
						g_u8Size = g_u32Length;

					my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (char *)g_u32Address, g_u8Size);

					g_u32Address += g_u8Size;
					*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
					UsbRead ();
				}
				else
					UsbBulkInAck ();
				return 1;
			}
			case 0x55:
			{
				g_u32Length = g_sCBW.dCBWDataTransferLength;
				g_u32Address = ((uint32_t)&MassBlock[0]);

				if (g_u32Length > 0)
				{
					*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(64);
					g_u8BulkState = 0x02;
				}
				return 1;
			}
			case 0x5A:
			{
				if (g_u32Length == 0)
				{
					g_u32Length = g_sCBW.dCBWDataTransferLength;
					g_u32Address = ((uint32_t)&MassBlock[0]);
				}
				
				ModeSenseCommand();
				g_u8BulkState = 0x01;
				if (g_u32Length > 0)
				{
					if (g_u32Length > 64)
						g_u8Size = 64;
					else
						g_u8Size = g_u32Length;
					my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (char *)g_u32Address, g_u8Size);

					g_u32Address += g_u8Size;

					*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + (0x00+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
					UsbRead ();
				}
				else
					UsbBulkInAck ();
				return 1;
			}
			case 0x12:
			{
                my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (void *)InquiryID, 36);

				g_u8BulkState = 0x01;

				*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(36);
				return 1;
			}
			case 0x28:
			{
			     
				if(g_u32Length == 0)
				{
				     
				
					 
					g_u32Address = get_be32(&g_sCBW.au8Data[0]);
					g_u32LbaAddress = g_u32Address * 512;
					g_u32Length = g_sCBW.dCBWDataTransferLength;
					g_u32BytesInStorageBuf = g_u32Length;

					if(g_sCBW.bCBWLUN==F_DATA_FLASH_LUN)
					{
					    i = g_u32Length;
					    if(i > 512)
					        i = 512;
					    
						DataFlashRead(g_u32Address * 512, i, (unsigned int)((uint32_t)&Storage_Block[0]));
					    g_u32BytesInStorageBuf = i;
					    g_u32LbaAddress += i;
					}
				}
				g_u32Address = ((uint32_t)&Storage_Block[0]);

                 
				g_u8BulkState = 0x01;
				
				if(g_u32BytesInStorageBuf > 0)
				{
				     
					if (g_u32BytesInStorageBuf > 64)
						g_u8Size = 64;
					else
						g_u8Size = g_u32BytesInStorageBuf;
					
					 
					my_memcpy(((uint8_t *)(((( uint32_t)0x40000000) + 0x60000)+0x100+((0x00+64)+64))), (char *)g_u32Address, g_u8Size);
					g_u32Address += g_u8Size;
					
					 

					*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x20)+(0x10 * (2))))=((((( uint32_t)0x40000000) + 0x60000) + 0x100) + ((0x00+64)+64)) - (((( uint32_t)0x40000000) + 0x60000) + 0x100);
					 	
					*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(g_u8Size);
					g_u32Length -= g_u8Size;
					g_u32BytesInStorageBuf -= g_u8Size;





				}
				else
				{
					UsbBulkInAck();
				}
					
				return 1;
			}
			case 0x2A:
			{
				if (g_u32Length == 0)
				{
					g_u32Length = g_sCBW.dCBWDataTransferLength;
					g_u32Address = ((uint32_t)&Storage_Block[0]);
					g_u32DataFlashStartAddr = get_be32(&g_sCBW.au8Data[0]) * 512;
				}

				if ((g_u32Length > 0))
				{
					*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(64);
					g_u8BulkState = 0x02;
				}
				    
				return 1;
			}
			case 0x61:  
			{
			    extern __weak int32_t ProcessVenderCmd(uint8_t u8Cmd);

			    if((uint32_t)&ProcessVenderCmd != 0)
			        return ProcessVenderCmd(g_sCBW.u8LUN);
			}
			default:
			{
        		 
        		g_au8SenseKey[0] = 0x05;
        		g_au8SenseKey[1] = 0x20;
        		g_au8SenseKey[2] = 0x00;
        		
        		 
        		if (g_sCBW.dCBWDataTransferLength > 0)
        		{
        			 
        			if ((g_sCBW.bmCBWFlags & 0x80) != 0)
        			{	
        			     
        				g_u8BulkState = 0x01;
        				*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(2)))))=(0);
        			}
        		}
        		else
        		{	 
        			g_u8BulkState = 0x01;
        			UsbBulkInAck ();
        		}
			    return 1;
			}
		}
	}
	else if (g_u8BulkState == 0x02)
	{	
		switch (g_sCBW.u8OPCode)
		{
			case 0x2A:
			case 0x55:
			{
				UsbWrite();
				return 1;
			}
			case 0x61:
			{
			    extern __weak void ComWrite(void);

			    if((uint32_t)ComWrite != 0)
			        ComWrite();
			    return 1;
			}
		}
	}
	return 1;
}





void UsbUsb(uint32_t u32INTSTS)
{
	uint32_t u32STS = (*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EPSTS))));

	if (u32INTSTS & 0x80000000)
	{	
	     
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x80000000);	
		if (!UsbSetup())
		{	
		     
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x2C)+(0x10 * (0))))=((0x00000002 | 0x00000001)) & 0x03;
			*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x2C)+(0x10 * (1))))=((0x00000002 | 0x00000001)) & 0x03;
		}
	}
	else if(u32INTSTS & 0x00010000)
	{	
	     
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00010000);
		UsbInAck();
	}
	else if(u32INTSTS & 0x00020000)
	{	
	     
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00020000);
		UsbOutAck();
	}
	else if(u32INTSTS & 0x00040000)
	{	
	     
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00040000);
		g_u32OutToggle = u32STS;
		UsbBulkInAck();
	}
	else if(u32INTSTS & 0x00080000)
	{	
	     
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00080000);
		if (g_u32OutToggle == (u32STS & 0x000E0000))
		{
			*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(3)))))=(64);
		}
		else
		{
			if (UsbBulkOutAck())
				g_u32OutToggle = u32STS & 0x000E0000;
			else
			{	
			     
				g_bCBWInvalid = 1;
				*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x2C)+(0x10 * (2))))=((0x00000002 | 0x00000001)) & 0x03;
				*((volatile unsigned int *)((((( uint32_t)0x40000000) + 0x60000) + 0x2C)+(0x10 * (3))))=((0x00000002 | 0x00000001)) & 0x03;
			}
		}
	}
	else
	{	 
		*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS)))=(0x00000002); 
	}
}




void UsbIsr(void)
{
	uint32_t u32INTSTS = (*((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->INTSTS))));
	if (u32INTSTS & 0x00000004)
	{
	     
		UsbFdt();
	}
	else if(u32INTSTS & 0x00000001)
	{
	     
		UsbBus();
	}
	else if(u32INTSTS & 0x00000002)
	{
	     
		UsbUsb(u32INTSTS);
    }
}




void udcInit(void)
{
    int32_t temp;

     
    *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x7D0;


    (((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->DRVSE0 . DRVSE0 = 1);
    RoughDelay(1000);
    (((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->DRVSE0 . DRVSE0 = 0);
    RoughDelay(1000);

     
    *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x760;


     
    ((SYSCLK_T *) ((( uint32_t)0x50000000) + 0x00200))->APBCLK.USBD_EN = 1;

     	
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->IPRSTC2.USBD_RST = 1;
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->IPRSTC2.USBD_RST = 0;	

     
    ((SYSCLK_T *) ((( uint32_t)0x50000000) + 0x00200))->CLKDIV.USB_N = 0;

     *((volatile unsigned int *)((&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->ATTR)))=0x7D0;
   (((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->DRVSE0 . DRVSE0 = 1);
    temp = 0x100;
    while(temp--);   
	(((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->DRVSE0 . DRVSE0 = 0);

	g_u8UsbState = 0x00;
	*((volatile unsigned int *)(((((( uint32_t)0x40000000) + 0x60000) + 0x24)+(0x10*(1)))))=(0x08);
	UsbFdt();
}


void udcMassBulk(void)
{
     
	while(1)
	{
		UsbIsr();
	}
}


uint8_t Flash_Identify(uint8_t tLUN)
{
    if (tLUN==F_DATA_FLASH_LUN)
    {
        g_dataFlashTotalSectors = (64*1024) / 512;
        
		if(g_dataFlashTotalSectors < 0)
        {
             
			g_au8SenseKey[0] = 0x03;
			g_au8SenseKey[1] = 0x30;
			g_au8SenseKey[2] = 0x01;
            return 0;  
        }
    }

    return 1;
}


uint8_t udcFlashInit(void)
{
    F_DATA_FLASH_LUN = MassLUN;
    MassLUN++;
    
	if (!Flash_Identify(F_DATA_FLASH_LUN))
        return 0;
    return 1;
}

