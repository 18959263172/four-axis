/////////////////////////////////////////////////////////////////////////////////////////////
//LCM显示程序
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
    WriteLCM(0,0x30);  //基本指令
    WriteLCM(0,0x01);   //清屏处理
} 
void write1616GDRAM(uchar x,uchar y,uchar sign,uchar *bmp)	
{ 
	uchar i,j,basex;
	WriteLCM(0,0x36);      //扩展指令，写图片时，关图片显示
	if(y==1||y==2)	  //第一第二行
	{
		basex=0x80;	   //上半屏
		y=(y-1)*16;	  //垂直位址从0X80开始.
	}
	if(y==3||y==4)	//第三第四行
	{
		basex=0x88;	 //下半屏
		y=(y-3)*16;	 //垂直位址都是从0X80开始的，不管上下半屏。
	}
	for(i=0;i<16;i++)	//
	{															
		WriteLCM(0,0x80+y+i);  //写入垂直位址。
		WriteLCM(0,basex+x-1); //再写入水平位址(上半屏第一字为0X80，……第七字为0X87)
							   //下半屏第一字为0X88，……第七字为0X8F；
		for(j=0;j<2;j++)   //再写入两个8位元的数据,AC会自动增一，接着写数据
		{
			if(sign==1)  
				WriteLCM(1,~(*bmp++));
			else  
				WriteLCM(1,*bmp++);
		}
	}	
	WriteLCM(0,0x36);  //写完数据，开图片显示     
}
/**********************************************************
//函数功能:使用绘图的方法让一行反白
//形式参数:uchar row,uchar bkcor
//行参说明:坐标水平位置,坐标垂直位置,反白行数,要反白还是清除(1:反白,0:清除)
//返回参数:无
//使用说明:无
**********************************************************/    

void setrowbkcolor(uchar row,uchar bkcor)	
{ 
	uchar i,j,basex,basey,color;
	if(bkcor==1)	color=0xff;	  //全写入0XFF，反白。
	if(bkcor==0)	color=0x00;	 //全写入0X00，消白。
	WriteLCM(0,0x36);      //扩展指令，写图片时，关图片显示
	if(row==1||row==2)	  //第一第二行
	{
		basex=0x80;	   //上半屏
	}
	if(row==3||row==4)	//第三第四行
	{
		basex=0x88;	 //下半屏
		row=row-2;	 //垂直位址都是从0X80开始的，不管上下半屏。
	}
	basey=0x80+(row-1)*16;	//从哪一行的首行点阵开始
	for(i=0;i<16;i++)	//一行有16行点阵
	{															
		WriteLCM(0,basey+i);  //写入垂直位址。
		WriteLCM(0,basex); //水平位址(上半屏第一字为0X80)//下半屏第一字为0X88；
							     
		for(j=0;j<16;j++)   //再写入两个8位元的数据,AC会自动增一，接着写数据
			WriteLCM(1,color);  
	}	
	WriteLCM(0,0x36);  //写完数据，开图片显示     
}
////////////////////////////////////////////////////////////////////////////////
void LCMInit(void)		//LCM初始化
{ 
	DrvGPIO_ClrBit(E_GPC,5 );
    DrvSYS_Delay(6000);
 	DrvGPIO_SetBit(E_GPC,5 );  
    WriteLCM(0,0x30)	;			 //设接口数据位数(DL),显示行数(L),及字型(F)
    DrvSYS_Delay(6000);
	WriteLCM(0,0x01)	;		 //清屏指令
    DrvSYS_Delay(6000);	
	WriteLCM(0,0x0c)	;	   //设整体显示开关(D),光标开关关(C),及光标位的字符不闪耀(B)
    DrvSYS_Delay(6000);
	WriteLCM(0,0x06)	;	   //7设光标移动方向并指定整体显示是否移动
    DrvSYS_Delay(6000);
	WriteLCM(0,0x01)	;		//清屏指令
    DrvSYS_Delay(6000); 	
	WriteLCM(0,0x80)	;		//设DDRAM地址,设置后DDRAM数据被发送和接收
}
/////////////////////////////////////////////////////////////////////////
//写汉字
//输入char[]={"显示的字"},行数，列数				显示数字时，如果列数为0，则接着显示
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
//写数字
//输入 （数字，行数，列数）
void	Digtal_disp( int32_t digt, int32_t line_pos, int32_t dis_pos)
{
	char digt_ []={""};
	sprintf(digt_,"%.2d",digt);
	Chn_disp_char(digt_,line_pos,dis_pos);
}

void photodisplay(const uchar *bmp)	
{ 
	  uchar i,j;
	  WriteLCM(0,0x36);      //扩展指令，写图片时，关图片显示
	  for(i=0;i<32;i++)
	  {														
		    WriteLCM(0,0x80+i);    //先写入垂直位址(32行，此为上32行)
		    WriteLCM(0,0x80);      //再写入水平位址(选上下半屏，此为上半屏)
		    for(j=0;j<16;j++)   //再写入两个8位元的数据,AC会自动增一，接着写数据
		    	WriteLCM(1,*bmp++);   

	  }	 
	  for(i=0;i<32;i++)
	  { 
		    WriteLCM(0,0x80+i);	//先写入垂直位址(32行，此为下32行)
		    WriteLCM(0,0x88);		//再写入水平位址(选上下半屏，此为下半屏)
		    for(j=0;j<16;j++)	//再写入两个8位元的数据,AC会自动增一，接着写数据
				WriteLCM(1,*bmp++);
	  }	   
	  WriteLCM(0,0x36);  //写完数据，开图片显示     
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
	WriteLCM(0,0x36);      //扩展指令，写图片时，关图片显示
	if(row==1||row==2)	  //第一第二行
	{
		basex=0x80;	   //上半屏
	}
	if(row==3||row==4)	//第三第四行
	{
		basex=0x88;	 //下半屏
		row=row-2;	 //垂直位址都是从0X80开始的，不管上下半屏。
	}
	basey=0x80+(row-1)*16;	//从哪一行的首行点阵开始
												
	WriteLCM(0,basey+y);  //写入垂直位址。
	WriteLCM(0,basex+x); //水平位址(上半屏第一字为0X80)//下半屏第一字为0X88；
	WriteLCM(1,0x80);  
	WriteLCM(0,0x36);  //写完数据，开图片显示     
}


