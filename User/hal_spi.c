#include "NUC1xx.h"
#include "DrvGPIO.h"
#define uchar unsigned char
void spi_init()
{
	SYSCLK->APBCLK.SPI0_EN = 1;
	SYS->IPRSTC2.SPI0_RST=1;
	SYS->IPRSTC2.SPI0_RST=0;

	SYS->GPCMFP.SPI0_SS0_I2SLRCLK = 1;
	SYS->GPCMFP.SPI0_CLK_I2SBCLK = 1;
	SYS->GPCMFP.SPI0_MISO0_I2SDI = 1;
	SYS->GPCMFP.SPI0_MOSI0_I2SDO = 1;
	SYS->ALTMFP.PC2_I2SDI=0;
	SYS->ALTMFP.PC3_I2SDO=0;
	DrvGPIO_Open(E_GPB, 0, E_IO_OUTPUT);
	DrvGPIO_SetBit(E_GPB, 0);	

	SPI0->DIVIDER.DIVIDER=5;

	SPI0->SSR.AUTOSS=0;
	SPI0->SSR.SS_LTRIG=1;
	
	SPI0->SSR.SSR=0;
	
	SPI0->CNTRL.CLKP=0;  //set sclk
	SPI0->CNTRL.TX_BIT_LEN=0x08;  //set data length
}
uchar spi_enable()
{
	SPI0->SSR.SSR=1;
}
uchar spi_disable()
{
	SPI0->SSR.SSR=0;
}/*
	
/*
	
*/
uchar spi_send(unsigned char data)
{
	SPI0->TX[0]=data;
	SPI0->CNTRL.GO_BUSY=0x01;
	while(SPI0->CNTRL.GO_BUSY==1) ;
	
	//SPI0->CNTRL.IF=1;
	
	return SPI0->RX[0];
}
/*
	
*/
uchar spi_read()
{
	uchar ret;
	SPI0->TX[0]=0xff;
	SPI0->CNTRL.GO_BUSY=0x01;
	while(SPI0->CNTRL.GO_BUSY==1) ;
	ret=SPI0->RX[0];
	SPI0->CNTRL.IF=1;
	return ret;
}

uchar nrf_read(uchar adress)
{
	uchar ret;
	spi_enable();
	spi_send(adress);

	ret= spi_read();
	spi_disable();
	return ret;
	
}



uchar nrf_wf(dat)
{
	uchar ret;
	spi_enable();
	spi_send(dat);
	spi_disable();
	return ret;
}

uchar nrf_write(uchar adress,uchar data)
{
	uchar ret;
	spi_enable();
	spi_send(adress);
	spi_send(data);
	spi_disable();
	return ret;
}

/*****************SPI??TXFIFO?????**********************************/
uchar NRFWriteTxDate(uchar RegAddr,uchar *TxDate,uchar DateLen)
{ 
	uchar BackDate,i;
	BackDate=spi_send(RegAddr);
	for(i=0;i<DateLen;i++) 
	{
		spi_send(*TxDate++);
	}   
   return(BackDate);
}


//��ָ��λ��дָ�����ȵ�����
//reg:�Ĵ���(λ��)
//*pBuf:����ָ��
//len:���ݳ���
//����ֵ,�˴ζ�����״̬�Ĵ���ֵ
uchar nrf_writebuf(uchar reg, uchar *pBuf, uchar len)
{
	uchar status,u8_ctr;	    
	spi_enable();
  	status = spi_send(reg);//���ͼĴ���ֵ(λ��),����ȡ״ֵ̬
  	for(u8_ctr=0; u8_ctr<len; u8_ctr++)spi_send(*pBuf++); //д������	 
		spi_disable();  	
	return status;          //���ض�����״ֵ̬
}				