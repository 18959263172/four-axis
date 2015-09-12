#include <stdio.h>
#include "NUC1xx.h"
#include "DrvADC.h"
#include "DrvGPIO.h"
#include "DrvUART.h"
#include "DrvSYS.h"
#include "DrvPWM.h"
#include "DrvGPIO.h"
#include "DrvI2C.h"
#include "DrvSPI.h"
 #include"DrvTimer.h"
#include"DrvI2C.h"
#include"mpu6050.h"
#include"moto.h"
#include"nrf24l01.h"
#include"imu.h"

#define uchar unsigned char

volatile unsigned char gu8AdcIntFlag;
void InitUART(void);//��ʼ������;
void InitADC(void);//��ʼ��ADC��
void Delay(int count);//��ʱ
void PWM_OUT(int32_t port,int32_t period);                        //PWM�������					  //ADC�������
uint32_t DrvADC_SetSinOut(unsigned char u8Option);                      //ADC�������
//char PWM_Single_out(uint32_t Frequency,unsigned char port,unsigned char period);   //PWM�������					  //Ƶ�ʽ����ʾ
void PWM23_Init();
S_DRVPWM_TIME_DATA_T sPt1;
S_DRVPWM_TIME_DATA_T sPt;

float XE=0,YE=0;                 //�Ƕ���Ϊ��������������Ư��һ����Ӳ����ɵģ��ʲ�����ֵд��EEPROM�����ֻ��Ӧ��ʹ�ã�����Ư��Ӧ
                                 //������λ����������Ƿ���������������������ʱ����
unsigned char YM=0;              //���ű仯�ٶȿ��ƣ����������Ļ����ٱ仯����ʱ�����ʧ�ٷ�ת��GG
int ich1=0,ich2=0,ich3=0,ich4=0,ich5=0,ich6=0;				 //���ߴ���/�������
int speed0=0,speed1=0,speed2=0,speed3=0,V=0;           //����ٶȲ���
int PWM0=0,PWM1=0,PWM2=0,PWM3=0;  //������PWMģ��Ĳ���
int g_x=0,g_y=0,g_z=0;            //�����ǽ�������
unsigned char TxBuf[20]={0};
unsigned char RxBuf[20]={0};  
double PID_x=0,PID_y=0,PID_z=0;  //PID���������
float FR1=0,FR2=0,FR3=0;         //��char����ת��Ϊfloat��
//*****************�ǶȲ���*************************************************
double Gyro_y=0,Gyro_x=0,Gyro_z=0;        //Y�������������ݴ�
double Accel_x=0,Accel_y=0,Accel_z=0;	    //X����ٶ�ֵ�ݴ�
double Angle_ax=0,Angle_ay=0,Angle_az=0;  //�ɼ��ٶȼ���ļ��ٶ�(������)
double Angle_gy=0,Angle_gx=0,Angle_gz=0;  //�ɽ��ٶȼ���Ľ�����(�Ƕ���)
double AngleAx=0,AngleAy=0;               //���Ǻ����������ŷ����
double Angle=0,Angley=0;                  //��Ԫ���������ŷ����
double Anglezlate=0;                      //Z�����
double Ax=0,Ay=0;                         //����ң������������ĽǶ�
//****************��̬�����PID*********************************************
float Out_PID_X=0,Last_Angle_gx=0;//�⻷PI�����  ��һ������������
float Out_XP=60,Out_XI=0.01,ERRORX_Out=0;//�⻷P  �⻷I  �⻷������
float In_XP=0.5,In_XI=0.01,In_XD=10,ERRORX_In=0;//�ڻ�P  �ڻ�I   �ڻ�D  �ڻ�������

float Out_PID_Y=0,Last_Angle_gy=0;
float Out_YP=60,Out_YI=0.01,ERRORY_Out=0;
float In_YP=0.5,In_YI=0.01,In_YD=10,ERRORY_In=0;

float ZP=5.0,ZD=2.0;//�������Ƶ�P D


void Angle_Calculate();


