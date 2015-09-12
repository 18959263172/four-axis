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
void InitUART(void);//初始化串口;
void InitADC(void);//初始化ADC；
void Delay(int count);//延时
void PWM_OUT(int32_t port,int32_t period);                        //PWM单端输出					  //ADC结果处理
uint32_t DrvADC_SetSinOut(unsigned char u8Option);                      //ADC单端输出
//char PWM_Single_out(uint32_t Frequency,unsigned char port,unsigned char period);   //PWM单端输出					  //频率结果显示
void PWM23_Init();
S_DRVPWM_TIME_DATA_T sPt1;
S_DRVPWM_TIME_DATA_T sPt;

float XE=0,YE=0;                 //角度人为修正，但是四轴漂移一般是硬件造成的，故不将此值写入EEPROM，这个只是应急使用，发现漂移应
                                 //连至上位机检查电机轴是否发生弯曲，发现问题电机及时更换
unsigned char YM=0;              //油门变化速度控制，不这样做的话快速变化油门时四轴会失速翻转并GG
int ich1=0,ich2=0,ich3=0,ich4=0,ich5=0,ich6=0;				 //无线串口/串口相关
int speed0=0,speed1=0,speed2=0,speed3=0,V=0;           //电机速度参数
int PWM0=0,PWM1=0,PWM2=0,PWM3=0;  //加载至PWM模块的参数
int g_x=0,g_y=0,g_z=0;            //陀螺仪矫正参数
unsigned char TxBuf[20]={0};
unsigned char RxBuf[20]={0};  
double PID_x=0,PID_y=0,PID_z=0;  //PID最终输出量
float FR1=0,FR2=0,FR3=0;         //将char数据转存为float型
//*****************角度参数*************************************************
double Gyro_y=0,Gyro_x=0,Gyro_z=0;        //Y轴陀螺仪数据暂存
double Accel_x=0,Accel_y=0,Accel_z=0;	    //X轴加速度值暂存
double Angle_ax=0,Angle_ay=0,Angle_az=0;  //由加速度计算的加速度(弧度制)
double Angle_gy=0,Angle_gx=0,Angle_gz=0;  //由角速度计算的角速率(角度制)
double AngleAx=0,AngleAy=0;               //三角函数解算出的欧拉角
double Angle=0,Angley=0;                  //四元数解算出的欧拉角
double Anglezlate=0;                      //Z轴相关
double Ax=0,Ay=0;                         //加入遥控器控制量后的角度
//****************姿态处理和PID*********************************************
float Out_PID_X=0,Last_Angle_gx=0;//外环PI输出量  上一次陀螺仪数据
float Out_XP=60,Out_XI=0.01,ERRORX_Out=0;//外环P  外环I  外环误差积分
float In_XP=0.5,In_XI=0.01,In_XD=10,ERRORX_In=0;//内环P  内环I   内环D  内环误差积分

float Out_PID_Y=0,Last_Angle_gy=0;
float Out_YP=60,Out_YI=0.01,ERRORY_Out=0;
float In_YP=0.5,In_YI=0.01,In_YD=10,ERRORY_In=0;

