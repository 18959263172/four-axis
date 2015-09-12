#include"hal_spi.h"
#include"nrf24l01.h"
#include "DrvGPIO.h"

unsigned char  TxAddr[]={0x34,0x43,0x10,0x10,0x01};//????
unsigned char  RxAddr[]={0x34,0x43,0x10,0x10,0x02};//????
void delay_s()
{
	int z=231;
	for(z=0;z<10;z++)
{}
}
void RX_Mode(void)
{     
	DrvGPIO_ClrBit(E_GPB, 0x01);	
	nrf_writebuf(W_REGISTER+TX_ADDR,(uchar*)TxAddr,5);//写TX节点地址 
	nrf_writebuf(W_REGISTER+RX_ADDR_P0,(uchar*)RxAddr,5); //设置TX节点地址,主要为了使能ACK  
	
	nrf_write(W_REGISTER + EN_AA, 0x01); // Enable Auto.Ack:Pipe0
	nrf_write(W_REGISTER + EN_RXADDR, 0x01); // Enable Pipe0
	nrf_write(W_REGISTER + RF_CH, 40); // Select RF channel 40
	nrf_write(W_REGISTER + RX_PW_P0, 4);
	nrf_write(W_REGISTER + RF_SETUP, 0x0f);
	nrf_write(W_REGISTER + CONFIG, 0x0f); // Set PWR_UP bit, enable CRC(2 bytes)
	DrvGPIO_SetBit(E_GPB,1);	// This device is now ready to receive one packet of 16 bytes payload from a TX device
// '3443101001', with auto acknowledgment, retransmit count of 10, RF channel 40 and
}

/*****************NRF????????????******************************/
void NRFSetTxMode(uchar *TxDate)
{//????		 
		char ret;
		DrvGPIO_ClrBit(E_GPB, 1);	
  	nrf_writebuf(W_REGISTER+TX_ADDR,(uchar*)TxAddr,5);//写TX节点地址 
  	nrf_writebuf(W_REGISTER+RX_ADDR_P0,(uchar*)TxAddr,5); //设置TX节点地址,主要为了使能ACK
		ret=nrf_read(STATUS);
		delay_s();
  	nrf_write(W_REGISTER+STATUS,0x10);     //使能通道0的自动应答    
		ret=nrf_read(STATUS);
	
  	nrf_write(W_REGISTER+EN_AA,0x01);     //使能通道0的自动应答    
  	nrf_write(W_REGISTER+EN_RXADDR,0x01); //使能通道0的接收地址  
  	nrf_write(W_REGISTER+SETUP_RETR,0x1a);//设置自动重发间隔时间:500us + 86us;最大自动重发次数:10次
  	nrf_write(W_REGISTER+RF_CH,40);       //设置RF通道为40
  	nrf_write(W_REGISTER+RF_SETUP,0x0f);  //设置TX发射参数,0db增益,2Mbps,低噪声增益开启   
  	nrf_write(W_REGISTER+CONFIG,0x0e);    //配置基本工作模式的参数;PWR_UP,EN_CRC,16BIT_CRC,接收模式,开启所有中断
		DrvGPIO_SetBit(E_GPB,1);	// This device is now ready to receive one packet of 16 bytes payload from a TX device  
}		  

//启动NRF24L01发送一次数据
//txbuf:待发送数据首地址
//返回值:发送完成状况

unsigned char NRF24L01_TxPacket(unsigned char *txbuf)
{
	unsigned char sta;
	DrvGPIO_ClrBit(E_GPB, 1);	
  nrf_writebuf(W_TX_PAYLOAD,txbuf,TX_DATA_WITDH);//写数据到TX BUF  32个字节
 	DrvGPIO_SetBit(E_GPB,1);	// This device is now ready to receive one packet of 16 bytes payload from a TX device
	while(DrvGPIO_GetBit(E_GPB, 2)!=0);//等待发送完成
	sta=nrf_read(STATUS);  //读取状态寄存器的值	   
	nrf_write(W_REGISTER+STATUS,sta); //清除TX_DS或MAX_RT中断标志
	if(sta&0x10)//达到最大重发次数
	{
		nrf_wf(FLUSH_TX);//清除TX FIFO寄存器 
			nrf_write(W_REGISTER+STATUS,sta); //清除TX_DS或MAX_RT中断标志	
		sta=nrf_read(STATUS);  //读取状态寄存器的值	   
	
		return 0x10; 
	}
	if(sta&0x20)//发送完成
	{
		return 0x20;
	}
	return 0xff;//其他原因发送失败
}
unsigned char nrf_dump()
{
	/*
	nrf_write(W_REGISTER + EN_AA, 0x00); // Enable Auto.Ack:Pipe0
	nrf_write(W_REGISTER + EN_RXADDR, 0x01); // Enable Pipe0
	nrf_write(W_REGISTER + RF_CH, 40); // Select RF channel 40
	nrf_write(W_REGISTER + RX_PW_P0, 4);
	nrf_write(W_REGISTER + RF_SETUP, 0x0f);
	nrf_write(W_REGISTER + CONFIG, 0x0f); // Set PWR_UP bit, enable CRC(2 bytes)
	  */
	char ret;
	ret=nrf_read(EN_AA);
	delay_s();
	ret=nrf_read(EN_RXADDR);
	delay_s();
	ret=nrf_read(RF_CH);
	delay_s();
	ret=nrf_read(RX_PW_P0);
	delay_s();
	ret=nrf_read(RF_SETUP);
	delay_s();
	ret=nrf_read(CONFIG);
	delay_s();	  
	ret=nrf_read(CD);
	delay_s();
	ret=nrf_read(STATUS);
	delay_s();
}

unsigned char NRF24L01_Read_Buf(unsigned char reg,unsigned char *pBuf,unsigned char len)
{
		unsigned char status,u8_ctr;
		spi_enable();
  	status=spi_send(reg);   
		for(u8_ctr=0;u8_ctr<len;u8_ctr++)pBuf[u8_ctr]=spi_read(0XFF);//????
  	return status;   
	spi_disable();
	
}




unsigned char NRF24L01_RxPacket(unsigned char *rxbuf)
{
	unsigned char sta;		    							   
	//SPIx_SetSpeed(SPI_SPEED_8); //spi速度为9Mhz（24L01的最大SPI时钟为10Mhz）   
	sta=nrf_read(STATUS);  //读取状态寄存器的值    	 
	nrf_write(W_REGISTER+STATUS,sta); //清除TX_DS或MAX_RT中断标志
	if(sta&0x40)//接收到数据
	{
		NRF24L01_Read_Buf(0x61,rxbuf,TX_DATA_WITDH);//读取数据
		nrf_write(FLUSH_RX,0xff);//清除RX FIFO寄存器 
		return 0; 
	}	   
	return 1;//没收到任何数据
}