void TMR0_Callback( void )
{
	
	//DrvGPIO_ClrBit(E_GPB,13);
}
/*
	
*/
void init (void)
{	
	uint32_t u32HCLK;
														 //  оƬע�����
	UNLOCKREG();
	DrvSYS_SetOscCtrl(E_SYS_OSC22M, 1);
	DrvSYS_SelectPLLSource(E_SYS_INTERNAL_22M);
	
	if(!DrvSYS_Open(48000000))  ;
	SYSCLK->CLKSEL0.HCLK_S = 2;
	u32HCLK = DrvSYS_GetHCLKFreq();													 //  �ȴ�ʱ�Ӿ���
	LOCKREG();															 //��0x5000_0100��д���κ�ֵ���Ϳ������������Ĵ��� 
	DrvGPIO_Open(E_GPA, 4, E_IO_OUTPUT);							
	DrvGPIO_Open(E_GPC, 11, E_IO_OUTPUT);								 //  ����GPB10�˿�Ϊ���ģʽ
	DrvGPIO_Open(E_GPB, 7, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPB, 14, E_IO_OUTPUT);
	
	DrvGPIO_Open(E_GPB, 2, E_IO_OUTPUT);
	
	DrvGPIO_Open(E_GPC, 1, E_IO_INPUT);
	DrvGPIO_Open(E_GPC, 0, E_IO_INPUT);
	DrvGPIO_Open(E_GPB, 11, E_IO_INPUT);
	DrvGPIO_Open(E_GPB, 10, E_IO_INPUT);
 
	DrvGPIO_Open(E_GPA, 12, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 13, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 14, E_IO_OUTPUT);
	DrvGPIO_Open(E_GPA, 15, E_IO_OUTPUT);
	
	DrvGPIO_Open(E_GPB, 2, E_IO_INPUT);
	DrvGPIO_Open(E_GPB, 1, E_IO_OUTPUT);

	DrvGPIO_SetBit(E_GPB, 13);	
	DrvGPIO_ClrBit(E_GPA, 12);
	
	DrvGPIO_ClrBit(E_GPA, 4);	
	DrvGPIO_ClrBit(E_GPC, 11);	
	DrvGPIO_ClrBit(E_GPB, 7);	
	DrvGPIO_ClrBit(E_GPB, 14);	
	
	DrvGPIO_SetBit(E_GPB, 2);	
	DrvGPIO_ClrBit(E_GPB, 1);	

	DrvTIMER_Init();					 /*��ʼ����ʱ��*/
	DrvSYS_SelectIPClockSource(E_SYS_TMR0_CLKSRC, 7);	  /*ѡ��ʱ��ʱ��ԴΪ�ⲿ12MHz*/
	DrvTIMER_Open(E_TMR0,2, E_PERIODIC_MODE);	/*500ms������ģʽ*/
	DrvTIMER_SetTimerEvent(E_TMR0, 10, (TIMER_CALLBACK)TMR0_Callback, 0);  /*���ö�ʱ�����¼�*/
	DrvTIMER_EnableInt(E_TMR0); /*ʹ�ܶ�ʱ��0�ж�*/
	DrvTIMER_Start(E_TMR0);	
}
/*
	
*/
void DRVPWM_PwmIRQHandler()
{
	//DrvGPIO_ClrBit(E_GPB,13);
	//PWMA->CMR3 = sin2[loop];
	//PWMA->CMR2 = sin2[loop];
	//if(loop==199) loop=0;
}


