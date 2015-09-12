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
*��������:AT24C0XWrite
*��    ��:unAddr   д��ַ
          pucDATD_AA  д����
		  unLength д����
*��    ��:TRUE/FALSE
*��    ��:AT24C0Xд����
******************************************/
int MPU_WriteReg( char RegAddr, char pucDATD_AA)
{
	int i=0;	  
    I2C1->CON.ENSI=0;
    I2C1->CON.ENSI=1;

	while(i<32) i++;	   
    I2C1->CON.STA=1;         			    //����                    	
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x08)	            
    {
       	printf("I2CD_STArt fail,I2D_STATUS %02X\r\n",I2C1->STATUS);
				return FALSE;
    }	        
	I2C1->CON.SI=1;              			
    //�����д���Ʋ���  
    I2C1->DATA = 0xd0;
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x18)              
    {
	    printf("I2C write ADW fail\r\n");
	    return FALSE;
    }
	    I2C1->CON.STA=0;  
	I2C1->CON.SI=1; 
	//д�����ַ
    I2C1->DATA = RegAddr;
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS!= 0x28)              
    {
        printf("I2C write reg addr fail\r\n");
	    return FALSE;
    }
	I2C1->CON.SI=1;     
	//д������  
	I2C1->DATA = pucDATD_AA;  
	  	
    while (I2C1->CON.SI==0);	    
    if (I2C1->STATUS != 0x28)              
    {					
        printf("I2C write control fail\r\n");
        while (1);
    }
	//��ȡ����
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);  
    //ֹͣ	  
	I2C1->CON.SI=1; 
    I2C1->CON.STO=1;
	while(I2C1->CON.STO==1)   ;     
	//printf("I2C write ok\r\n");
		return 0;

}
/*****************************************
*��������:AT24C0XRead
*��    ��:unAddr   ����ַ
          pucDATD_AA  ������
		  unLength ������
*��    ��:TRUE/FALSE
*��    ��:AT24C0X������
******************************************/
char MPU_ReadReg( int unAddr/*, int unLength*/)
{
	char ret;
		 int i=0;   	 
    I2C1->CON.ENSI=0;
    I2C1->CON.ENSI=1;

	while(i<32) i++;
    I2C1->CON.STA=1;

	         			    //����                    	
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x08)	            
    {
       	printf("I2CD_STArt fail,I2D_STATUS %02X\r\n",I2C1->STATUS);
				return FALSE;
    }	  
	I2C1->CON.STA=0;         
	I2C1->CON.SI=1;              			
    //�����д���Ʋ���  
    I2C1->DATA = 0xd0;
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS != 0x18)              
    {
	    printf("I2C write ADW fail\r\n");
	    return FALSE;
    }
	//д�����ַ
    I2C1->DATA = unAddr;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);
    if (I2C1->STATUS!= 0x28)              
    {
        printf("I2C write reg addr fail\r\n");
	    return FALSE;
    }
    // ��������	
     
            
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
    //���������  
    I2C1->DATA = 0xd0 | 1;
    while (I2C1->CON.SI==0);	    
    if (I2C1->STATUS != 0x40)              
    {					
        printf("I2C write control fail\r\n");
        while (1);
    }
	//��ȡ����
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
    //ֹͣ
    I2C1->CON.STO=0;
    I2C1->CON.SI=1;
    while (I2C1->CON.STO==1);                      
		return ret;
}


/*****************************************
*��������:MPU_ReadBuf
*��    ��:unAddr   ����ַ
          pucDATD_AA  ������
		  unLength ������
*��    ��:TRUE/FALSE
*��    ��:AT24C0X������
******************************************/
int MPU_ReadBuf( int unAddr, char *pucDATD_AA, int unLength)
{
		 int i;
    I2C1->CON.STA=1;         			    //����
    I2C1->CON.SI=1;                      	
    while (I2C1->CON.SI==0);	        
    I2C1->CON.STA=0;           	
		I2C1->CON.SI=0;  
	
    if (I2C1->STATUS != 0x08)	            
    {
       	printf("I2CD_STArt fail,I2D_STATUS %02X\r\n",I2C1->STATUS);
				return FALSE;
    }
		
    //�����д���Ʋ���  
    I2C1->DATA = EEPROM_SLA | EEPROM_WR;
    I2C1->CON.SI=1;
    while (I2C1->CON.SI!=0);
    if (I2C1->STATUS != 0x18)              
    {
	    printf("I2C write control fail\r\n");
	    return FALSE;
    }
	//д�����ַ
    I2C1->DATA = unAddr;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI!=0);
    if (I2C1->STATUS!= 0x28)              
    {
        printf("I2C write addr fail\r\n");
	    return FALSE;
    }
    // ��������
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
    //���������  
    I2C1->DATA = EEPROM_SLA | EEPROM_RD;
    I2C1->CON.SI=1;
    while (I2C1->CON.SI==0);	    
    if (I2C1->STATUS != 0x40)              
    {
        printf("I2C write control fail\r\n");
        while (1);
    }
	//��ȡ����
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
    //����NACK��AT24C02��ִ�жϿ����Ӳ���
    I2C1->CON.AA=0;
    I2C1->CON.SI=1; 
    while (I2C1->CON.SI==0);  
    //ֹͣ
    I2C1->CON.STO=0;
    I2C1->CON.SI=1;
    while (I2C1->CON.STO==1);                      
		return 0;
}

//**************************************
//�ϳ�����
//**************************************
int GetData(unsigned char REG_Address)
{
	int ret;
	char H,L;
	H=MPU_ReadReg(REG_Address);
	L=MPU_ReadReg(REG_Address+1);
	ret= (H<<8)+L;   //�ϳ�����
	if(ret>32768) return ret-65536;
	else return ret;
}