float ZP=5.0,ZD=2.0;//自旋控制的P D


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
														 //  芯片注册解锁
	UNLOCKREG();
	DrvSYS_SetOscCtrl(E_SYS_OSC22M, 1);
	DrvSYS_SelectPLLSource(E_SYS_INTERNAL_22M);
	
	if(!DrvSYS_Open(48000000))  ;
	SYSCLK->CLKSEL0.HCLK_S = 2;
	u32HCLK = DrvSYS_GetHCLKFreq();													 //  等待时钟就绪
	LOCKREG();															 //向“0x5000_0100”写入任何值，就可以重锁保护寄存器 
	DrvGPIO_Open(E_GPA, 4, E_IO_OUTPUT);							
	DrvGPIO_Open(E_GPC, 11, E_IO_OUTPUT);								 //  设置GPB10端口为输出模式
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

	DrvTIMER_Init();					 /*初始化定时器*/
	DrvSYS_SelectIPClockSource(E_SYS_TMR0_CLKSRC, 7);	  /*选择定时器时钟源为外部12MHz*/
	DrvTIMER_Open(E_TMR0,2, E_PERIODIC_MODE);	/*500ms，周期模式*/
	DrvTIMER_SetTimerEvent(E_TMR0, 10, (TIMER_CALLBACK)TMR0_Callback, 0);  /*设置定时处理事件*/
	DrvTIMER_EnableInt(E_TMR0); /*使能定时器0中断*/
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
	else if(YM>RxBuf[4]&&(YM-RxBuf[4])<=2){YM--;YM--;}  //防止油门变化过快而失速
	else {YM=RxBuf[4];}
	Accel_y= GetData(ACCEL_YOUT_H);	//读取6050数据
	Accel_x= GetData(ACCEL_XOUT_H);		   
	Accel_z= GetData(ACCEL_ZOUT_H);	     
	Gyro_x = GetData(GYRO_XOUT_H)-g_x;
	Gyro_y = GetData(GYRO_YOUT_H)-g_y;
	Gyro_z = GetData(GYRO_ZOUT_H)-g_z;	
	Last_Angle_gx=Angle_gx;   //储存上一次角速度数据
	Last_Angle_gy=Angle_gy;	
	Angle_ax=(Accel_x)/8192;  //加速度处理
	Angle_az=(Accel_z)/8192;  //加速度量程 +-4g/S
	Angle_ay=(Accel_y)/8192;	//转换关系8192LSB/g
	Angle_gx=(Gyro_x)/65.5;   //陀螺仪处理
	Angle_gy=(Gyro_y)/65.5;   //陀螺仪量程 +-500度/S
	Angle_gz=(Gyro_z)/65.5;   //转换关系65.5LSB/度


//***********************************四元数解算***********************************
	IMUupdate(Angle_gx*0.0174533,Angle_gy*0.0174533,Angle_gz*0.0174533,Angle_ax,Angle_ay,Angle_az);
	//0.174533为PI/180 目的是将角度转弧度
//********************三角函数直接解算以供比较四元数解算精准度********************
//	AngleAx=atan(Angle_ax/sqrt(Angle_ay*Angle_ay+Angle_az*Angle_az))*57.2957795f; //后面的数字是180/PI 目的是弧度转角度
  //AngleAy=atan(Angle_ay/sqrt(Angle_ax*Angle_ax+Angle_az*Angle_az))*57.2957795f;
	printf("Angle %le Angley %le \r\n",Angle,Angley);
