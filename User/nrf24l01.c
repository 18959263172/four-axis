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
	nrf_writebuf(W_REGISTER+TX_ADDR,(uchar*)TxAddr,5);//дTX�ڵ��ַ 
	nrf_writebuf(W_REGISTER+RX_ADDR_P0,(uchar*)RxAddr,5); //����TX�ڵ��ַ,��ҪΪ��ʹ��ACK  
	
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
  	nrf_writebuf(W_REGISTER+TX_ADDR,(uchar*)TxAddr,5);//дTX�ڵ��ַ 
  	nrf_writebuf(W_REGISTER+RX_ADDR_P0,(uchar*)TxAddr,5); //����TX�ڵ��ַ,��ҪΪ��ʹ��ACK
		ret=nrf_read(STATUS);
		delay_s();
  	nrf_write(W_REGISTER+STATUS,0x10);     //ʹ��ͨ��0���Զ�Ӧ��    
		ret=nrf_read(STATUS);
	
  	nrf_write(W_REGISTER+EN_AA,0x01);     //ʹ��ͨ��0���Զ�Ӧ��    
  	nrf_write(W_REGISTER+EN_RXADDR,0x01); //ʹ��ͨ��0�Ľ��յ�ַ  
  	nrf_write(W_REGISTER+SETUP_RETR,0x1a);//�����Զ��ط����ʱ��:500us + 86us;����Զ��ط�����:10��
  	nrf_write(W_REGISTER+RF_CH,40);       //����RFͨ��Ϊ40
  	nrf_write(W_REGISTER+RF_SETUP,0x0f);  //����TX�������,0db����,2Mbps,���������濪��   
  	nrf_write(W_REGISTER+CONFIG,0x0e);    //���û�������ģʽ�Ĳ���;PWR_UP,EN_CRC,16BIT_CRC,����ģʽ,���������ж�
		DrvGPIO_SetBit(E_GPB,1);	// This device is now ready to receive one packet of 16 bytes payload from a TX device  
}		  

//����NRF24L01����һ������
//txbuf:�����������׵�ַ
//����ֵ:�������״��

unsigned char NRF24L01_TxPacket(unsigned char *txbuf)
{
	unsigned char sta;
	DrvGPIO_ClrBit(E_GPB, 1);	
  nrf_writebuf(W_TX_PAYLOAD,txbuf,TX_DATA_WITDH);//д���ݵ�TX BUF  32���ֽ�
 	DrvGPIO_SetBit(E_GPB,1);	// This device is now ready to receive one packet of 16 bytes payload from a TX device
	while(DrvGPIO_GetBit(E_GPB, 2)!=0);//�ȴ��������
	sta=nrf_read(STATUS);  //��ȡ״̬�Ĵ�����ֵ	   
	nrf_write(W_REGISTER+STATUS,sta); //���TX_DS��MAX_RT�жϱ�־
	if(sta&0x10)//�ﵽ����ط�����
	{
		nrf_wf(FLUSH_TX);//���TX FIFO�Ĵ��� 
			nrf_write(W_REGISTER+STATUS,sta); //���TX_DS��MAX_RT�жϱ�־	
		sta=nrf_read(STATUS);  //��ȡ״̬�Ĵ�����ֵ	   
	
		return 0x10; 
	}
	if(sta&0x20)//�������
	{
		return 0x20;
	}
	return 0xff;//����ԭ����ʧ��
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
	//SPIx_SetSpeed(SPI_SPEED_8); //spi�ٶ�Ϊ9Mhz��24L01�����SPIʱ��Ϊ10Mhz��   
	sta=nrf_read(STATUS);  //��ȡ״̬�Ĵ�����ֵ    	 
	nrf_write(W_REGISTER+STATUS,sta); //���TX_DS��MAX_RT�жϱ�־
	if(sta&0x40)//���յ�����
	{
		NRF24L01_Read_Buf(0x61,rxbuf,TX_DATA_WITDH);//��ȡ����
		nrf_write(FLUSH_RX,0xff);//���RX FIFO�Ĵ��� 
		return 0; 
	}	   
	return 1;//û�յ��κ�����
}
