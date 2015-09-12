/////////////////////////////////////////////////////////////////////////////////////////////
//LCM��ʾ����
//2011.12.30 by xiaowei
/////////////////////////////////////////////////////////////////////////////////////////////
#include <stdio.h>
#include "NUC1xx.h"
#include "DrvGPIO.h"
#include "DrvSYS.h"
#include "lcm.h"
#define uchar unsigned char
void WriteLCM(int32_t data_comm,int32_t in_com)			//1 for data,0 for comm
{  
   int32_t com,i,j,std;
       DrvSYS_Delay(100);
   	    	com = in_com;

		  DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;
    	  DrvGPIO_SetBit(E_GPC,2);//LCD_STD = 1;
	     	for(i=5;i>0;i--)
			{
  			DrvGPIO_SetBit( E_GPC,3); //LCD_EN = 1;
			DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;			
			}

  			DrvGPIO_ClrBit(E_GPC,2);//LCD_STD = 0;
   			DrvGPIO_SetBit( E_GPC,3); //LCD_EN = 1;
			DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;

			if(data_comm==1)
				DrvGPIO_SetBit(E_GPC,2);//LCD_STD = 1;	   11111010
			else
    			DrvGPIO_ClrBit(E_GPC,2);//LCD_STD = 0;	   11111000
   			DrvGPIO_SetBit( E_GPC,3); //LCD_EN = 1;
			DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;

      			DrvGPIO_ClrBit(E_GPC,2);//LCD_STD = 0;
			DrvGPIO_SetBit( E_GPC,3); //LCD_EN = 1;
			DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;
  
	for(j=2;j>0;j--)
	{
		for(i=4;i>0;i--)
		{
			
			std=com&0x80;
			if(std==0x80)
				DrvGPIO_SetBit(E_GPC,2);   //LCD_STD = 1;	
			else
				DrvGPIO_ClrBit(E_GPC,2);   //LCD_STD = 0;	
				com=com<<1;
			DrvGPIO_SetBit( E_GPC,3); //LCD_EN = 1;
			DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;
		}
		DrvGPIO_ClrBit(E_GPC,2);   //LCD_STD = 0;
		for(i=4;i>0;i--)
		{
			DrvGPIO_SetBit( E_GPC,3); //LCD_EN = 1;
			DrvGPIO_ClrBit( E_GPC,3); //LCD_EN = 0;
		}
	}
} 

void Clean_12864(void)     
{
    WriteLCM(0,0x30);  //����ָ��
    WriteLCM(0,0x01);   //��������
} 
void write1616GDRAM(uchar x,uchar y,uchar sign,uchar *bmp)	
{ 
	uchar i,j,basex;
	WriteLCM(0,0x36);      //��չָ�дͼƬʱ����ͼƬ��ʾ
	if(y==1||y==2)	  //��һ�ڶ���
	{
		basex=0x80;	   //�ϰ���
		y=(y-1)*16;	  //��ֱλַ��0X80��ʼ.
	}
	if(y==3||y==4)	//����������
	{
		basex=0x88;	 //�°���
		y=(y-3)*16;	 //��ֱλַ���Ǵ�0X80��ʼ�ģ��������°�����
	}
	for(i=0;i<16;i++)	//
	{															
		WriteLCM(0,0x80+y+i);  //д�봹ֱλַ��
		WriteLCM(0,basex+x-1); //��д��ˮƽλַ(�ϰ�����һ��Ϊ0X80������������Ϊ0X87)
							   //�°�����һ��Ϊ0X88������������Ϊ0X8F��
		for(j=0;j<2;j++)   //��д������8λԪ������,AC���Զ���һ������д����
		{
			if(sign==1)  
				WriteLCM(1,~(*bmp++));
			else  
				WriteLCM(1,*bmp++);
		}
	}	
	WriteLCM(0,0x36);  //д�����ݣ���ͼƬ��ʾ     
}
/**********************************************************
//��������:ʹ�û�ͼ�ķ�����һ�з���
//��ʽ����:uchar row,uchar bkcor
//�в�˵��:����ˮƽλ��,���괹ֱλ��,��������,Ҫ���׻������(1:����,0:���)
//���ز���:��
//ʹ��˵��:��
**********************************************************/    

