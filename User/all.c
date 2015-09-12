#define uchar unsigned char
#include"DrvGPIO.h"
char PWM_Single_out(uint32_t Frequency,uint8_t port,uint8_t period)
{
	S_DRVPWM_TIME_DATA_T sPt;
	uint8_t u8Timer;
	if(port<1&&port>4) return 1;
	if(period<1&&port>99) return 1;
	DrvGPIO_InitFunction(E_FUNC_PWM0);
	DrvGPIO_InitFunction(E_FUNC_PWM1);
   	DrvGPIO_InitFunction(E_FUNC_PWM2);
  	DrvGPIO_InitFunction(E_FUNC_PWM3);
  	DrvGPIO_InitFunction(E_FUNC_PWM4);
  	DrvGPIO_InitFunction(E_FUNC_PWM5);
  	DrvGPIO_InitFunction(E_FUNC_PWM6);
  	DrvGPIO_InitFunction(E_FUNC_PWM7);
	sPt.u8Mode = DRVPWM_AUTO_RELOAD_MODE;
    sPt.u32Frequency = Frequency;
    sPt.u8HighPulseRatio = period;   /* High Pulse peroid : Total Pulse peroid = 1 : 100 */ 
    sPt.i32Inverter = 0;
    if(port==1)
	{	
		u8Timer=DRVPWM_TIMER0;          
	}                           
	else if(port==2)
	{
		u8Timer=DRVPWM_TIMER1;	
	}
	else if(port==3)
	{
		u8Timer=DRVPWM_TIMER2;	
	}    
	else if(port==4)
	{
		u8Timer=DRVPWM_TIMER3;	
	}    
	else if(port==5)
	{
		u8Timer=DRVPWM_TIMER4;	
	}    
	else if(port==6)
	{
		u8Timer=DRVPWM_TIMER5;	
	}    
	else if(port==7)
	{
		u8Timer=DRVPWM_TIMER6;	
	}    
	else if(port==8)
	{
		u8Timer=DRVPWM_TIMER7;	
	}        
        /* Select PWM engine clock */
        DrvPWM_SelectClockSource(u8Timer, DRVPWM_HCLK);
                        
        /* Set PWM Timer0 Configuration */
        DrvPWM_SetTimerClk(u8Timer, &sPt);

        /* Enable Output for PWM Timer0 */
        DrvPWM_SetTimerIO(u8Timer, port);

        /* Enable Interrupt Sources of PWM Timer0 and install call back function */
                                                            
        /* Enable the PWM Timer 0 */
        DrvPWM_Enable(u8Timer, port);    
                                                            
        /*--------------------------------------------------------------------------------------*/
        /* Stop PWM Timer0 (Recommended procedure method 2)                                     */
        /* Set PWM Timer counter as 0, When interrupt request happen, disable PWM Timer         */
        /* Set PWM Timer counter as 0 in Call back function                                     */
        /*--------------------------------------------------------------------------------------*/
                                
        /* Disable the PWM Timer 0 */
		return 0;
}
uchar	Drv_Uart_init(uchar i)
{
	if(i==0)
		DrvGPIO_InitFunction(E_FUNC_UART0);
	else
		DrvGPIO_InitFunction(E_FUNC_UART0);
	DrvGPIO_Open(E_GPC,2,E_IO_OUTPUT);
	DrvGPIO_Open(E_GPC,3,E_IO_OUTPUT);
	DrvGPIO_Open(E_GPC,1,E_IO_OUTPUT);
}