//	printf("AngleAx %le AngleAy %le \r\n",AngleAx,AngleAy);
/*														   
//**************X轴指向***********************************************************
	FR1=((float)RxBuf[1]-128)/10; //char类型转存为float以便除法运算
	
	Ax=Angle-FR1;      //角度控制量加载至角度
	
	if(YM>20)
	{
  ERRORX_Out+=Ax;//外环积分(油门小于某个值时不积分)
	}
	else
	{
		ERRORX_Out=0; //油门小于定值时清除积分值
	}
	if(ERRORX_Out>500){ERRORX_Out=500;}
	else if(ERRORX_Out<-500){ERRORX_Out=-500;}//积分限幅
	
	Out_PID_X=Ax*Out_XP+ERRORX_Out*Out_XI;//外环PI
	
	if(YM>20)
	{
  ERRORX_In+=(Angle_gy-Out_PID_X);  //内环积分(油门小于某个值时不积分)
	}	
  else
	{
		ERRORX_In=0; //油门小于定值时清除积分值
	}	
	if(ERRORX_In>500){ERRORX_In=500;}
  else if(ERRORX_In<-500){ERRORX_In=-500;}//积分限幅
	
	PID_x=(Angle_gy+Out_PID_X)*In_XP+ERRORX_In*In_XI+(Angle_gy-Last_Angle_gy)*In_XD;//内环PID
	
  if(PID_x>1000){PID_x=1000;}  //输出量限幅
	if(PID_x<-1000){PID_x=-1000;}
	
	speed0=0-PID_x,speed2=0+PID_x;
//**************Y轴指向**************************************************
	FR2=((float)RxBuf[2]-128)/10; //char类型转存为float以便除法运算
	
	Ay=Angley+FR2;      //角度控制量加载至角度
	
	if(YM>20)
	{
  ERRORY_Out+=Ay;//外环积分(油门小于某个值时不积分)
	}
	else
	{
		ERRORY_Out=0; //油门小于定值时清除积分值
	}	
	if(ERRORY_Out>500){ERRORY_Out=500;}
	else if(ERRORY_Out<-500){ERRORY_Out=-500;}//积分限幅
	
	Out_PID_Y=Ay*Out_YP+ERRORY_Out*Out_YI;//外环PI
	
	if(YM>20)
	{
  ERRORY_In+=(Angle_gx-Out_PID_Y);  //内环积分(油门小于某个值时不积分)
	}		
	else
	{
		ERRORY_In=0; //油门小于定值时清除积分值
	}	
	if(ERRORY_In>500){ERRORY_In=500;}
  else if(ERRORY_In<-500){ERRORY_In=-500;}//积分限幅
	
	PID_y=(Angle_gx+Out_PID_Y)*In_YP+ERRORY_In*In_YI+(Angle_gx-Last_Angle_gx)*In_YD;//内环PID
	
  if(PID_y>1000){PID_y=1000;}  //输出量限幅
	if(PID_y<-1000){PID_y=-1000;}
	
	speed3=0+PID_y,speed1=0-PID_y;//加载到速度参数
//**************Z轴指向(Z轴随便啦，自旋控制没必要上串级PID)*****************************	
	FR3=((float)RxBuf[3]-128)/7;
	Angle_gz-=FR3; 
	PID_z=(Angle_gz)*ZP+(Angle_gz-Anglezlate)*ZD;
	Anglezlate=Angle_gz;
	speed0=speed0+PID_z,speed2=speed2+PID_z;
	speed1=speed1-PID_z,speed3=speed3-PID_z;
//*****************串口及无线串口相关***************************************************
	ich1=Ax;
	ich2=Ay;
	ich3=AngleAx;                 //此处可发送6个数据至上位机，需要发送什么数据在此处修改即可
	ich4=AngleAy;
	ich5=0;
	ich6=0;
	/*
//**************将速度参数加载至PWM模块*************************************************	
	PWM0=(1000-YM*4+speed0);
	if(PWM0>1000){PWM0=1000;}    //速度参数控制，防止超过PWM参数范围0-1000
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
	//nrf_write(W_REGISTER+EN_AA,0x01);     //使能通道0的自动应答    
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
	/*GPA12端口初始化为PWM输出端*/
	SYS->GPAMFP.PWM0_AD13 = 1;
	SYS->GPAMFP.PWM1_AD14 = 1;
	SYS->GPAMFP.PWM2_AD15 = 1;
	SYS->GPAMFP.PWM3_I2SMCLK = 1;
	
	SYS->GPBMFP.TM3_PWM4 = 1;
	/*PWM0时钟使能*/
	SYSCLK->APBCLK.PWM23_EN = 1;
	SYSCLK->APBCLK.PWM01_EN = 1;
	SYSCLK->APBCLK.PWM45_EN = 1;
	/*时钟源选择为外部时钟*/
	SYSCLK->CLKSEL1.PWM23_S = 3;
	SYSCLK->CLKSEL1.PWM01_S = 3;
	SYSCLK->CLKSEL2.PWM45_S = 3;
	
	/*PWM0时钟选择寄存器设置*/
	PWMA->CSR.CSR2 = 4;			//进行16分频
	PWMA->CSR.CSR3 = 4;
	/*PWMA预分频寄存器设置*/
	PWMA->PPR.CP01 = 1;	
	PWMA->PPR.CP23 = 1;	
	/*设置PWM2为自动重装模式*/
	PWMA->PCR.CH0MOD = 1;	
	PWMA->PCR.CH1MOD = 1;
	PWMA->PCR.CH2MOD = 1;	
	PWMA->PCR.CH3MOD = 1;
	PWMA->PCR.CH2EN = 1;	
	PWMA->PCR.CH3EN = 1;	
	PWMA->PCR.CH0EN = 1;	
	PWMA->PCR.CH1EN = 1;	
	/*设置PWM输出波形的占空比，占空比=(CNR+1)/(CMR+1)*/
	PWMA->CNR2 = 1090;
	PWMA->CMR2 = 100;
	PWMA->CNR3 = 1090;
	PWMA->CMR3 = 100;
	
	PWMA->CNR0 = 1090;
	PWMA->CMR0 = 100;
	PWMA->CNR1 = 1090;
	PWMA->CMR1 = 100;
	/*PWM中断*/
	//DrvPWM_EnableInt(DRVPWM_TIMER2,1,DRVPWM_PwmIRQHandler);
	/*PWM定时器2使能*/
	PWMA->POE.PWM0 = 1;
	PWMA->POE.PWM1 = 1;	
	PWMA->POE.PWM2 = 1;
	PWMA->POE.PWM3 = 1;	
	/*通道2输出使能*/	
}


