//用于TG12864
//串口通信
#include <stdio.h>
#include "NUC1xx.h"
#include "DrvGPIO.h"
#include "DrvSYS.h"
#define LCD_CS  	 E_GPA,8 ;
#define LCD_STD  	 E_GPA,7 ;
#define LCD_EN		 E_GPA,6 ;
#define LCD_RST		 E_GPA,5 ;

#define		FirstLine_Start		0x80
#define		SecondLine_Start	0x90
#define		ThirdLine_Start		0x88
#define		FourthLine_Start	0x98
#define 	comm_flag  0
#define 	data_flag  1

void WriteLCM(int32_t data_comm,int32_t in_com)	   ;
void LCMInit(void)									;
void Chn_disp_char( char *chn, int32_t line_pos, int32_t dis_pos) ;
void Digtal_disp( int32_t digt, int32_t line_pos, int32_t dis_pos) ;
void ADC_OUTPUT_Display( uint32_t r_adc_data );                   //adc采样电压显示在屏幕上