void Angle_Calculate() 
{	
	mpu_init();
	if(YM<RxBuf[4]&&(RxBuf[4]-YM)<=2){YM++;YM++;}
	else if(YM>RxBuf[4]&&(YM-RxBuf[4])<=2){YM--;YM--;}  //��ֹ���ű仯�����ʧ��
	else {YM=RxBuf[4];}
	Accel_y= GetData(ACCEL_YOUT_H);	//��ȡ6050����
	Accel_x= GetData(ACCEL_XOUT_H);		   
	Accel_z= GetData(ACCEL_ZOUT_H);	     
	Gyro_x = GetData(GYRO_XOUT_H)-g_x;
	Gyro_y = GetData(GYRO_YOUT_H)-g_y;
	Gyro_z = GetData(GYRO_ZOUT_H)-g_z;	
	Last_Angle_gx=Angle_gx;   //������һ�ν��ٶ�����
	Last_Angle_gy=Angle_gy;	
	Angle_ax=(Accel_x)/8192;  //���ٶȴ���
	Angle_az=(Accel_z)/8192;  //���ٶ����� +-4g/S
	Angle_ay=(Accel_y)/8192;	//ת����ϵ8192LSB/g
	Angle_gx=(Gyro_x)/65.5;   //�����Ǵ���
	Angle_gy=(Gyro_y)/65.5;   //���������� +-500��/S
	Angle_gz=(Gyro_z)/65.5;   //ת����ϵ65.5LSB/��


//***********************************��Ԫ������***********************************
	IMUupdate(Angle_gx*0.0174533,Angle_gy*0.0174533,Angle_gz*0.0174533,Angle_ax,Angle_ay,Angle_az);
	//0.174533ΪPI/180 Ŀ���ǽ��Ƕ�ת����
//********************���Ǻ���ֱ�ӽ����Թ��Ƚ���Ԫ�����㾫׼��********************
//	AngleAx=atan(Angle_ax/sqrt(Angle_ay*Angle_ay+Angle_az*Angle_az))*57.2957795f; //�����������180/PI Ŀ���ǻ���ת�Ƕ�
  //AngleAy=atan(Angle_ay/sqrt(Angle_ax*Angle_ax+Angle_az*Angle_az))*57.2957795f;
	printf("Angle %le Angley %le \r\n",Angle,Angley);
//	printf("AngleAx %le AngleAy %le \r\n",AngleAx,AngleAy);
/*														   
//**************X��ָ��***********************************************************
	FR1=((float)RxBuf[1]-128)/10; //char����ת��Ϊfloat�Ա��������
	
	Ax=Angle-FR1;      //�Ƕȿ������������Ƕ�
	
	if(YM>20)
	{
  ERRORX_Out+=Ax;//�⻷����(����С��ĳ��ֵʱ������)
	}
	else
	{
		ERRORX_Out=0; //����С�ڶ�ֵʱ�������ֵ
	}
	if(ERRORX_Out>500){ERRORX_Out=500;}
	else if(ERRORX_Out<-500){ERRORX_Out=-500;}//�����޷�
	
	Out_PID_X=Ax*Out_XP+ERRORX_Out*Out_XI;//�⻷PI
	
	if(YM>20)
	{
  ERRORX_In+=(Angle_gy-Out_PID_X);  //�ڻ�����(����С��ĳ��ֵʱ������)
	}	
  else
	{
		ERRORX_In=0; //����С�ڶ�ֵʱ�������ֵ
	}	
	if(ERRORX_In>500){ERRORX_In=500;}
  else if(ERRORX_In<-500){ERRORX_In=-500;}//�����޷�
	
	PID_x=(Angle_gy+Out_PID_X)*In_XP+ERRORX_In*In_XI+(Angle_gy-Last_Angle_gy)*In_XD;//�ڻ�PID
	
  if(PID_x>1000){PID_x=1000;}  //������޷�
	if(PID_x<-1000){PID_x=-1000;}
	
	speed0=0-PID_x,speed2=0+PID_x;
//**************Y��ָ��**************************************************
	FR2=((float)RxBuf[2]-128)/10; //char����ת��Ϊfloat�Ա��������
	
	Ay=Angley+FR2;      //�Ƕȿ������������Ƕ�
	
	if(YM>20)
	{
  ERRORY_Out+=Ay;//�⻷����(����С��ĳ��ֵʱ������)
	}
	else
	{
		ERRORY_Out=0; //����С�ڶ�ֵʱ�������ֵ
	}	
	if(ERRORY_Out>500){ERRORY_Out=500;}
	else if(ERRORY_Out<-500){ERRORY_Out=-500;}//�����޷�
	
	Out_PID_Y=Ay*Out_YP+ERRORY_Out*Out_YI;//�⻷PI
	
	if(YM>20)
	{
  ERRORY_In+=(Angle_gx-Out_PID_Y);  //�ڻ�����(����С��ĳ��ֵʱ������)
	}		
	else
	{
		ERRORY_In=0; //����С�ڶ�ֵʱ�������ֵ
	}	
	if(ERRORY_In>500){ERRORY_In=500;}
  else if(ERRORY_In<-500){ERRORY_In=-500;}//�����޷�
	
	PID_y=(Angle_gx+Out_PID_Y)*In_YP+ERRORY_In*In_YI+(Angle_gx-Last_Angle_gx)*In_YD;//�ڻ�PID
	
  if(PID_y>1000){PID_y=1000;}  //������޷�
	if(PID_y<-1000){PID_y=-1000;}
	
	speed3=0+PID_y,speed1=0-PID_y;//���ص��ٶȲ���
//**************Z��ָ��(Z�����������������û��Ҫ�ϴ���PID)*****************************	
	FR3=((float)RxBuf[3]-128)/7;
	Angle_gz-=FR3; 
	PID_z=(Angle_gz)*ZP+(Angle_gz-Anglezlate)*ZD;
	Anglezlate=Angle_gz;
	speed0=speed0+PID_z,speed2=speed2+PID_z;
	speed1=speed1-PID_z,speed3=speed3-PID_z;
//*****************���ڼ����ߴ������***************************************************
	ich1=Ax;
	ich2=Ay;
	ich3=AngleAx;                 //�˴��ɷ���6����������λ������Ҫ����ʲô�����ڴ˴��޸ļ���
	ich4=AngleAy;
	ich5=0;
	ich6=0;
	/*
//**************���ٶȲ���������PWMģ��*************************************************	
	PWM0=(1000-YM*4+speed0);
	if(PWM0>1000){PWM0=1000;}    //�ٶȲ������ƣ���ֹ����PWM������Χ0-1000
	else if(PWM0<0){PWM0=0;}

	PWM1=(1000-YM*4+speed1);
	if(PWM1>1000){PWM1=1000;}
	else if(PWM1<0){PWM1=0;}

	PWM2=(1000-YM*4+speed2);
	if(PWM2>1000){PWM2=1000;}
	else if(PWM2<0){PWM2=0;}
	
	PWM3=(1000-YM*4+speed3);
	if(PWM3>1000){PWM3=1000;}
	else if(PWM3<0){PWM3=0;}

  if(YM>=10)
	{PWM(PWM1,PWM2,PWM0,PWM3);}//1203
	else
	{PWM(1000,1000,1000,1000);}	  */
} 
/*
	
*/
int main(void)
{
	uint32_t u32HCLK;
	uint32_t i=0;
	uchar ret;
	init ();
	DrvPWM_Open();  
	PWM23_Init();
	spi_init();
	moto_set(0,0,0,0);
	I2C_Init();
	
	//moto_close();
	/* Set I2C I/O */
	//DrvGPIO_InitFunction(E_FUNC_I2C1);
	/* Open I2C0 and set clock = 100Kbps */
	//DrvI2C_Open(I2C_PORT1, 100000);
	mpu_init();
	ret=check_mpu();
	if(ret==0x68) printf(" checked mpu6050\r\n");
	DrvGPIO_SetBit(E_GPB, 1);	
//	NRFSetTxMode(0);
	RX_Mode();
	//RX_Mode();
	//NRFSetTxMode();
  moto_set(100,100,100,100);
  moto_set(200,200,200,200);
  moto_set(0,0,0,0);
  while(1)
  {  
  Angle_Calculate();	
		  //nrf_read(RX_PW_P0);
	//nrf_write(W_REGISTER+EN_AA,0x01);     //ʹ��ͨ��0���Զ�Ӧ��    
		//	NRFSetTxMode();
		//AT24C0XWrite(0x68,"1",1);
	//	delay_s();
		//NRF24L01_TxPacket(test);
		//NRF24L01_RxPacket(test); 
		//moto_set(test[0],0,0,0);
//		printf("%s\r\n",test);
	}
}				