void setrowbkcolor(uchar row,uchar bkcor)	
{ 
	uchar i,j,basex,basey,color;
	if(bkcor==1)	color=0xff;	  //ȫд��0XFF�����ס�
	if(bkcor==0)	color=0x00;	 //ȫд��0X00�����ס�
	WriteLCM(0,0x36);      //��չָ�дͼƬʱ����ͼƬ��ʾ
	if(row==1||row==2)	  //��һ�ڶ���
	{
		basex=0x80;	   //�ϰ���
	}
	if(row==3||row==4)	//����������
	{
		basex=0x88;	 //�°���
		row=row-2;	 //��ֱλַ���Ǵ�0X80��ʼ�ģ��������°�����
	}
	basey=0x80+(row-1)*16;	//����һ�е����е���ʼ
	for(i=0;i<16;i++)	//һ����16�е���
	{															
		WriteLCM(0,basey+i);  //д�봹ֱλַ��
		WriteLCM(0,basex); //ˮƽλַ(�ϰ�����һ��Ϊ0X80)//�°�����һ��Ϊ0X88��
							     
		for(j=0;j<16;j++)   //��д������8λԪ������,AC���Զ���һ������д����
			WriteLCM(1,color);  
	}	
	WriteLCM(0,0x36);  //д�����ݣ���ͼƬ��ʾ     
}
////////////////////////////////////////////////////////////////////////////////
void LCMInit(void)		//LCM��ʼ��
{ 
	DrvGPIO_ClrBit(E_GPC,5 );
    DrvSYS_Delay(6000);
 	DrvGPIO_SetBit(E_GPC,5 );  
    WriteLCM(0,0x30)	;			 //��ӿ�����λ��(DL),��ʾ����(L),������(F)
    DrvSYS_Delay(6000);
	WriteLCM(0,0x01)	;		 //����ָ��
    DrvSYS_Delay(6000);	
	WriteLCM(0,0x0c)	;	   //��������ʾ����(D),��꿪�ع�(C),�����λ���ַ�����ҫ(B)
    DrvSYS_Delay(6000);
	WriteLCM(0,0x06)	;	   //7�����ƶ�����ָ��������ʾ�Ƿ��ƶ�
    DrvSYS_Delay(6000);
	WriteLCM(0,0x01)	;		//����ָ��
    DrvSYS_Delay(6000); 	
	WriteLCM(0,0x80)	;		//��DDRAM��ַ,���ú�DDRAM���ݱ����ͺͽ���
}
/////////////////////////////////////////////////////////////////////////
//д����
//����char[]={"��ʾ����"},����������				��ʾ����ʱ���������Ϊ0���������ʾ
void	Chn_disp_char( char *chn, int32_t line_pos, int32_t dis_pos)
{
char i=0,Start_pos;
	WriteLCM (comm_flag,0x30);
	switch(line_pos)
	{
		case 1:
			Start_pos=FirstLine_Start;
			break;
		case 2:
			Start_pos=SecondLine_Start;
			break;		
		case 3:
			Start_pos=ThirdLine_Start;
			break;
		case 4:
			Start_pos=FourthLine_Start;
			break;	
	}
	if(dis_pos!=0)
		WriteLCM (comm_flag,(Start_pos+dis_pos-1));
    while(chn[i]!='\0')
    {
	   	WriteLCM (data_flag,chn[i]);
	    i++;
	}
}

////////////////////////////////////////////////////////
//д����
//���� �����֣�������������
void	Digtal_disp( int32_t digt, int32_t line_pos, int32_t dis_pos)
{
	char digt_ []={""};
	sprintf(digt_,"%.2d",digt);
	Chn_disp_char(digt_,line_pos,dis_pos);
}

void photodisplay(const uchar *bmp)	
{ 
	  uchar i,j;
	  WriteLCM(0,0x36);      //��չָ�дͼƬʱ����ͼƬ��ʾ
	  for(i=0;i<32;i++)
	  {														
		    WriteLCM(0,0x80+i);    //��д�봹ֱλַ(32�У���Ϊ��32��)
		    WriteLCM(0,0x80);      //��д��ˮƽλַ(ѡ���°�������Ϊ�ϰ���)
		    for(j=0;j<16;j++)   //��д������8λԪ������,AC���Զ���һ������д����
		    	WriteLCM(1,*bmp++);   

	  }	 
	  for(i=0;i<32;i++)
	  { 
		    WriteLCM(0,0x80+i);	//��д�봹ֱλַ(32�У���Ϊ��32��)
		    WriteLCM(0,0x88);		//��д��ˮƽλַ(ѡ���°�������Ϊ�°���)
		    for(j=0;j<16;j++)	//��д������8λԪ������,AC���Զ���һ������д����
				WriteLCM(1,*bmp++);
	  }	   
	  WriteLCM(0,0x36);  //д�����ݣ���ͼƬ��ʾ     
}
void lcd_init()
{
	WriteLCM(0,0x30);
	WriteLCM(0,0x02);
	WriteLCM(0,0x06);
	WriteLCM(0,0x0c);
	WriteLCM(0,0x01);
	WriteLCM(0,0x80);
}
void point(uchar x,uchar y)	
{ 
	uchar basex,basey,row;
	if(16>y&&y>=0)  row=1;
	if(32>y&&y>=16) row=2;
	if(48>y&&y>=32) row=3;
	if(64>y&&y>=48) row=4;
	WriteLCM(0,0x36);      //��չָ�дͼƬʱ����ͼƬ��ʾ
	if(row==1||row==2)	  //��һ�ڶ���
	{
		basex=0x80;	   //�ϰ���
	}
	if(row==3||row==4)	//����������
	{
		basex=0x88;	 //�°���
		row=row-2;	 //��ֱλַ���Ǵ�0X80��ʼ�ģ��������°�����
	}
	basey=0x80+(row-1)*16;	//����һ�е����е���ʼ
												
	WriteLCM(0,basey+y);  //д�봹ֱλַ��
	WriteLCM(0,basex+x); //ˮƽλַ(�ϰ�����һ��Ϊ0X80)//�°�����һ��Ϊ0X88��
	WriteLCM(1,0x80);  
	WriteLCM(0,0x36);  //д�����ݣ���ͼƬ��ʾ     
}


