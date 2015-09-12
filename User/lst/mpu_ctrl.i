#line 1 "mpu_ctrl.c"
#line 1 "mpu6050.h"


					 



#line 29 "mpu6050.h"


void I2C_Init();

void Timed_Write_Cycle(void);

char MPU_ReadReg( int unAddr );
int MPU_WriteReg( char RegAddrs, char pucDATD_AA);
int MPU_ReadBuf( int unAddr, char *pucDATD_AA, int unLength);

int GetData(unsigned char REG_Address);
#line 2 "mpu_ctrl.c"




void Kalman_Filter(float Accel,float Gyro);

void delay_ms(int value)
{
	while(value >0) value--;
}
void mpu_init()
{
	char temp;
	MPU_WriteReg(0x6B, 0x00);	
	delay_ms(2000);
	MPU_WriteReg(0x6B, 0x00);	
	delay_ms(2000);
	
	MPU_WriteReg(0x19, 0x07);  
	temp=MPU_ReadReg(0x19);
	delay_ms(2000);
	MPU_WriteReg(0x1A, 0x04);      
	temp=MPU_ReadReg(0x1A);
	delay_ms(2000);
	MPU_WriteReg(0x1B, 0x08); 
	temp=MPU_ReadReg(0x1B);
	delay_ms(2000);

	MPU_WriteReg(0x1C, 0x08);
	temp=MPU_ReadReg(0x1C);
		delay_ms(2000);
}		  



char check_mpu()
{
	char d=0;
	d=MPU_ReadReg(0x75);  
	d=MPU_ReadReg(0x75);  
	d=MPU_ReadReg(0x75);  
	return d;
}