void Delay(int count)
{
	while(count--)
	{
//		__NOP;
	 }
}

void MPU6050_Init()
{
	I2C1->CON.ENSI=1;
}
void PWM23_Init()
{
	/*GPA12�˿ڳ�ʼ��ΪPWM�����*/
	SYS->GPAMFP.PWM0_AD13 = 1;
	SYS->GPAMFP.PWM1_AD14 = 1;
	SYS->GPAMFP.PWM2_AD15 = 1;
	SYS->GPAMFP.PWM3_I2SMCLK = 1;
	
	SYS->GPBMFP.TM3_PWM4 = 1;
	/*PWM0ʱ��ʹ��*/
	SYSCLK->APBCLK.PWM23_EN = 1;
	SYSCLK->APBCLK.PWM01_EN = 1;
	SYSCLK->APBCLK.PWM45_EN = 1;
	/*ʱ��Դѡ��Ϊ�ⲿʱ��*/
	SYSCLK->CLKSEL1.PWM23_S = 3;
	SYSCLK->CLKSEL1.PWM01_S = 3;
	SYSCLK->CLKSEL2.PWM45_S = 3;
	
	/*PWM0ʱ��ѡ��Ĵ�������*/
	PWMA->CSR.CSR2 = 4;			//����16��Ƶ
	PWMA->CSR.CSR3 = 4;
	/*PWMAԤ��Ƶ�Ĵ�������*/
	PWMA->PPR.CP01 = 1;	
	PWMA->PPR.CP23 = 1;	
	/*����PWM2Ϊ�Զ���װģʽ*/
	PWMA->PCR.CH0MOD = 1;	
	PWMA->PCR.CH1MOD = 1;
	PWMA->PCR.CH2MOD = 1;	
	PWMA->PCR.CH3MOD = 1;
	PWMA->PCR.CH2EN = 1;	
	PWMA->PCR.CH3EN = 1;	
	PWMA->PCR.CH0EN = 1;	
	PWMA->PCR.CH1EN = 1;	
	/*����PWM������ε�ռ�ձȣ�ռ�ձ�=(CNR+1)/(CMR+1)*/
	PWMA->CNR2 = 1090;
	PWMA->CMR2 = 100;
	PWMA->CNR3 = 1090;
	PWMA->CMR3 = 100;
	
	PWMA->CNR0 = 1090;
	PWMA->CMR0 = 100;
	PWMA->CNR1 = 1090;
	PWMA->CMR1 = 100;
	/*PWM�ж�*/
	//DrvPWM_EnableInt(DRVPWM_TIMER2,1,DRVPWM_PwmIRQHandler);
	/*PWM��ʱ��2ʹ��*/
	PWMA->POE.PWM0 = 1;
	PWMA->POE.PWM1 = 1;	
	PWMA->POE.PWM2 = 1;
	PWMA->POE.PWM3 = 1;	
	/*ͨ��2���ʹ��*/	
}


