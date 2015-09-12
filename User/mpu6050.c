#include"DrvI2C.h"

#include <NUC1xx.h>

#include"mpu6050.h"
/* 9. I2C I2CON register */
#define D_EI									(1<<7)
#define D_END_SI								(1<<6)
#define D_STA									(1<<5)
#define D_STO									(1<<4)
#define D_SI									(1<<3)
#define D_AA									(1<<2)

/* 9. I2C I2TOC register */
#define D_I2C_ENTI							(1<<2)
#define D_DIV4_EN								(1<<1)
#define D_I2C_TOF								(1<<0)

/* 9. I2C I2CADDR register */
#define D_GC_EN								(1<<0)
#define EEPROM_SLA  0x68
#define EEPROM_WR  0x69
#define EEPROM_RD 1
void I2C_Init()



{
	SYS->GPAMFP.I2C1_SCL_nRD = 1;
	SYS->GPAMFP.I2C1_SDA_nWR = 1;
	SYSCLK->APBCLK.I2C1_EN = 1;	 

	I2C1->CLK=100;
	
	I2C1->CON.ENSI=1;
		 

}
	/*****************************************
*函数名称:AT24C0XWrite
*输    入:unAddr   写地址
          pucDATD_AA  写数据
		  unLength 写长度
*输    出:TRUE/FALSE
*功    能:AT24C0X写数据
******************************************/
int MPU_WriteReg( char RegAddr, char pucDATD_AA)
{
	int i=0;	  
    I2C1->CON.ENSI=0;
    I2C1->CON.ENSI=1;

	while(i<32) i++;	   
    I2C1->CON.STA=1;         			    //启动                    	
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x08)	            
    {
       	printf("I2CD_STArt fail,I2D_STATUS %02X\r\n",I2C1->STATUS);
				return FALSE;
    }	        
	I2C1->CON.SI=1;              			
    //进入读写控制操作  
    I2C1->DATA = 0xd0;
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x18)              
    {
	    printf("I2C write ADW fail\r\n");
	    return FALSE;
    }
	    I2C1->CON.STA=0;  
	I2C1->CON.SI=1; 
	//写入读地址
    I2C1->DATA = RegAddr;
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS!= 0x28)              
    {
        printf("I2C write reg addr fail\r\n");
	    return FALSE;
    }
	I2C1->CON.SI=1;     
	//写入数据  
	I2C1->DATA = pucDATD_AA;  
	  	
    while (I2C1->CON.SI==0);	    
    if (I2C1->STATUS != 0x28)              
    {					
        printf("I2C write control fail\r\n");
        while (1);
    }
	//读取数据
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);  
    //停止	  
	I2C1->CON.SI=1; 
    I2C1->CON.STO=1;
	while(I2C1->CON.STO==1)   ;     
	//printf("I2C write ok\r\n");
		return 0;

}
/*****************************************
*函数名称:AT24C0XRead
*输    入:unAddr   读地址
          pucDATD_AA  读数据
		  unLength 读长度
*输    出:TRUE/FALSE
*功    能:AT24C0X读数据
******************************************/
char MPU_ReadReg( int unAddr/*, int unLength*/)
{
	char ret;
		 int i=0;   	 
    I2C1->CON.ENSI=0;
    I2C1->CON.ENSI=1;

	while(i<32) i++;
    I2C1->CON.STA=1;

	         			    //启动                    	
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x08)	            
    {
       	printf("I2CD_STArt fail,I2D_STATUS %02X\r\n",I2C1->STATUS);
				return FALSE;
    }	  
	I2C1->CON.STA=0;         
	I2C1->CON.SI=1;              			
    //进入读写控制操作  
    I2C1->DATA = 0xd0;
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x18)              
    {
	    printf("I2C write ADW fail\r\n");
	    return FALSE;
    }
	//写入读地址
    I2C1->DATA = unAddr;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS!= 0x28)              
    {
        printf("I2C write reg addr fail\r\n");
	    return FALSE;
    }
    // 重新启动	
     
            
    I2C1->CON.SI=1;  
	 I2C1->CON.STA=1;                         	
    while (I2C1->CON.SI==0);    
  if (I2C1->STATUS != 0x10)                      	
    {
        printf("I2C repeated D_STArt fail\r\n");
				return FALSE;
    }     
		 I2C1->CON.STA=0; 
	I2C1->CON.SI=1;       	
    //进入读操作  
    I2C1->DATA = 0xd0 | 1;
    while (I2C1->CON.SI==0);	    
    if (I2C1->STATUS != 0x40)              
    {					
        printf("I2C write control fail\r\n");
        while (1);
    }
	//读取数据
	I2C1->CON.SI=1; 
	while (I2C1->CON.SI==0);
	if (I2C1->STATUS != 0x58)              
	{
	   printf("I2C read fail\r\n");
	   return FALSE;
	}		
	ret = I2C1->DATA;	
    I2C1->CON.AA=0;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);  
    //停止
    I2C1->CON.STO=0;
    I2C1->CON.SI=1;
    while (I2C1->CON.STO==1);                      
		return ret;
}


