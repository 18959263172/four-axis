#include"mpu6050.h"
#define uint8_t	unsigned char 
#define u8  unsigned char 
#define  uint32_t unsigned int

void Kalman_Filter(float Accel,float Gyro);

void delay_ms(int value)
{
	while(value >0) value--;
}
void mpu_init()
{
	char temp;
	MPU_WriteReg(PWR_MGMT_1, 0x00);	//�������״̬
	delay_ms(2000);
	MPU_WriteReg(PWR_MGMT_1, 0x00);	//�������״̬	
	delay_ms(2000);
	
	MPU_WriteReg(SMPLRT_DIV, 0x07);  //������125hz
	temp=MPU_ReadReg(SMPLRT_DIV);
	delay_ms(2000);
	MPU_WriteReg(CONFIG, 0x04);      //21HZ�˲� ��ʱA8.5ms G8.3ms  �˴�ȡֵӦ�൱ע�⣬��ʱ��ϵͳ�������Ϊ��
	temp=MPU_ReadReg(CONFIG);
	delay_ms(2000);
	MPU_WriteReg(GYRO_CONFIG, 0x08); //������500��/S 65.5LSB/g
	temp=MPU_ReadReg(GYRO_CONFIG);
	delay_ms(2000);

	MPU_WriteReg(ACCEL_CONFIG, 0x08);//���ٶ�+-4g  8192LSB/g
	temp=MPU_ReadReg(ACCEL_CONFIG);
		delay_ms(2000);
}		  



char check_mpu()
{
	char d=0;
	d=MPU_ReadReg(WHO_AM_I);  
	d=MPU_ReadReg(WHO_AM_I);  
	d=MPU_ReadReg(WHO_AM_I);  
	return d;
}