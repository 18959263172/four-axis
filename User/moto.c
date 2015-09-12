#include"moto.h"

void moto_set(short u1,short u2,short u3,short u4)
{
	PWMA->POE.PWM0 = 0;
	PWMA->POE.PWM1 = 0;	
	PWMA->POE.PWM2 = 0;
	PWMA->POE.PWM3 = 0;	

	PWMA->CMR0 = u1;
	PWMA->CMR1 = u2;	
	PWMA->CMR2 = u3;
	PWMA->CMR3 = u4;
	PWMA->POE.PWM0 = 1;
	PWMA->POE.PWM1 = 1;	
	PWMA->POE.PWM2 = 1;
	PWMA->POE.PWM3 = 1;	
}
void moto_close()
{
	SYS->GPAMFP.PWM0_AD13 = 0;
	SYS->GPAMFP.PWM1_AD14 = 0;
	SYS->GPAMFP.PWM2_AD15 = 0;
	SYS->GPAMFP.PWM3_I2SMCLK = 0;
	DrvGPIO_Open(E_GPA, 12, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 13, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 14, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 15, E_IO_OUTPUT);
		  	

	
	DrvGPIO_ClrBit(E_GPA, 4);	
	DrvGPIO_ClrBit(E_GPC, 11);	
	DrvGPIO_ClrBit(E_GPB, 7);	
	DrvGPIO_ClrBit(E_GPB, 14);	
	
	DrvGPIO_SetBit(E_GPA, 12);	
	DrvGPIO_SetBit(E_GPA, 13);	
	DrvGPIO_SetBit(E_GPA, 15);	
	DrvGPIO_SetBit(E_GPA, 14);	
	
}