/*****************************************
*函数名称:MPU_ReadBuf
*输    入:unAddr   读地址
          pucDATD_AA  读数据
		  unLength 读长度
*输    出:TRUE/FALSE
*功    能:AT24C0X读数据
******************************************/
int MPU_ReadBuf( int unAddr, char *pucDATD_AA, int unLength)
{
		 int i;
    I2C1->CON.STA=1;         			    //启动
    I2C1->CON.SI=1;                      	
    while (I2C1->CON.SI==0);	        
    I2C1->CON.STA=0;           	
		I2C1->CON.SI=0;  
	
    if (I2C1->STATUS != 0x08)	            
    {
       	printf("I2CD_STArt fail,I2D_STATUS %02X\r\n",I2C1->STATUS);
				return FALSE;
    }
		
    //进入读写控制操作  
    I2C1->DATA = EEPROM_SLA | EEPROM_WR;
    I2C1->CON.SI=1;
    while (I2C1->CON.SI!=0);
    if (I2C1->STATUS != 0x18)              
    {
	    printf("I2C write control fail\r\n");
	    return FALSE;
    }
	//写入读地址
    I2C1->DATA = unAddr;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI!=0);
    if (I2C1->STATUS!= 0x28)              
    {
        printf("I2C write addr fail\r\n");
	    return FALSE;
    }
    // 重新启动
    I2C1->CON.STA=1;          
    I2C1->CON.SI=1;                               	
    while (I2C1->CON.SI!=0);                	
    I2C1->CON.STA=0;
		I2C1->CON.SI=0;	
		
    if (I2C1->STATUS != 0x10)                      	
    {
        printf("I2C repeated D_STArt fail\r\n");
				return FALSE;
    }
    //进入读操作  
    I2C1->DATA = EEPROM_SLA | EEPROM_RD;
    I2C1->CON.SI=1;
    while (I2C1->CON.SI==0);	    
    if (I2C1->STATUS != 0x40)              
    {
        printf("I2C write control fail\r\n");
        while (1);
    }
	//读取数据
	I2C1->CON.AA= 1;
	for(i=0; i<unLength; i++)
	{
		I2C1->CON.SI=1; 
		while (I2C1->CON.SI==0);
		if (I2C1->STATUS != 0x50)              
		{
		   printf("I2C read fail\r\n");
		   return FALSE;
		}		
		*(pucDATD_AA+i) = I2C1->DATA;	
	} 	   
    //发送NACK到AT24C02，执行断开连接操作
    I2C1->CON.AA=0;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);  
    //停止
    I2C1->CON.STO=0;
    I2C1->CON.SI=1;
    while (I2C1->CON.STO==1);                      
		return 0;
}

//**************************************
//合成数据
//**************************************
int GetData(unsigned char REG_Address)
{
	int ret;
	char H,L;
	H=MPU_ReadReg(REG_Address);
	L=MPU_ReadReg(REG_Address+1);
	ret= (H<<8)+L;   //合成数据
	if(ret>32768) return ret-65536;
	else return ret;
}