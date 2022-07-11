.syntax unified
//Decomment to select Microcontroller
.equ L152,1
//.equ F103,1
//.equ F4xx,1


//wait_ms Einstellungen
.equ frequenz,32000000
.equ Takte_pro_Schleifendurchlauf,5   //F4xx: 3, L152: 5, F103: 5



acc .req r12
dptr .req r11

//LCD_i2c
.equ	LCD_Adresse,0x3F

.equ Bit0,0b1
.equ Bit1,0b10
.equ Bit2,0b100
.equ Bit3,0b1000
.equ Bit4,0b10000
.equ Bit5,0b100000
.equ Bit6,0b1000000
.equ Bit7,0b10000000
.equ Bit8,0b100000000
.equ Bit9,0b1000000000
.equ Bit10,0b10000000000
.equ Bit11,0b100000000000
.equ Bit12,0b1000000000000
.equ Bit13,0b10000000000000
.equ Bit14,0b100000000000000
.equ Bit15,0b1000000000000000

.equ bit0,0b1
.equ bit1,0b10
.equ bit2,0b100
.equ bit3,0b1000
.equ bit4,0b10000
.equ bit5,0b100000
.equ bit6,0b1000000
.equ bit7,0b10000000
.equ bit8,0b100000000
.equ bit9,0b1000000000
.equ bit10,0b10000000000
.equ bit11,0b100000000000
.equ bit12,0b1000000000000
.equ bit13,0b10000000000000
.equ bit14,0b100000000000000
.equ bit15,0b1000000000000000

.equ EPort,0

//ARM Register
.equ VectorTableOffsetRegister,0xE000ED08
.equ ISRTabelle,ISRTabelle1	//0x20013000
//.global	ISRTabelle
//Systick	24Bit Downcounter
.equ SysTickCSR,0xE000E010
.equ SysTickRR,0xE000E014
.equ SysTickCVR,0xE000E018
.equ SysTickCalVR,0xE000E01C
.equ nvic,0xe000e000
.equ NVIC,0xe000e000

//Priorit�tenregister
.equ	PRI6,0xE000E406
.equ	PRI7,0xE000E407
.equ	PRI8,0xE000E408
.equ	PRI9,0xE000E409
.equ	PRI10,0xE000E40A
.equ	PRI23,0xE000E417
.equ	PRI28,0xE000E41C
.equ	PRI29,0xE000E41D
.equ	PRI40,0xE000E428
.equ	PRI43,0xE000E42B
.equ	PRI44,0xE000E42C
.equ	PRI_SysTick,0xE000ED23

//Gemeinsame STM32 Register
.equ tim2,0x40000000
.equ TIM2,0x40000000
.equ tim3,0x40000400
.equ TIM3,0x40000400
.equ tim4,0x40000800
.equ TIM4,0x40000800
.equ tim5,0x40000c00
.equ TIM5,0x40000c00

.equ tim6,0x40001000
.equ TIM6,0x40001000
.equ TIM6,0x40001000
.equ tim7,0x40001400
.equ TIM7,0x40001400
.equ tim8,0x40010400
.equ TIM8,0x40010400
.equ TIMx_CR1,0
.equ TIMx_CR2,4
.equ TIMx_SMCR,8
.equ TIMx_DIER,0x0c
.equ TIMx_SR,0x10
.equ TIMx_EGR,0x14
.equ TIMx_CCMR1,0x18
.equ TIMx_CCMR2,0x1c
.equ TIMx_CCER,0x20
.equ TIMx_CNT,0x24
.equ TIMx_PSC,0x28
.equ TIMx_ARR,0x2C
.equ TIMx_CCR1,0x34

.equ CR1,0
.equ CR2,4
.equ SMCR,8
.equ DIER,0x0c
.equ SR,0x10
.equ EGR,0x14
.equ CCMR1,0x18
.equ CCMR2,0x1c
.equ CCER,0x20
.equ CNT,0x24
.equ PSC,0x28
.equ ARR,0x2C
.equ CCR1,0x34

//Werte und Tabellen
.equ	ex0_nr,0
.equ	ex1_nr,1
.equ	ex2_nr,2
.equ	ex3_nr,3
.equ	ex4_nr,4
.equ	ex5_nr,5
.equ	ex6_nr,6
.equ	ex7_nr,7
.equ	ex8_nr,8
.equ	ex9_nr,9
.equ	ex10_nr,10
.equ	ex11_nr,11
.equ	ex12_nr,12
.equ	ex13_nr,13
.equ	ex14_nr,14
.equ	ex15_nr,15

.equ	uie6_nr,16
.equ	uie7_nr,17
.equ	usart2Int_nr,18
.equ	uie6_nr,19
.equ	uie7_nr,20
.equ	SysTick_nr,21


//vektorLocationTabelle:
.equ 	ex0Vector,0x58
.equ 	ex1Vector,0x5c
.equ 	ex2Vector,0x60
.equ 	ex3Vector,0x64
.equ 	ex4Vector,0x68
.equ 	ex5Vector,0x9c
.equ 	ex6Vector,0x9c
.equ 	ex7Vector,0x9c
.equ 	ex8Vector,0x9c
.equ 	ex9Vector,0x9c
.equ 	ex10Vector,0xe0
.equ 	ex11Vector,0xe0
.equ 	ex12Vector,0xe0
.equ 	ex13Vector,0xe0
.equ 	ex14Vector,0xe0
.equ 	ex15Vector,0xe0
.equ 	uie6Vector,0xec
.equ 	uie7Vector,0xf0
.equ 	uie2Vector,0xb0
.equ 	uie3Vector,0xb4
.equ 	usart2IntVector,0xD8
.equ	SysTickVector,0x3c

.equ	exAnf0,0
.equ	exAnf1,1
.equ	exAnf2,2
.equ	exAnf3,3
.equ	exAnf4,4
.equ	exAnf5,5
.equ	exAnf6,6
.equ	exAnf7,7
.equ	exAnf8,8
.equ	exAnf9,9
.equ	exAnf10,10
.equ	exAnf11,11
.equ	exAnf12,12
.equ	exAnf13,13
.equ	exAnf14,14
.equ	exAnf15,15


.ifdef L152
.equ rcc,0x40023800
.equ RCC,0x40023800
.equ RCC_APB2ENR,0x20
.equ APB2ENR,0x20
.equ RCC_APB1ENR,0x24
.equ APB1ENR,0x24
.equ RCC_CFGR,0x8
.equ RCC_AHBENR,0x1c
.equ AHBENR,0x1c
.equ ahbenr,0x1c

.equ flash,0x40023C00

.equ exti,0x40010400
.equ EXTI,0x40010400
.equ exti_RTSR,0x08
.equ exti_FTSR,0x0c
.equ exti_EMR,0x04
.equ exti_IMR,0x00
.equ EXTI_IMR,0x00
.equ exti_SWIER,0x10
.equ exti_PR,0x14
.equ EXTI_PR,0x14

.equ RTSR,0x08
.equ FTSR,0x0c
.equ EMR,0x04
.equ IMR,0x00
.equ SWIER,0x10
.equ PR,0x14

.equ SysCFG,0x40010000
.equ SYSCFG_EXTICR1,0x08
.equ SYSCFG_EXTICR2,0x0c
.equ SYSCFG_EXTICR3,0x10
.equ SYSCFG_EXTICR4,0x14
.equ EXTICR1,0x08
.equ EXTICR2,0x0c
.equ EXTICR3,0x10
.equ EXTICR4,0x14
.equ exticr1,0x08
.equ exticr2,0x0c
.equ exticr3,0x10
.equ exticr4,0x14

.equ RI,0x40007C00
.equ RI_HYSCR1,0x14
.equ RI_HYSCR2,0x18

.equ isrEnableReg1,0x104
.equ isrEnableReg0,0x100
.equ ISER0,0x100
.equ iser0,0x100
.equ ISER1,0x104
.equ iser1,0x104

.equ isrClrReg,0x284

.equ GPIOA,0x40020000
.equ gpioa,0x40020000
.equ GPIOB,0x40020400
.equ GPIOC,0x40020800
.equ GPIOx_MODER,0x00
.equ GPIOx_ODR,0x14
.equ GPIOx_IDR,0x10
.equ GPIOx_AFRL,0x20
.equ GPIOx_AFRH,0x24
.equ GPIOx_PUPDR,0x0C
.equ GPIOx_OTYPER,0x04
.equ GPIOx_BSRR,0x18
.equ GPIOx_BRR,0x18
.equ MODER,0x00
.equ ODR,0x14
.equ IDR,0x10
.equ AFRL,0x20
.equ AFRH,0x24
.equ PUPDR,0x0C
.equ OTYPER,0x04
.equ BSR,0x18
.equ BRR,0x1A
.equ moder,0x00
.equ odr,0x14
.equ idr,0x10
.equ afrl,0x20
.equ afrh,0x24
.equ pupdr,0x0C
.equ otyper,0x04
.equ bsr,0x18
.equ brr,0x1A

.equ ADC,0x40012400


.equ ADC_CR1,0x04
.equ ADC_CR1_OVRIE,0
.equ ADC_CR1_RES,0b00	//12-bit (TCONV = 12 ADCCLK cycles)
.equ ADC_CR1_AWDEN,0	//Analog watchdog disabled on regular channels
.equ ADC_CR1_JAWDEN,0	// Analog watchdog disabled on injected channels
.equ ADC_CR1_PDI,0		//The ADC is powered up when waiting for a start event
.equ ADC_CR1_PDD,0		//The ADC is powered up during the delay
.equ ADC_CR1_DISCNUM,0b000	// 1 channel
.equ ADC_CR1_JDISCEN,0	//Discontinuous mode on injected channels disabled
.equ ADC_CR1_DISCEN,0	//Discontinuous mode on regular channels disabled
.equ ADC_CR1_JAUTO,0	// Automatic injected group conversion disabled
.equ ADC_CR1_AWDSGL,0	//Analog watchdog enabled on all channels
.equ ADC_CR1_SCAN,0		//Scan mode disabled
.equ ADC_CR1_JEOCIE,0	//JEOC interrupt disabled
.equ ADC_CR1_AWDIE,0	// Analog watchdog interrupt disabled
.equ ADC_CR1_EOCIE,0	//EOC interrupt disabled
.equ ADC_CR1_AWDCH,0b00000	//ADC analog input ADC_IN0


.equ ADC_SQR5,0x40
.equ ADC_A0,0
.equ ADC_A1,1
.equ ADC_A2,4
.equ ADC_A3,26	//WNDWE geschlossen PB4
.equ ADC_A4,11	//PC1
.equ ADC_A5,10	//PC0

.equ ADC_DR,0x58

.equ ADC_CR2,0x08
.equ ADC_CR2_SWSTART,0
.equ ADC_CR2_EXTEN,0b00
.equ ADC_CR2_EXTSEL,0b0000
.equ ADC_CR2_JSWSTART,0
.equ ADC_CR2_JEXTEN,0b00
.equ ADC_CR2_JEXTSEL,0b0000
.equ ADC_CR2_ALIGN,0
.equ ADC_CR2_EOCS,1		//EOC set at End of each conversion
.equ ADC_CR2_DDS,0		//No DMA  request
.equ ADC_CR2_DMA,0		//DMA disabled
.equ ADC_CR2_DELS,0b001	//Until the converted data have been read (DR read or EOC=0 for regular conversions)
.equ ADC_CR2_ADC_CFG,0	//Bank A selected for channels ADC_IN0..31
.equ ADC_CR2_CONT,0		// Single conversion mode
.equ ADC_CR2_ADON,1		// Enable ADC: conversions can start as soon as a start event (hardware or software) is received.

//I2C1
.equ I2C1,0x40005400
.equ I2C1_CR1,0
.equ I2C1_CR2,4
.equ I2C1_OAR1,8
.equ I2C1_OAR2,0x0C
.equ I2C1_DR,0x10
.equ I2C1_SR1,0x14
.equ I2C1_SR2,0x18
.equ I2C1_CCR,0x1C
.equ I2C1_TRISE,0x20
.equ I2C1_FREQ,0x20		//32MHz
.equ I2C1_CCRValue,1600	//32MHz * 50�s =1600
.equ I2C1_TRISEValue,0x21	//32MHz * 1000ns +1

//USART2
.equ	USART2,0x40004400
.equ	USART2_SR,0x0
.equ	USART2_DR,0x04
.equ	USART2_BRR,0x08
.equ	USART2_CR1,0x0C
.equ	USART2_CR2,0x10
.equ	USART2_CR3,0x14
.equ	USART2_GTPR,0x18

//USART3
.equ	USART3,0x40004800
.equ	USART_SR,0x0
.equ	USART_DR,0x04
.equ	USART_BRR,0x08
.equ	USART_CR1,0x0C
.equ	USART_CR2,0x10
.equ	USART_CR3,0x14
.equ	USART_GTPR,0x18


.endif

.ifdef F4xx
.equ rcc,0x40023800
.equ RCC,0x40023800
.equ RCC_APB2ENR,0x44
.equ RCC_APB1ENR,0x40
.equ APB2ENR,0x44
.equ APB1ENR,0x40
.equ apb2enr,0x44
.equ apb1enr,0x40
.equ RCC_CFGR,0x8
.equ RCC_AHB1ENR,0x30
.equ AHB1ENR,0x30
.equ ahb1enr,0x30
.equ AHB2ENR,0x34
.equ ahb2enr,0x34
.equ AHBENR,0x30
.equ ahbenr,0x30

.equ flash,0x40023C00

.equ exti,0x40013C00
.equ EXTI,0x40013C00
.equ exti_RTSR,0x08
.equ exti_FTSR,0x0c
.equ exti_EMR,0x04
.equ exti_IMR,0x00
.equ EXTI_IMR,0x00
.equ exti_SWIER,0x10
.equ exti_PR,0x14
.equ EXTI_PR,0x14

.equ RTSR,0x08
.equ FTSR,0x0c
.equ EMR,0x04
.equ IMR,0x00
.equ SWIER,0x10
.equ PR,0x14

.equ rtsr,0x08
.equ ftsr,0x0c
.equ emr,0x04
.equ imr,0x00
.equ swier,0x10
.equ pr,0x14

.equ SysCFG,0x40013800
.equ SYSCFG_EXTICR1,0x08
.equ SYSCFG_EXTICR2,0x0c
.equ SYSCFG_EXTICR3,0x10
.equ SYSCFG_EXTICR4,0x14
.equ EXTICR1,0x08
.equ EXTICR2,0x0c
.equ EXTICR3,0x10
.equ EXTICR4,0x14
.equ exticr1,0x08
.equ exticr2,0x0c
.equ exticr3,0x10
.equ exticr4,0x14

.equ isrEnableReg1,0x104
.equ isrEnableReg0,0x100
.equ ISER0,0x100
.equ iser0,0x100
.equ ISER1,0x104
.equ iser1,0x104

.equ isrClrReg,0x284

.equ GPIOA,0x40020000
.equ gpioa,0x40020000
.equ GPIOB,0x40020400
.equ gpiob,0x40020400
.equ GPIOC,0x40020800
.equ gpioc,0x40020800
.equ GPIOD,0x40020c00
.equ gpiod,0x40020c00
.equ GPIOE,0x40021000
.equ gpioe,0x40021000
.equ GPIOF,0x40021800
.equ gpiof,0x40021800
.equ GPIOH,0x40021C00
.equ gpioh,0x40021C00
.equ GPIOx_MODER,0x00
.equ GPIOx_ODR,0x14
.equ GPIOx_IDR,0x10
.equ GPIOx_AFRL,0x20
.equ GPIOx_AFRH,0x24
.equ GPIOx_PUPDR,0x0C
.equ GPIOx_OTYPER,0x04
.equ GPIOx_BSRR,0x18
.equ GPIOx_BRR,0x18
.equ MODER,0x00
.equ ODR,0x14
.equ IDR,0x10
.equ AFRL,0x20
.equ AFRH,0x24
.equ PUPDR,0x0C
.equ OTYPER,0x04
.equ BSR,0x18
.equ BSSR,0x18
.equ BRR,0x1A
.equ moder,0x00
.equ odr,0x14
.equ idr,0x10
.equ afrl,0x20
.equ afrh,0x24
.equ pupdr,0x0C
.equ otyper,0x04
.equ bsr,0x18
.equ bssr,0x18
.equ brr,0x1A

.equ ADC,0x40012000
.equ adc,0x40012000
.equ ADC1,0x40012000
.equ adc1,0x40012000


.equ ADC_CR1,0x04
.equ ADC_CR1_OVRIE,0
.equ ADC_CR1_RES,0b00	//12-bit (TCONV = 12 ADCCLK cycles)
.equ ADC_CR1_AWDEN,0	//Analog watchdog disabled on regular channels
.equ ADC_CR1_JAWDEN,0	// Analog watchdog disabled on injected channels
.equ ADC_CR1_PDI,0		//The ADC is powered up when waiting for a start event
.equ ADC_CR1_PDD,0		//The ADC is powered up during the delay
.equ ADC_CR1_DISCNUM,0b000	// 1 channel
.equ ADC_CR1_JDISCEN,0	//Discontinuous mode on injected channels disabled
.equ ADC_CR1_DISCEN,0	//Discontinuous mode on regular channels disabled
.equ ADC_CR1_JAUTO,0	// Automatic injected group conversion disabled
.equ ADC_CR1_AWDSGL,0	//Analog watchdog enabled on all channels
.equ ADC_CR1_SCAN,0		//Scan mode disabled
.equ ADC_CR1_JEOCIE,0	//JEOC interrupt disabled
.equ ADC_CR1_AWDIE,0	// Analog watchdog interrupt disabled
.equ ADC_CR1_EOCIE,0	//EOC interrupt disabled
.equ ADC_CR1_AWDCH,0b00000	//ADC analog input ADC_IN0


.equ ADC_SQR5,0x40
.equ ADC_A0,0
.equ ADC_A1,1
.equ ADC_A2,4
.equ ADC_A3,26	//WNDWE geschlossen PB4
.equ ADC_A4,11	//PC1
.equ ADC_A5,10	//PC0

.equ ADC_DR,0x58

.equ ADC_CR2,0x08
.equ ADC_CR2_SWSTART,0
.equ ADC_CR2_EXTEN,0b00
.equ ADC_CR2_EXTSEL,0b0000
.equ ADC_CR2_JSWSTART,0
.equ ADC_CR2_JEXTEN,0b00
.equ ADC_CR2_JEXTSEL,0b0000
.equ ADC_CR2_ALIGN,0
.equ ADC_CR2_EOCS,1		//EOC set at End of each conversion
.equ ADC_CR2_DDS,0		//No DMA  request
.equ ADC_CR2_DMA,0		//DMA disabled
.equ ADC_CR2_DELS,0b001	//Until the converted data have been read (DR read or EOC=0 for regular conversions)
.equ ADC_CR2_ADC_CFG,0	//Bank A selected for channels ADC_IN0..31
.equ ADC_CR2_CONT,0		// Single conversion mode
.equ ADC_CR2_ADON,1		// Enable ADC: conversions can start as soon as a start event (hardware or software) is received.

//I2C1
.equ I2C1,0x40005400
.equ I2C1_CR1,0
.equ I2C1_CR2,4
.equ I2C1_OAR1,8
.equ I2C1_OAR2,0x0C
.equ I2C1_DR,0x10
.equ I2C1_SR1,0x14
.equ I2C1_SR2,0x18
.equ I2C1_CCR,0x1C
.equ I2C1_TRISE,0x20
.equ I2C1_FREQ,0x20		//32MHz
.equ I2C1_CCRValue,1600	//32MHz * 50�s =1600
.equ I2C1_TRISEValue,0x21	//32MHz * 1000ns +1

//USART2
.equ	USART2,0x40004400
.equ	USART2_SR,0x0
.equ	USART2_DR,0x04
.equ	USART2_BRR,0x08
.equ	USART2_CR1,0x0C
.equ	USART2_CR2,0x10
.equ	USART2_CR3,0x14
.equ	USART2_GTPR,0x18

//USART6
.equ	USART3,0x40011400
.equ	USART_SR,0x0
.equ	USART_DR,0x04
.equ	USART_BRR,0x08
.equ	USART_CR1,0x0C
.equ	USART_CR2,0x10
.equ	USART_CR3,0x14
.equ	USART_GTPR,0x18


.endif


.ifdef F103
.equ rcc,0x40021000
.equ RCC,0x40021000
.equ RCC_APB2ENR,0x18
.equ RCC_APB1ENR,0x1c
.equ APB2ENR,0x18
.equ APB1ENR,0x1c
.equ RCC_AHBENR,0x14
.equ AHBENR,0x14
.equ RCC_APB2ENR,0x18
.equ RCC_APB1ENR,0x1C
.equ RCC_CFGR,0x4


.equ flash,0x4002200

.equ exti,0x40010400
.equ EXTI,0x40010400
.equ exti_RTSR,0x08
.equ exti_FTSR,0x0c
.equ exti_EMR,0x04
.equ exti_IMR,0x00
.equ EXTI_IMR,0x00
.equ exti_SWIER,0x10
.equ exti_PR,0x14
.equ EXTI_PR,0x14

.equ RTSR,0x08
.equ FTSR,0x0c
.equ EMR,0x04
.equ IMR,0x00
.equ SWIER,0x10
.equ PR,0x14



.equ SysCFG,0x40010000		//???
.equ AFIO,0x40010000		//???
.equ afio,0x40010000		//???
.equ SYSCFG_EXTICR1,0x08
.equ SYSCFG_EXTICR2,0x0c
.equ SYSCFG_EXTICR3,0x10
.equ SYSCFG_EXTICR4,0x14
.equ EXTICR1,0x08
.equ EXTICR2,0x0c
.equ EXTICR3,0x10
.equ EXTICR4,0x14
.equ exticr1,0x08
.equ exticr2,0x0c
.equ exticr3,0x10
.equ exticr4,0x14

.equ RI,0x40007C00
.equ RI_HYSCR1,0x14
.equ RI_HYSCR2,0x18


.equ isrEnableReg1,0x104
.equ isrEnableReg0,0x100
.equ ISER1,0x104
.equ ISER0,0x100
.equ isrClrReg,0x284

.equ GPIOA,0x40010800
.equ gpioa,0x40010800
.equ GPIOB,0x40010C00
.equ gpiob,0x40010C00
.equ GPIOC,0x40011000
.equ gpioc,0x40011000
.equ GPIOD,0x40011400
.equ gpiod,0x40011400
.equ GPIOF,0x40011c00
.equ gpiof,0x40011c00
.equ GPIOx_MODER,0x00
.equ GPIOx_CRL,0x00
.equ GPIOx_CRH,0x04
.equ GPIOx_ODR,0x0C
.equ GPIOx_IDR,0x08
.equ GPIOx_AFRL,0x20
.equ GPIOx_AFRH,0x24
.equ GPIOx_PUPDR,0x0C
.equ GPIOx_OTYPER,0x04
.equ GPIOx_BSRR,0x10
.equ GPIOx_BRR,0x14
.equ MODER,0x00
.equ CRL,0x00
.equ CRH,0x04
.equ ODR,0x0C
.equ IDR,0x08
.equ AFRL,0x20
.equ AFRH,0x24
.equ PUPDR,0x0C
.equ OTYPER,0x04
.equ BSR,0x10
.equ BRR,0x14

.equ ADC,0x40012400
.equ ADC1,0x40012400
.equ adc,0x40012400
.equ adc1,0x40012400

.equ ADC_CR1,0x04
.equ ADC_CR1_OVRIE,0
.equ ADC_CR1_RES,0b00	//12-bit (TCONV = 12 ADCCLK cycles)
.equ ADC_CR1_AWDEN,0	//Analog watchdog disabled on regular channels
.equ ADC_CR1_JAWDEN,0	// Analog watchdog disabled on injected channels
.equ ADC_CR1_PDI,0		//The ADC is powered up when waiting for a start event
.equ ADC_CR1_PDD,0		//The ADC is powered up during the delay
.equ ADC_CR1_DISCNUM,0b000	// 1 channel
.equ ADC_CR1_JDISCEN,0	//Discontinuous mode on injected channels disabled
.equ ADC_CR1_DISCEN,0	//Discontinuous mode on regular channels disabled
.equ ADC_CR1_JAUTO,0	// Automatic injected group conversion disabled
.equ ADC_CR1_AWDSGL,0	//Analog watchdog enabled on all channels
.equ ADC_CR1_SCAN,0		//Scan mode disabled
.equ ADC_CR1_JEOCIE,0	//JEOC interrupt disabled
.equ ADC_CR1_AWDIE,0	// Analog watchdog interrupt disabled
.equ ADC_CR1_EOCIE,0	//EOC interrupt disabled
.equ ADC_CR1_AWDCH,0b00000	//ADC analog input ADC_IN0


.equ ADC_SQR5,0x40
.equ ADC_A0,0
.equ ADC_A1,1
.equ ADC_A2,4
.equ ADC_A3,26	//WNDWE geschlossen PB4
.equ ADC_A4,11	//PC1
.equ ADC_A5,10	//PC0

.equ ADC_DR,0x4C

.equ ADC_CR2,0x08
.equ ADC_CR2_SWSTART,0
.equ ADC_CR2_EXTEN,0b00
.equ ADC_CR2_EXTSEL,0b0000
.equ ADC_CR2_JSWSTART,0
.equ ADC_CR2_JEXTEN,0b00
.equ ADC_CR2_JEXTSEL,0b0000
.equ ADC_CR2_ALIGN,0
.equ ADC_CR2_EOCS,1		//EOC set at End of each conversion
.equ ADC_CR2_DDS,0		//No DMA  request
.equ ADC_CR2_DMA,0		//DMA disabled
.equ ADC_CR2_DELS,0b001	//Until the converted data have been read (DR read or EOC=0 for regular conversions)
.equ ADC_CR2_ADC_CFG,0	//Bank A selected for channels ADC_IN0..31
.equ ADC_CR2_CONT,0		// Single conversion mode
.equ ADC_CR2_ADON,1		// Enable ADC: conversions can start as soon as a start event (hardware or software) is received.

//I2C1
.equ I2C1,0x40005400
.equ I2C1_CR1,0
.equ I2C1_CR2,4
.equ I2C1_OAR1,8
.equ I2C1_OAR2,0x0C
.equ I2C1_DR,0x10
.equ I2C1_SR1,0x14
.equ I2C1_SR2,0x18
.equ I2C1_CCR,0x1C
.equ I2C1_TRISE,0x20
.equ I2C1_FREQ,0x20		//32MHz
.equ I2C1_CCRValue,1600	//32MHz * 50�s =1600
.equ I2C1_TRISEValue,0x21	//32MHz * 1000ns +1

//USART2
.equ	USART2,0x40004400
.equ	USART2_SR,0x0
.equ	USART2_DR,0x04
.equ	USART2_BRR,0x08
.equ	USART2_CR1,0x0C
.equ	USART2_CR2,0x10
.equ	USART2_CR3,0x14
.equ	USART2_GTPR,0x18

//USART3
.equ	USART3,0x40004800
.equ	USART_SR,0x0
.equ	USART_DR,0x04
.equ	USART_BRR,0x08
.equ	USART_CR1,0x0C
.equ	USART_CR2,0x10
.equ	USART_CR3,0x14
.equ	USART_GTPR,0x18

.endif




//Groove-LCD RGB Backlight



//I2C addresses for LCD and RGB
.equ LCD_ADDRESS,0x7c
.equ RGB_ADDRESS,0xc4

.equ RED_REG,0x04
.equ GREEN_REG,0x03
.equ BLUE_REG,0x02

// commands
.equ LCD_CLEARDISPLAY,0x01
.equ LCD_DISPLAYCONTROL,0x08
.equ LCD_FUNCTIONSET,0x20

// flags for display on/off control
.equ LCD_DISPLAYON,0x04
.equ LCD_DISPLAYOFF,0x00

// flag for entry mode
.equ LCD_ENTRYLEFT,0x02

// flags for function set
.equ LCD_8BITMODE,0x10
.equ LCD_2LINE,0x08
.equ LCD_5x10DOTS,0x04



.macro loadImm32	reg,imm
		mov	\reg,#(\imm/0x10000)
		lsl	\reg,#16
		orr	\reg,#(\imm%0x10000)
.endm

//GPIO
//PinMode
.equ Eingang,0
.equ Ausgang,1
.equ Alternate,2
.equ Analog,3

//OutputType
.equ PushPull,0
.equ OpenDrain,1

//Pullup/-down
.equ	KeinPull,0
.equ	Keinpull,0
.equ	Pullup,1
.equ	PullDown,2
.equ	PullUp,1
.equ	Pulldown,2
.equ	keinPull,0
.equ	keinpull,0
.equ	pullup,1
.equ	pullDown,2
.equ	pullUp,1
.equ	pulldown,2


//.ifdef wait_ms
//.global wait_ms
/*
wait_ms:	//Wartezeit in ms in R0
	push	{r0,r1}
	ldr		r1,=32000/5
	mul		r0,r1
	mov 	r1,#1
wait_msWdh:
	subs	r0,r1
	bne		wait_msWdh
	pop		{r0,r1}
	bx	lr*/
//.endif
//Ports Nummerierung
//.equ	D0,0
//.equ	D13,13

.macro setAusgangstyp a,b
//OutputType
//.equ PushPull,0
//.equ OpenDrain,1
	call	setAusgangstyp\@
	b		setAusgangstypfertig\@
setAusgangstyp\@:
	push {R1,R2,R3}
	.if \a == D15 || \a==PB8
		ldr r1,=GPIOB	//D15=GPIOB Bit 8
        mov.w r2, #\b<<8
	.endif
	.if \a == D14 || \a==PB9
		ldr r1,=GPIOB	//D14=GPIOB Bit 9
        mov.w r2, #\b<<9
	.endif
	.if \a == D13 || \a==PA5 || \a==LED || \a==led
		ldr r1,=GPIOA	//D13=GPIOA Bit 5
        mov.w r2, #\b<<5
	.endif
	.if \a == D12 || \a==PA6
		ldr r1,=GPIOA	//D12=GPIOA Bit 6
        mov.w r2, #\b<<6
	.endif
	.if \a == D11 || \a==PA7
		ldr r1,=GPIOA	//D11=GPIOA Bit 7
        mov.w r2, #\b<<7
	.endif
	.if \a == D10 || \a==PB6
		ldr r1,=GPIOB	//D10=GPIOC Bit 6
        mov.w r2, #\b<<6
	.endif
	.if \a == D9 || \a==PC7
		ldr r1,=GPIOC	//D9=GPIOC Bit 7
        mov.w r2, #\b<<7
	.endif
	.if \a == D8 || \a==PA9
		ldr r1,=GPIOA	//D8=GPIOA Bit 9
        mov.w r2, #\b<<9
	.endif
	.if \a == D7 || \a==PA8
		ldr r1,=GPIOA	//D7=GPIOA Bit 8
        mov.w r2, #\b<<8
	.endif
	.if \a == D6 || \a==PB10
		ldr r1,=GPIOB	//D6=GPIOC Bit 10
        mov.w r2, #\b<<10
	.endif
	.if \a == D5 || \a==PB4
		ldr r1,=GPIOB	//D5=GPIOC Bit 4
        mov.w r2, #\b<<4
	.endif
	.if \a == D4 || \a==PB5
		ldr r1,=GPIOB	//D4=GPIOC Bit 5
        mov.w r2, #\b<<5
	.endif
	.if \a == D3 || \a==PB3
		ldr r1,=GPIOB	//D3=GPIOC Bit 3
        mov.w r2, #\b<<3
	.endif
	.if \a == D2 || \a==PA10
		ldr r1,=GPIOA	//D2=GPIOA Bit 10
        mov.w r2, #\b<<10
	.endif
	.if \a==PA11
		ldr r1,=GPIOA	//D2=GPIOA Bit 10
        mov.w r2, #\b<<11
	.endif
	.if \a==PA12
		ldr r1,=GPIOA	//D2=GPIOA Bit 10
        mov.w r2, #\b<<12
	.endif
	.if \a==PA13
		ldr r1,=GPIOA	//D2=GPIOA Bit 10
        mov.w r2, #\b<<13
	.endif
	.if \a==PA14
		ldr r1,=GPIOA	//D2=GPIOA Bit 10
        mov.w r2, #\b<<14
	.endif
	.if \a==PA15
		ldr r1,=GPIOA	//D2=GPIOA Bit 10
        mov.w r2, #\b<<15
	.endif
	.if \a == D1 || \a==PA2
		ldr r1,=GPIOA	//D1=GPIOA Bit 2
        mov.w r2, #\b<<2
	.endif
	.if \a == D0 || \a==PA3
		ldr r1,=GPIOA	//D0=GPIOA Bit 3
        mov.w r2, #\b<<3
	.endif
	.if \a == A0 || \a==PA0
		ldr r1,=GPIOA	//A0=GPIOA Bit 0
        mov.w r2, #\b<<0
	.endif
	.if \a == A1 || \a==PA1
		ldr r1,=GPIOA	//A1=GPIOA Bit 1
        mov.w r2, #\b<<1
	.endif
	.if \a == A2 || \a==PA4
		ldr r1,=GPIOA	//A2=GPIOA Bit 4
        mov.w r2, #\b<<4
	.endif
	.if \a == A3 || \a==PB0
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<0
	.endif
	.if \a==PB1
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<1
	.endif
	.if \a==PB2
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<2
	.endif
	.if \a==PB7
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<7
	.endif
	.if \a==PB11
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<11
	.endif
	.if \a==PB12
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<12
	.endif
	.if \a==PB13
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<13
	.endif
	.if \a==PB14
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<14
	.endif
	.if \a==PB15
		ldr r1,=GPIOB	//A3=GPIOC Bit 0
        mov.w r2, #\b<<15
	.endif

	.if \a == A4 || \a==PC1
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<1
	.endif
	.if \a == A5 || \a==PC0
		ldr r1,=GPIOC	//A5=GPIOC Bit 0
        mov.w r2, #\b<<0
	.endif
	.if \a==PC2
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<2
	.endif
	.if \a==PC3
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<3
	.endif
	.if \a==PC4
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<4
	.endif
	.if \a==PC5
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<5
	.endif
	.if \a==PC6
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<6
	.endif
	.if \a==PC8
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<8
	.endif
	.if \a==PC9
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<9
	.endif
	.if \a==PC10
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<10
	.endif
	.if \a==PC11
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<11
	.endif
	.if \a==PC12
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<12
	.endif
	.if \a==PC14
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<14
	.endif
	.if \a==PC15
		ldr r1,=GPIOC	//A4=GPIOC Bit 1
        mov.w r2, #\b<<15
	.endif

	.if \a==PC13
		ldr r1,=GPIOC
        mov.w r2, #\b<<13
	.endif
	ldr r3,[r1,#0x04]
	orr r2,r3
	str.w r2,[r1,#0x04]
	pop {R1,R2,R3}
	bx	lr
setAusgangstypfertig\@:
.endm

.macro setPullUpDown a,b
//Pullup/-down
//.equ	KeinPull,0
//.equ	Pullup,1
//.equ	PullDown,2
	call	setPullUpDown\@
	b		setPullUpDownfertig\@
setPullUpDown\@:
	push {R1,R2,R3,R4}
	.if \a==D15 || \a==PB8
	ldr r1,=GPIOB	//D15=GPIOB Bit 8
    mov.w r3,#16
    .endif
    .if \a==D14 || \a==PB9
	ldr r1,=GPIOB	//D14=GPIOB Bit 9
    mov.w r3,#18
    .endif
    .if \a==D13 || \a==PA5 || \a==LED || \a==led
	ldr r1,=GPIOA	//D13=GPIOA Bit 5
    mov.w r3,#10
    .endif
    .if \a==D12 || \a==PA6
	ldr r1,=GPIOA	//D12=GPIOA Bit 6
    mov.w r3,#12
    .endif
    .if \a==D11 || \a==PA7
	ldr r1,=GPIOA	//D11=GPIOA Bit 7
    mov.w r3,#14
    .endif
    .if \a==D10 || \a==PB6
	ldr r1,=GPIOB	//D10=GPIOC Bit 6
    mov.w r3,#12
    .endif
    .if \a==D9 || \a==PC7
	ldr r1,=GPIOC	//D9=GPIOC Bit 7
    mov.w r3,#14
    .endif
    .if \a==D8 || \a==PA9
	ldr r1,=GPIOA	//D8=GPIOA Bit 9
    mov.w r3,#18
    .endif
    .if \a==D7 || \a==PA8
	ldr r1,=GPIOA	//D7=GPIOA Bit 8
    mov.w r3,#16
    .endif
    .if \a==D6 || \a==PB10
	ldr r1,=GPIOB	//D6=GPIOC Bit 10
    mov.w r3,#20
    .endif
    .if \a==D5 || \a==PB4
	ldr r1,=GPIOB	//D5=GPIOC Bit 4
    mov.w r3,#8
    .endif
    .if \a==D4 || \a==PB5
	ldr r1,=GPIOB	//D4=GPIOC Bit 5
    mov.w r3,#10
    .endif
    .if \a==D3 || \a==PB3
	ldr r1,=GPIOB	//D3=GPIOC Bit 3
    mov.w r3,#6
    .endif
    .if \a==D2 || \a==PA10
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#20
    .endif
    .if \a==PA11
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#22
    .endif
    .if \a==PA12
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#24
    .endif
    .if \a==PA13
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#26
    .endif
    .if \a==PA14
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#28
    .endif
    .if \a==PA15
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#30
    .endif
    .if \a==D1 || \a==PA2
	ldr r1,=GPIOA	//D1=GPIOA Bit 2
    mov.w r3,#4
    .endif
    .if \a==D0 || \a==PA3
	ldr r1,=GPIOA	//D0=GPIOA Bit 3
    mov.w r3,#6
    .endif
    .if \a==A0 || \a==PA0
	ldr r1,=GPIOA	//A0=GPIOA Bit 0
    mov.w r3,#0
    .endif
    .if \a==A1 || \a==PA1
	ldr r1,=GPIOA	//A1=GPIOA Bit 1
    mov.w r3,#2
    .endif
    .if \a==A2 || \a==PA4
	ldr r1,=GPIOA	//A2=GPIOA Bit 4
    mov.w r3,#8
    .endif
    .if \a==A3 || \a==PB0
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#0
    .endif
    .if \a==PB1
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#2
    .endif
    .if \a==PB2
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#4
    .endif
     .if \a==PB7
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#14
    .endif
    .if \a==PB11
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#22
    .endif
    .if \a==PB12
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#24
    .endif
     .if \a==PB13
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#26
    .endif
    .if \a==PB14
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#28
    .endif
    .if \a==PB15
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#30
    .endif
    .if \a==A4 || \a==PC1
	ldr r1,=GPIOC	//A4=GPIOC Bit 1
    mov.w r3,#2
    .endif

    .if \a==A5 || \a==PC0
	ldr r1,=GPIOC	//A5=GPIOC Bit 0
    mov.w r3,#0
    .endif
    .if \a==PC2
	ldr r1,=GPIOC	//Taster
    mov.w r3,#4
    .endif
    .if \a==PC3
	ldr r1,=GPIOC	//Taster
    mov.w r3,#6
    .endif
    .if \a==PC4
	ldr r1,=GPIOC	//Taster
    mov.w r3,#8
    .endif
    .if \a==PC5
	ldr r1,=GPIOC	//Taster
    mov.w r3,#10
    .endif
    .if \a==PC6
	ldr r1,=GPIOC	//Taster
    mov.w r3,#12
    .endif
    .if \a==PC8
	ldr r1,=GPIOC	//Taster
    mov.w r3,#16
    .endif
    .if \a==PC9
	ldr r1,=GPIOC	//Taster
    mov.w r3,#18
    .endif
    .if \a==PC10
	ldr r1,=GPIOC	//Taster
    mov.w r3,#20
    .endif
    .if \a==PC11
	ldr r1,=GPIOC	//Taster
    mov.w r3,#22
    .endif
    .if \a==PC12
	ldr r1,=GPIOC	//Taster
    mov.w r3,#24
    .endif

    .if \a==PC13
	ldr r1,=GPIOC	//Taster
    mov.w r3,#26
    .endif
    .if \a==PC14
	ldr r1,=GPIOC	//Taster
    mov.w r3,#28
    .endif
    .if \a==PC15
	ldr r1,=GPIOC	//Taster
    mov.w r3,#30
    .endif

    mov r2,#3
    lsl r2,r2,r3
    ldr r4,=0xffffffff
    eor r2,r4
    ldr r4,[r1,#0x0C]
    and r2,r4
    mov.w r4,#\b
    lsl r4,r4,r3
    orr	r2,r4
    str r2,[r1,#0x0C]	//ModeRegister
	pop {R1,R2,R3,R4}
	bx	lr
.ltorg
setPullUpDownfertig\@:
.endm

.macro setDir a,b
//.equ Eingang,0
//.equ Ausgang,1
//.equ Alternate,2
//.equ Analog,3

	call	setDir\@
	b		setDirfertig\@
setDir\@:

	push	{R1,R2,R3,R4}
	.if \a==D15 || \a==PB8
	ldr r1,=GPIOB	//D15=GPIOC Bit 8
    mov.w r3,#16
    .endif
    .if \a==D14 || \a==PB9
	ldr r1,=GPIOB	//D14=GPIOC Bit 9
    mov.w r3,#18
    .endif
    .if \a==D13 || \a==PA5 || \a==LED || \a==led
	ldr r1,=GPIOA	//D13=GPIOA Bit 5
    mov.w r3,#10
    .endif
    .if \a==D12 || \a==PA6
	ldr r1,=GPIOA	//D12=GPIOA Bit 6
    mov.w r3,#12
    .endif
    .if \a==D11 || \a==PA7
	ldr r1,=GPIOA	//D11=GPIOA Bit 7
    mov.w r3,#14
    .endif
    .if \a==D10 || \a==PB6
	ldr r1,=GPIOB	//D10=GPIOC Bit 6
    mov.w r3,#12
    .endif
    .if \a==D9 || \a==PC7
	ldr r1,=GPIOC	//D9=GPIOC Bit 7
    mov.w r3,#14
    .endif
    .if \a==D8 || \a==PA9
	ldr r1,=GPIOA	//D8=GPIOA Bit 9
    mov.w r3,#18
    .endif
    .if \a==D7 || \a==PA8
	ldr r1,=GPIOA	//D7=GPIOA Bit 8
    mov.w r3,#16
    .endif
    .if \a==D6 || \a==PB10
	ldr r1,=GPIOB	//D6=GPIOC Bit 10
    mov.w r3,#20
    .endif
    .if \a==D5 || \a==PB4
	ldr r1,=GPIOB	//D5=GPIOC Bit 4
    mov.w r3,#8
    .endif
    .if \a==D4 || \a==PB5
	ldr r1,=GPIOB	//D4=GPIOC Bit 5
    mov.w r3,#10
    .endif
    .if \a==D3 || \a==PB3
	ldr r1,=GPIOB	//D3=GPIOC Bit 3
    mov.w r3,#6
    .endif
    .if \a==D2 || \a==PA10
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#20
    .endif
    .if \a==PA11
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#22
    .endif
    .if \a==PA12
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#24
    .endif
    .if \a==PA13
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#26
    .endif
    .if \a==PA14
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#28
    .endif
    .if \a==PA15
	ldr r1,=GPIOA	//D2=GPIOA Bit 10
    mov.w r3,#30
    .endif

    .if \a==D1 || \a==PA2
	ldr r1,=GPIOA	//D1=GPIOA Bit 2
    mov.w r3,#4
    .endif
    .if \a==D0 || \a==PA3
	ldr r1,=GPIOA	//D0=GPIOA Bit 3
    mov.w r3,#6
    .endif
    .if \a==A0 || \a==PA0
	ldr r1,=GPIOA	//A0=GPIOA Bit 0
    mov.w r3,#0
    .endif
    .if \a==A1 || \a==PA1
	ldr r1,=GPIOA	//A1=GPIOA Bit 1
    mov.w r3,#2
    .endif
    .if \a==A2 || \a==PA4
	ldr r1,=GPIOA	//A2=GPIOA Bit 4
    mov.w r3,#8
    .endif
    .if \a==A3 || \a==PB0
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#0
    .endif
    .if \a==PB1
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#2
    .endif
     .if \a==PB2
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#4
    .endif
    .if \a==PB7
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#14
    .endif
    .if \a==PB11
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#22
    .endif
    .if \a==PB12
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#24
    .endif
    .if \a==PB13
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#26
    .endif
    .if \a==PB14
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#28
    .endif
    .if \a==PB15
	ldr r1,=GPIOB	//A3=GPIOC Bit 0
    mov.w r3,#30
    .endif

    .if \a==A4 || \a==PC1
	ldr r1,=GPIOC	//A4=GPIOC Bit 1
    mov.w r3,#2
    .endif
    .if \a==A5 || \a==PC0
	ldr r1,=GPIOC	//A5=GPIOC Bit 0
    mov.w r3,#0
    .endif
    .if  \a==PC2
	ldr r1,=GPIOC	//GPIOC Bit 2
    mov.w r3,#4
    .endif
    .if  \a==PC3
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#6
    .endif
    .if  \a==PC4
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#8
    .endif
    .if  \a==PC5
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#10
    .endif
    .if  \a==PC6
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#12
    .endif
     .if  \a==PC8
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#16
    .endif
    .if  \a==PC9
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#18
    .endif
    .if  \a==PC10
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#20
    .endif
    .if  \a==PC11
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#22
    .endif
     .if  \a==PC12
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#24
    .endif

    .if \a==PC13
	ldr r1,=GPIOC	//Taster
    mov.w r3,#26
    .endif
    .if  \a==PC14
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#28
    .endif
    .if  \a==PC15
	ldr r1,=GPIOC	//GPIOC Bit 3
    mov.w r3,#30
    .endif

    mov r2,#3
    lsl r2,r2,r3
    ldr r4,=0xffffffff
    eor r2,r4
    ldr r4,[r1]
    and r2,r4
    mov.w r4,#\b
    lsl r4,r4,r3
    orr	r2,r4
    str r2,[r1]	//ModeRegister
	pop {R1,R2,R3,R4}
	bx	lr
.ltorg
setDirfertig\@:
.endm

.macro reti
	bx lr
.endm

.macro mod	a,b,c	//a=b%c
	udiv	\a,\b,\c
	mul		\a,\c
	sub		\a,\b,\a
.endm

.macro call1 a
	push	{lr}
	mov		lr,pc
	add		lr,#1
	b		\a
	pop		{lr}
.endm


.macro call a
	push {lr}
	bl \a
	pop {lr}
.endm




.macro setISR Adresse,VectorNr
	call	setISR\@
	b		setISRfertig\@
setISR\@:
	push	{R0,R1}
	ldr	R0,=ISRTabelle
	ldr	r1,=\Adresse+1
	str	r1,[r0,#\VectorNr]
	pop		{R0,R1}
	bx	lr
.ltorg
setISRfertig\@:
.endm



.macro setb Bit
	call	setb\@
	b		setbfertig\@
setb\@:
	push	{r0,r1,r2,r3}
	.if \Bit==EA || \Bit==ea
		mov	r0,#0
		msr faultmask,r0
	.else
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r0,[r1]		//Maske in R4
	orr		r3,r0
	str		r3,[r2]
	.endif
	pop 	{r0,r1,r2,r3}
	bx	lr
.ltorg
setbfertig\@:
.endm
.macro clr Bit
	call	clr\@
	b		clrfertig\@
clr\@:
	push	{r0,r1,r2,r3}
	.if \Bit==EA || \Bit==ea
		mov	r0,#1
		msr faultmask,r0
	.else
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r0,[r1]		//Maske in R4
	bic		r3,r0
	str		r3,[r2]
	.endif
	pop 	{r0,r1,r2,r3}
	bx	lr
.ltorg
clrfertig\@:
.endm

.macro cpl Bit
	call	cpl\@
	b		cplfertig\@
cpl\@:
	push	{r0,r1,r2,r3}
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r0,[r1]		//Maske in R4
	eor		r3,r0
	str		r3,[r2]
	pop 	{r0,r1,r2,r3}
	bx		lr
.ltorg
cplfertig\@:
.endm

.macro jb Bit,Ziel
	call	jb\@
	b		jbfertig\@
jb\@:
	push	{r0,r1,r2,r3}
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#8]	//Inputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r0,[r1]		//Maske in R4
	ands	r3,r0
	pop 	{r0,r1,r2,r3}
	bx		lr
.ltorg
jbfertig\@:
	bne	\Ziel
.endm

.macro jnb Bit,Ziel
	call	jnb\@
	b		jnbfertig\@
jnb\@:
	push	{r0,r1,r2,r3}
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#8]	//Inputregister
	ldr 	r3,[r2]		//@Inputregister in r3
	ldr		r0,[r1]		//Maske in R4
	ands	r3,r0
	pop 	{r0,r1,r2,r3}
	bx		lr
.ltorg
jnbfertig\@:
	beq	\Ziel
.endm

.macro movc Bit	//C <- bit
	call	movc\@
	b		movcfertig\@
movc\@:
	push	{r0,r1,r2,r3,r4}
	mrs		r0,APSR
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#8]	//Inputregister
	ldr 	r3,[r2]		//@Inputregister in r3
	ldr		r4,[r1]		//Maske in R4
	ands	r3,r4
	ldr		r2,=0x20000000
	ldr		r3,=0xDFFFFFFF
	ite		eq
	andeq	r0,r3
	orrne	r0,r2
	msr		APSR_nzcvq,r0
	pop 	{r0,r1,r2,r3,r4}
	bx	lr
.ltorg
movcfertig\@:
.endm
.macro movCBit Bit	//C -> bit
	call	movcBit\@
	b		movcBitfertig\@
movcBit\@:
	push	{r0,r1,r2,r3}
	ldr		r1,=\Bit		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r0,[r1]		//Maske in R4
	ite		cc
	biccc	r3,r0
	orrcs	r3,r0
	str		r3,[r2]
	pop 	{r0,r1,r2,r3}
	bx	lr
.ltorg
movcBitfertig\@:
.endm

.macro outb a,b		//outb r1,DL(DH)	kopiert untere(obere) 8 Bits von r1 auf D7..D0
	call	outb\@
	b		outbfertig\@
outb\@:
	push	{\a}
	.if \a==DL
	lsrs	\a
	movCBit		D0
	lsrs	\a
	movCBit		D1
	lsrs	\a
	movCBit		D2
	lsrs	\a
	movCBit		D3
	lsrs	\a
	movCBit		D4
	lsrs	\a
	movCBit		D5
	lsrs	\a
	movCBit		D6
	lsrs	\a
	movCBit		D7
	.endif
	.if \a==DH
	lsrs	\a
	movCBit		D8
	lsrs	\a
	movCBit		D9
	lsrs	\a
	movCBit		D10
	lsrs	\a
	movCBit		D11
	lsrs	\a
	movCBit		D12
	lsrs	\a
	movCBit		D13
	lsrs	\a
	movCBit		D14
	lsrs	\a
	movCBit		D15
	.endif
	pop {\a}
	bx	lr
.ltorg
outbfertig\@:
.endm

Bitliste:	//Maske,ODR, IDR
A0:
PA0:
.word	0x00000001,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
A1:
PA1:
.word	0x00000002,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D1:
PA2:
.word	0x00000004,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D0:
PA3:
.word	0x00000008,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
A2:
PA4:
.word	0x00000010,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D13:
PA5:
LED:
.word	0x00000020,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D12:
PA6:
.word	0x00000040,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D11:
PA7:
.word	0x00000080,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D7:
PA8:
.word	0x00000100,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D8:
PA9:
.word	0x00000200,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
D2:
PA10:
.word	0x00000400,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
PA11:
.word	0x00000800,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
PA12:
.word	0x00001000,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
PA13:
.word	0x00002000,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
PA14:
.word	0x00004000,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR
PA15:
.word	0x00008000,GPIOA+GPIOx_ODR,GPIOA+GPIOx_IDR

A3:
PB0:
.word	0x00000001,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB1:
.word	0x00000002,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB2:
.word	0x00000004,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D3:
PB3:
.word	0x00000008,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D5:
PB4:
.word	0x00000010,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D4:
PB5:
.word	0x00000020,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D10:
PB6:
.word	0x00000040,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB7:
.word	0x00000080,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D15:
PB8:
.word	0x00000100,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D14:
PB9:
.word	0x00000200,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
D6:
PB10:
.word	0x00000400,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB11:
.word	0x00000800,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB12:
.word	0x00001000,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB13:
.word	0x00002000,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB14:
.word	0x00004000,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR
PB15:
.word	0x00008000,GPIOB+GPIOx_ODR,GPIOB+GPIOx_IDR

A5:
PC0:
.word	0x00000001,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
A4:
PC1:
.word	0x00000002,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC2:
.word	0x00000004,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC3:
.word	0x00000008,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC4:
.word	0x00000010,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC5:
.word	0x00000020,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC6:
.word	0x00000040,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
D9:
PC7:
.word	0x00000080,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC8:
.word	0x00000100,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC9:
.word	0x00000200,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC10:
.word	0x00000400,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC11:
.word	0x00000800,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC12:
.word	0x00001000,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC13:
USER:
Taste:
.word	0x00002000,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC14:
.word	0x00004000,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR
PC15:
.word	0x00008000,GPIOC+GPIOx_ODR,GPIOC+GPIOx_IDR

MR0:
ex0:
EX0:
.word 	0x00000001<<ex0_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR1:
ex1:
EX1:
.word 	0x00000001<<ex1_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR2:
ex2:
EX2:
.word 	0x00000001<<ex2_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR3:
ex3:
EX3:
.word 	0x00000001<<ex3_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR4:
ex4:
EX4:
.word 	0x00000001<<ex4_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR5:
ex5:
EX5:
.word 	0x00000001<<ex5_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR6:
ex6:
EX6:
.word 	0x00000001<<ex6_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR7:
ex7:
EX7:
.word 	0x00000001<<ex7_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR8:
ex8:
EX8:
.word 	0x00000001<<ex8_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR9:
ex9:
EX9:
.word 	0x00000001<<ex9_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR10:
ex10:
EX10:
.word 	0x00000001<<ex10_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR11:
ex11:
EX11:
.word 	0x00000001<<ex11_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR12:
ex12:
EX12:
.word 	0x00000001<<ex12_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR13:
ex13:
EX13:
.word 	0x00000001<<ex13_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR14:
ex14:
EX14:
.word 	0x00000001<<ex14_nr,exti+EXTI_IMR,exti+EXTI_IMR
MR15:
ex15:
EX15:
.word 	0x00000001<<ex15_nr,exti+EXTI_IMR,exti+EXTI_IMR

pr0:
PR0:
.word 	0x00000001<<ex0_nr,exti+EXTI_PR,exti+EXTI_PR
pr1:
PR1:
.word 	0x00000001<<ex1_nr,exti+EXTI_PR,exti+EXTI_PR
pr2:
PR2:
.word 	0x00000001<<ex2_nr,exti+EXTI_PR,exti+EXTI_PR
pr3:
PR3:
.word 	0x00000001<<ex3_nr,exti+EXTI_PR,exti+EXTI_PR
pr4:
PR4:
.word 	0x00000001<<ex4_nr,exti+EXTI_PR,exti+EXTI_PR
pr5:
PR5:
.word 	0x00000001<<ex5_nr,exti+EXTI_PR,exti+EXTI_PR
pr6:
PR6:
.word 	0x00000001<<ex6_nr,exti+EXTI_PR,exti+EXTI_PR
pr7:
PR7:
.word 	0x00000001<<ex7_nr,exti+EXTI_PR,exti+EXTI_PR
pr8:
PR8:
.word 	0x00000001<<ex8_nr,exti+EXTI_PR,exti+EXTI_PR
pr9:
PR9:
.word 	0x00000001<<ex9_nr,exti+EXTI_PR,exti+EXTI_PR
pr10:
PR10:
.word 	0x00000001<<ex10_nr,exti+EXTI_PR,exti+EXTI_PR
pr11:
PR11:
.word 	0x00000001<<ex11_nr,exti+EXTI_PR,exti+EXTI_PR
pr12:
PR12:
.word 	0x00000001<<ex12_nr,exti+EXTI_PR,exti+EXTI_PR
pr13:
PR13:
.word 	0x00000001<<ex13_nr,exti+EXTI_PR,exti+EXTI_PR
pr14:
PR14:
.word 	0x00000001<<ex14_nr,exti+EXTI_PR,exti+EXTI_PR
pr15:
PR15:
.word 	0x00000001<<ex15_nr,exti+EXTI_PR,exti+EXTI_PR



CEN2:
cen2:	//Tim2 enable
.word	0x00000001,TIM2+TIMx_CR1,TIM2+TIMx_CR1
CEN3:
cen3:	//Tim3 enable
.word	0x00000001,TIM3+TIMx_CR1,TIM3+TIMx_CR1
.ifdef L152
CEN6:
cen6:	//Tim6 enable
.word	0x00000001,TIM6+TIMx_CR1,TIM6+TIMx_CR1
CEN5:
cen7:	//Tim6 enable
.word	0x00000001,TIM7+TIMx_CR1,TIM7+TIMx_CR1
UIE6:
uie6:	//Tim6 Interrupt enable
.word	0x00000001,TIM6+TIMx_DIER,TIM6+TIMx_DIER
UIF6:
uif6:  //Tim6 interrupt flag
.word	0x00000001,TIM6+TIMx_SR,TIM6+TIMx_SR
UIE7:
uie7:	//Tim7 Interrupt enable
.word	0x00000001,TIM7+TIMx_DIER,TIM7+TIMx_DIER
UIF7:
uif7:  //Tim7 interrupt flag
.word	0x00000001,TIM7+TIMx_SR,TIM7+TIMx_SR
.endif
.ifdef F103
CEN6:
cen6:	//Tim6 enable
.word	0x00000001,TIM6+TIMx_CR1,TIM6+TIMx_CR1
CEN5:
cen7:	//Tim6 enable
.word	0x00000001,TIM7+TIMx_CR1,TIM7+TIMx_CR1
UIE6:
uie6:	//Tim6 Interrupt enable
.word	0x00000001,TIM6+TIMx_DIER,TIM6+TIMx_DIER
UIF6:
uif6:  //Tim6 interrupt flag
.word	0x00000001,TIM6+TIMx_SR,TIM6+TIMx_SR
UIE7:
uie7:	//Tim7 Interrupt enable
.word	0x00000001,TIM7+TIMx_DIER,TIM7+TIMx_DIER
UIF7:
uif7:  //Tim7 interrupt flag
.word	0x00000001,TIM7+TIMx_SR,TIM7+TIMx_SR
.endif
.ifdef F411
CEN4:
cen4:	//Tim6 enable
.word	0x00000001,TIM4+TIMx_CR1,TIM4+TIMx_CR1
CEN5:
cen5:	//Tim6 enable
.word	0x00000001,TIM5+TIMx_CR1,TIM5+TIMx_CR1
UIE4:
uie4:	//Tim6 Interrupt enable
.word	0x00000001,TIM4+TIMx_DIER,TIM4+TIMx_DIER
UIF4:
uif4:  //Tim6 interrupt flag
.word	0x00000001,TIM4+TIMx_SR,TIM4+TIMx_SR
UIE5:
uie5:	//Tim7 Interrupt enable
.word	0x00000001,TIM5+TIMx_DIER,TIM5+TIMx_DIER
UIF5:
uif5:  //Tim7 interrupt flag
.word	0x00000001,TIM5+TIMx_SR,TIM5+TIMx_SR
.endif
.ifdef F401
CEN4:
cen4:	//Tim6 enable
.word	0x00000001,TIM4+TIMx_CR1,TIM4+TIMx_CR1
CEN5:
cen5:	//Tim6 enable
.word	0x00000001,TIM5+TIMx_CR1,TIM5+TIMx_CR1
UIE4:
uie4:	//Tim6 Interrupt enable
.word	0x00000001,TIM4+TIMx_DIER,TIM4+TIMx_DIER
UIF4:
uif4:  //Tim6 interrupt flag
.word	0x00000001,TIM4+TIMx_SR,TIM4+TIMx_SR
UIE5:
uie5:	//Tim7 Interrupt enable
.word	0x00000001,TIM5+TIMx_DIER,TIM5+TIMx_DIER
UIF5:
uif5:  //Tim7 interrupt flag
.word	0x00000001,TIM5+TIMx_SR,TIM5+TIMx_SR
.endif
.ifdef F446
CEN4:
cen4:	//Tim6 enable
.word	0x00000001,TIM4+TIMx_CR1,TIM4+TIMx_CR1
CEN5:
cen5:	//Tim6 enable
.word	0x00000001,TIM5+TIMx_CR1,TIM5+TIMx_CR1
UIE4:
uie4:	//Tim6 Interrupt enable
.word	0x00000001,TIM4+TIMx_DIER,TIM4+TIMx_DIER
UIF4:
uif4:  //Tim6 interrupt flag
.word	0x00000001,TIM4+TIMx_SR,TIM4+TIMx_SR
UIE5:
uie5:	//Tim7 Interrupt enable
.word	0x00000001,TIM5+TIMx_DIER,TIM5+TIMx_DIER
UIF5:
uif5:  //Tim7 interrupt flag
.word	0x00000001,TIM5+TIMx_SR,TIM5+TIMx_SR
.endif
UIE2:
uie2:	//Tim6 Interrupt enable
.word	0x00000001,TIM2+TIMx_DIER,TIM2+TIMx_DIER
UIF2:
uif2:  //Tim6 interrupt flag
.word	0x00000001,TIM2+TIMx_SR,TIM2+TIMx_SR
UIE3:
uie3:	//Tim7 Interrupt enable
.word	0x00000001,TIM3+TIMx_DIER,TIM3+TIMx_DIER
UIF3:
uif3:  //Tim7 interrupt flag
.word	0x00000001,TIM3+TIMx_SR,TIM3+TIMx_SR
TIM2_SMS_0:
tim2_sms_0:
.word	0x00000001,TIM2+TIMx_SMCR,TIM2+TIMx_SMCR
TIM2_SMS_1:
tim2_sms_1:
.word	0x00000010,TIM2+TIMx_SMCR,TIM2+TIMx_SMCR
TIM2_SMS_2:
tim2_sms_2:
.word	0x00000100,TIM2+TIMx_SMCR,TIM2+TIMx_SMCR
TIM3_SMS_0:
tim3_sms_0:
.word	0x00000001,TIM3+TIMx_SMCR,TIM3+TIMx_SMCR
TIM3_SMS_1:
tim3_sms_1:
.word	0x00000010,TIM3+TIMx_SMCR,TIM3+TIMx_SMCR
TIM3_SMS_2:
tim3_sms_2:
.word	0x00000100,TIM3+TIMx_SMCR,TIM3+TIMx_SMCR

RXNEIE:
.word	0x00000020,USART2+USART2_CR1,USART2+USART2_CR1

EPort0:
.word 	0x0000001,EPort,EPort
EPort1:
.word 	0x0000002,EPort,EPort
EPort2:
.word 	0x0000004,EPort,EPort
EPort3:
.word 	0x0000008,EPort,EPort
EPort4:
.word 	0x0000010,EPort,EPort
EPort5:
.word 	0x0000020,EPort,EPort
EPort6:
.word 	0x0000040,EPort,EPort
EPort7:
.word 	0x0000080,EPort,EPort
EPort8:
.word 	0x0000100,EPort,EPort
EPort9:
.word 	0x0000200,EPort,EPort
EPort10:
.word 	0x0000400,EPort,EPort
EPort11:
.word 	0x0000800,EPort,EPort
EPort12:
.word 	0x0001000,EPort,EPort
EPort13:
.word 	0x0002000,EPort,EPort
EPort14:
.word 	0x0004000,EPort,EPort
EPort15:
.word 	0x0008000,EPort,EPort
//Systicktimer
SysTickIntEnable:
.word   0x0000002,SysTickCSR,SysTickCSR
SysTickTimerEnable:
.word   0x0000001,SysTickCSR,SysTickCSR
SysTickTimerCOUNTFLAG:
.word   1<<16,SysTickCSR,SysTickCSR
SysTickTimerClockSource:
.word   1<<2,SysTickCSR,SysTickCSR
RTSR0:
rtsr0:
.word   1<<0,exti+exti_RTSR,exti+exti_RTSR
RTSR1:
rtsr1:
.word   1<<1,exti+exti_RTSR,exti+exti_RTSR
RTSR2:
rtsr2:
.word   1<<2,exti+exti_RTSR,exti+exti_RTSR
RTSR3:
rtsr3:
.word   1<<3,exti+exti_RTSR,exti+exti_RTSR
RTSR4:
rtsr4:
.word   1<<4,exti+exti_RTSR,exti+exti_RTSR
RTSR5:
rtsr5:
.word   1<<5,exti+exti_RTSR,exti+exti_RTSR
RTSR6:
rtsr6:
.word   1<<6,exti+exti_RTSR,exti+exti_RTSR
RTSR7:
rtsr7:
.word   1<<7,exti+exti_RTSR,exti+exti_RTSR
RTSR8:
rtsr8:
.word   1<<8,exti+exti_RTSR,exti+exti_RTSR
RTSR9:
rtsr9:
.word   1<<9,exti+exti_RTSR,exti+exti_RTSR
RTSR10:
rtsr10:
.word   1<<10,exti+exti_RTSR,exti+exti_RTSR
RTSR11:
rtsr11:
.word   1<<11,exti+exti_RTSR,exti+exti_RTSR
RTSR12:
rtsr12:
.word   1<<12,exti+exti_RTSR,exti+exti_RTSR
RTSR13:
rtsr13:
.word   1<<13,exti+exti_RTSR,exti+exti_RTSR
RTSR14:
rtsr14:
.word   1<<14,exti+exti_RTSR,exti+exti_RTSR
RTSR15:
rtsr15:
.word   1<<15,exti+exti_RTSR,exti+exti_RTSR

FTSR0:
ftsr0:
.word   1<<0,exti+exti_FTSR,exti+exti_FTSR
FTSR1:
ftsr1:
.word   1<<1,exti+exti_FTSR,exti+exti_FTSR
FTSR2:
ftsr2:
.word   1<<2,exti+exti_FTSR,exti+exti_FTSR
FTSR3:
ftsr3:
.word   1<<3,exti+exti_FTSR,exti+exti_FTSR
FTSR4:
ftsr4:
.word   1<<4,exti+exti_FTSR,exti+exti_FTSR
FTSR5:
ftsr5:
.word   1<<5,exti+exti_FTSR,exti+exti_FTSR
FTSR6:
ftsr6:
.word   1<<6,exti+exti_FTSR,exti+exti_FTSR
FTSR7:
ftsr7:
.word   1<<7,exti+exti_FTSR,exti+exti_FTSR
FTSR8:
ftsr8:
.word   1<<8,exti+exti_FTSR,exti+exti_FTSR
FTSR9:
ftsr9:
.word   1<<9,exti+exti_FTSR,exti+exti_FTSR
FTSR10:
ftsr10:
.word   1<<10,exti+exti_FTSR,exti+exti_FTSR
FTSR11:
ftsr11:
.word   1<<11,exti+exti_FTSR,exti+exti_FTSR
FTSR12:
ftsr12:
.word   1<<12,exti+exti_FTSR,exti+exti_FTSR
FTSR13:
ftsr13:
.word   1<<13,exti+exti_FTSR,exti+exti_FTSR
FTSR14:
ftsr14:
.word   1<<14,exti+exti_FTSR,exti+exti_FTSR
FTSR15:
ftsr15:
.word   1<<15,exti+exti_FTSR,exti+exti_FTSR

/*
.data 1
.balign	4
ISRTabelle:
.rept 256
.byte 0x55
.endr
*/

.data 2
.balign 4
//LED&KEY Vatiablen
LuK_Strobe:
.byte	0
LuK_CLK:
.byte	0
LuK_DIO:
.byte 0
LuK_busy:
.byte 0
//LCD_i2c
.balign 4
LCD_i2c_geraeteadresse:
.byte 0
.balign 4
soft_sda:
LCD_i2c_sda:
.byte 0
LCD_i2c_scl:
.byte 0
.byte 0,0,0,0,0,0,0,0
LCD_i2c_sendstring:
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte	0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.byte   0,0,0
.balign 4
ASCIbuffer:
.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

sprintfAusgabe:
.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
//Grove Variablen
.balign 4
_displayfunction:
.byte 0
_displaycontrol:
.byte 0
.byte 0,0
GroveBuffer:
.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
BCD:
.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

//USART Portmonitor Variablen
PortMonZustand:
.byte 0,0,0,0
PortMonCommand:
.byte 0,0,0,0
EPort:
.byte 0,0,0,0
.balign	0x100

ISRTabelle1:
.space 256,0x55

/*
Datenspeicher:
.space 0x8000,0xaa
*/
.text

//startup.s


Formatstring:
.asciz	"Hallo %d"
.balign 4
.ltorg


startLCD:
//PA11, PA12 LCD-display
	push 	{R0,R1}
	mov R0,#11
	mov R1,#12
	call LCD_i2c_init_display
	call LCD_i2c_clear
	mov R0,#0
	call LCD_i2c_cursorpos
	ldr R0,=StartupAusgabe
	call LCD_i2c_textaus
	pop	{R0,R1}

//Ende Startup
		bx lr
StartupAusgabe:
.asciz "GSOE ARM "
.ltorg

startup:
	bx	lr
//Interruptinitialisierungen
initIRQ: //Startadresse der ISR in R0, Interrupt Nr in R1
	//interrupt vector auf isr einstellen
	push {r0,r1,r2,r3,r4}
	ldr r2,=VectorTableOffsetRegister
	ldr r2,[r2]
	ldr r3,=vektorLocationTabelle
	add r3,r1
	ldrb r3,[r3]
	and r3,#0xff
	add r2,r3
	orr r0,#1		//????
	str r0,[r2]
	pop {r0,r1,r2,r3,r4}
	bx lr

//Interruptinitialisierungen

setIntVector: //Startadresse der ISR in R0, Interrupt Nr in R1
	//interrupt vector auf isr einstellen
	push {r0,r1,r2,r3,r4}
	ldr r2,=VectorTableOffsetRegister
	ldr r2,[r2]
	and r1,#0xff
	add r2,r1
	orr r0,#1		//????
	str r0,[r2]
	pop {r0,r1,r2,r3,r4}
	bx lr

IRQFehler:
	b	IRQFehler
//exti 9-5 und exti 15-10 mit gleicher Vectoradresse!!!
vektorLocationTabelle:
.byte 0x58,0x5c,0x60,0x64,0x68,0x9c,0x9c,0x9c,0x9c,0x9c,0xe0,0xe0,0xe0,0xe0,0xe0,0xe0,0xec,0xf0,0xD8,0xB0,0xB4,0x3C

//Port lesen und schreiben

writePort: //R0 Wert, R1 Port, R2 Maske
	push	{R0,R1,R2,R3,R4}
	ldr R3,[R1,#ODR]
	mvn	R4,R2
	and R3,R4
	and R0,R2
	orr R3,R0
	str R3,[R1,#ODR]
	pop {R0,R1,R2,R3,R4}
	bx	lr

readPort: //R0 Port/Wert, R1 Maske
	ldr R0,[R0,#IDR]
	and R0,R1
	bx	lr



//I2C1 init
I2C_init:
		setPullUpDown PB8,Pullup
		setPullUpDown PB9,Pullup
		setb	PB8
		setb	PB9
I2C_Warte5ms:
	ldr	r1,=2500000
I2C_WarteWdh1:
	subs	r1,#1
	bne		I2C_WarteWdh1
		push {r1,r2}
		ldr r1,=I2C1
		ldr r2,=I2C1_FREQ
		str r2,[r1,#I2C1_CR2]
		ldr r2,=I2C1_CCRValue
		str r2,[r1,#I2C1_CCR]
		ldr r2,=I2C1_TRISEValue
		str r2,[r1,#I2C1_TRISE]
		mov r2,#1	//enable
		str r2,[r1,#I2C1_CR1]
		ldr r1,=GPIOB
		ldr r2,[r1,#GPIOx_AFRH]
		orr r2,#0x44			//Select AF4 f�r PB8 un PB9
		strh r2,[r1,#GPIOx_AFRH]
		setDir PB8,Alternate
		setDir PB9,Alternate
		setAusgangstyp PB8,PushPull
		setAusgangstyp PB9,OpenDrain
		setPullUpDown PB8,Pullup
		setPullUpDown PB9,Pullup



		//call I2C1_stop
		pop {r1,r2}
		bx lr
.ltorg


I2C1_start:
		push {r1,r2}
		ldr r1,=I2C1
		ldr r2,[r1,#I2C1_CR1]
		orr r2,#0x10		//start Bit 8 CR
		str r2,[r1,#I2C1_CR1]
		pop {r1,r2}
		bx lr

I2C1_stop:
		push {r1,r2}
		ldr r1,=I2C1
		ldr r2,[r1,#I2C1_CR1]
		orr r2,#0x200		//Stop Bit 8 CR
		str r2,[r1,#I2C1_CR1]
		pop {r1,r2}
		bx lr

I2C1_sendBytes:	//R0: Startadresse der Daten, R1: Anzahl der Datenbytes, R2: Zieladresse
		push	{r4,r5,r6,r7}
		//call 	I2C1_start
		push {r1,r2}
		ldr r1,=I2C1
		ldr r2,[r1,#I2C1_CR1]
		ldr r6,=0x100
		orr r2,r6		//start Bit 8 CR1
		str r2,[r1,#I2C1_CR1]
		pop {r1,r2}
		ldr  	r4,=I2C1
I2C1_warteStart:
		ldr 	r5,[r4,#I2C1_SR1]
		ands	r5,#1
		beq		I2C1_warteStart

		and 	r2,#0xfe		//transmitmode LSB Adresse reset
		strb	r2,[r4,#I2C1_DR]
I2C1_warteAdresse:
		ldr 	r5,[r4,#I2C1_SR1]
		ands	r5,#2
		beq		I2C1_warteAdresse
		ldr 	r5,[r4,#I2C1_SR2]
I2C1_sendeByte:
		ldr 	r5,[r4,#I2C1_SR1]
		ands	r5,#0x80		//Bit 7: TxE
		beq		I2C1_sendeByte	//Senderegister noch nicht bereit
		ldrb	r5,[r0]
		strb	r5,[r4,#I2C1_DR]
		add		r0,#1
		subs	r1,#1
		bne	    I2C1_sendeByte
I2C1_ByteTransferNotFinished:
		ldr 	r5,[r4,#I2C1_SR1]
		ands	r5,#0x80		//Bit 2: BTF
		beq	I2C1_ByteTransferNotFinished
		call 	I2C1_stop
		ldr r1,=I2C1
		ldr r2,[r1,#I2C1_CR1]
		ldr r6,=0x200
		orr r2,r6		//Stop Bit 8 CR
		str r2,[r1,#I2C1_CR1]

		pop		{r4,r5,r6,r7}
		bx lr
.ltorg
initADC:

		ldr r1,=rcc
		ldr r2,[r1,#RCC_APB2ENR]	//APB2 peripheral clock enable register
		ldr r3,=0x00000001+(1<<9)
		//loadImm32	r3,(0x00000001+(1<<9))
		orr r2,r3	//SYSCFGEN: System configuration controller clock enable, ADC Clock Enable
		str r2,[r1,#RCC_APB2ENR]

    	//RCC->CR|=1; //HSI On
    	ldr r2,[r1]
    	orr	r2,Bit0
    	str	r2,[r1]

    	//while ((RCC->CR&0b10)==0);
warteAufHSI:
    	ldr	r2,[r1]
    	tst r2,Bit1
    	beq	warteAufHSI

		ldr r1,=GPIOA
		ldr	r2,[R1,MODER]
		orr	r2,#0b11
		str	r2,[R1,MODER]

		ldr r1,=ADC
		//loadImm32 r1,ADC
		ldr r2,=ADC_CR1_OVRIE<<26+ADC_CR1_RES<<24+ADC_CR1_AWDEN<<23+ADC_CR1_JAWDEN<<22+ADC_CR1_PDI<<17+ADC_CR1_PDD<<16+ADC_CR1_DISCNUM<<13+ADC_CR1_JDISCEN<<12+ADC_CR1_DISCEN<<11+ADC_CR1_JAUTO<<10+ADC_CR1_AWDSGL<<9+ADC_CR1_SCAN<<8+ADC_CR1_JEOCIE<<7+ADC_CR1_AWDIE<<6+ADC_CR1_EOCIE<<5+ADC_CR1_AWDCH
		//loadImm32 r2,(ADC_CR1_OVRIE<<26+ADC_CR1_RES<<24+ADC_CR1_AWDEN<<23+ADC_CR1_JAWDEN<<22+ADC_CR1_PDI<<17+ADC_CR1_PDD<<16+ADC_CR1_DISCNUM<<13+ADC_CR1_JDISCEN<<12+ADC_CR1_DISCEN<<11+ADC_CR1_JAUTO<<10+ADC_CR1_AWDSGL<<9+ADC_CR1_SCAN<<8+ADC_CR1_JEOCIE<<7+ADC_CR1_AWDIE<<6+ADC_CR1_EOCIE<<5+ADC_CR1_AWDCH)
		str r2,[r1,#ADC_CR1]
		ldr r2,=ADC_CR2_SWSTART<<30+ADC_CR2_EXTEN<<28+ADC_CR2_EXTSEL<<24+ADC_CR2_JSWSTART<<22+ADC_CR2_JEXTEN<<20+ADC_CR2_JEXTSEL<<16+ADC_CR2_ALIGN<<11+ADC_CR2_EOCS<<10+ADC_CR2_DDS<<9+ADC_CR2_DMA<<8+ADC_CR2_DELS<<4+ADC_CR2_ADC_CFG<<2+ADC_CR2_CONT<<1+ADC_CR2_ADON
		//loadImm32 r2,(ADC_CR2_SWSTART<<30+ADC_CR2_EXTEN<<28+ADC_CR2_EXTSEL<<24+ADC_CR2_JSWSTART<<22+ADC_CR2_JEXTEN<<20+ADC_CR2_JEXTSEL<<16+ADC_CR2_ALIGN<<11+ADC_CR2_EOCS<<10+ADC_CR2_DDS<<9+ADC_CR2_DMA<<8+ADC_CR2_DELS<<4+ADC_CR2_ADC_CFG<<2+ADC_CR2_CONT<<1+ADC_CR2_ADON)
		str r2,[r1,#ADC_CR2]
warteAuffertig:
		ldr	R2,[R1]
		tst	R2,Bit6
		beq	warteAuffertig

		bx	lr
//Analog	R�ckgabewert: r0 AD-Wandelwert
Ain0:
	push {R1,R2,R3}
	ldr r1,=ADC
	ldr r2,=ADC_A0
	b 	Ain

Ain1:
	push {R1,R2,R3}
	ldr r1,=ADC
	ldr r2,=ADC_A1
	b 	Ain

Ain2:
	push {R1,R2,R3}
	ldr r1,=ADC
	ldr r2,=ADC_A2
	b 	Ain

Ain3:
	push {R1,R2,R3}
	ldr r1,=ADC
	ldr r2,=ADC_A3
	b 	Ain

Ain4:
	push {R1,R2,R3}
	ldr r1,=ADC
	ldr r2,=ADC_A4
	b 	Ain
Ain5:
	push {R1,R2,R3}
	ldr r1,=ADC
	ldr r2,=ADC_A5
	b 	Ain


Ain:

	str r2,[r1,#ADC_SQR5]
AinWarte:
	ldr r2,=1<<30		//SWSTART
	ldr r3,[r1,#ADC_CR2]
	orr r2,r2,r3
	str	r2,[r1,#ADC_CR2]
//AinWarte:
	ldr r2,[r1]		//ADC_SR Bit 1 == EOC
	ands r2,r2,#2
	beq	AinWarte
	ldr r0,[r1,#ADC_DR]
	pop {R1,R2,R3}
	bx lr
.ltorg

//Grove-LCD RGB Backlight

/*This function sends an instruction to the LCD display using the
 built in instruction codes from the device  datasheet using the mbed
 I2C library*/
Grove_LCD_RGB_Backlight_sendCommand: //char value in r0
	push 	{r0,r1,r2}
	mov		r1,#0x80
	ldr 	r2,=GroveBuffer
	strb	r1,[r2]
	strb	r0,[r2,#1]
	ldr		r0,=GroveBuffer
	mov		r1,#2
	mov		r2,#LCD_ADDRESS
	call	I2C1_sendBytes	//R0: Startadresse der Daten, R1: Anzahl der Datenbytes, R2: Zieladresse
	pop 	{r0,r1,r2}
	bx lr

/*This function is used to turn on the display on the LCD.  It sends the
hexadecimal code for the display on setting to the device in order to
turn on the display*/

Grove_LCD_RGB_Backlight_displayOn:
    push {r0}
    ldr r0,=_displaycontrol
    ldrb r0,[r0]
    orr r0,#LCD_DISPLAYON;
    orr r0,#LCD_DISPLAYCONTROL
    call Grove_LCD_RGB_Backlight_sendCommand //char value in r0
	pop	{r0}
	bx lr

/*This function is used to clear display on the LCD.  It sends the
hexadecimal code for the clear instruction to the device in order to
clear the display*/
Grove_LCD_RGB_Backlightclear:
	push	{r0}
	mov 	r0,#LCD_CLEARDISPLAY
	call	Grove_LCD_RGB_Backlight_sendCommand //char value in r0
	ldr		r0,=128000		//4000�s
Grove_LCD_RGB_BacklightclearWait:
	subs	r0,#1
	bne		Grove_LCD_RGB_BacklightclearWait
	pop		{r0}
	bx		lr

/*This function is used to write to one of the registers for the backlight
of the LCD display.  The function takes in the address of which register to
write to and the value to be written to that register and then sends it to the
LCD display via the mbed I2C library*/
Grove_LCD_RGB_BacklightsetReg:	//R0: char addr, R1: char val
	push	{r0,r1,r2}
	ldr		r2,=GroveBuffer
	strb	r0,[r2]
	strb	r1,[r2,#1]
	ldr		r0,=GroveBuffer
	mov		r1,#2
	mov		r2,#RGB_ADDRESS
	call	I2C1_sendBytes	//R0: Startadresse der Daten, R1: Anzahl der Datenbytes, R2: Zieladresse
	pop		{r0,r1,r2}
	bx 		lr

/*This function is used to set the backlight color of the dispaly.
It writes the provided r, g, and b values to the registers for the red
value, the green value, and the blue value respectively.*/
Grove_LCD_RGB_BacklightsetRGB:	//R0: char r, R1: char g, R2: char b
	push	{r0,r1,r2,r3}
	mov		r3,r0
	mov		r0,#GREEN_REG
	call 	Grove_LCD_RGB_BacklightsetReg	//R0: char addr, R1: char val
	mov		r0,#RED_REG
	mov		r1,r3
	call 	Grove_LCD_RGB_BacklightsetReg	//R0: char addr, R1: char val
	mov		r0,#BLUE_REG
	mov		r1,r2
	call 	Grove_LCD_RGB_BacklightsetReg	//R0: char addr, R1: char val
	pop		{r0,r1,r2,r3}
	bx	lr

/*This function is used to write to the LCD screen.  It takes in a string of
characters and writes them to the 0x40 register of the display.*/
Grove_LCD_RGB_Backlightprint:	//R0: char *str)
	push	{r0,r1,r2,r3}
	mov		r3,#0
	ldr		r1,=GroveBuffer
	mov		r2,#0x40
	strb	r2,[r1]
	add		r3,#1
Grove_LCD_RGB_Backlightprintrepeat:
	add		r1,#1
	ldrb	r2,[r0]
	ands	r2,0xff
	beq		Grove_LCD_RGB_Backlightprintfertig
	strb	r2,[r1]
	add		r3,#1
	add		r0,#1
	b		Grove_LCD_RGB_Backlightprintrepeat
Grove_LCD_RGB_Backlightprintfertig:
	ldr		r0,=GroveBuffer
	mov		r1,r3
	mov		r2,#LCD_ADDRESS
	call	I2C1_sendBytes	//R0: Startadresse der Daten, R1: Anzahl der Datenbytes, R2: Zieladresse
	pop		{r0,r1,r2,r3}
	bx	lr

/*This function sets where on the screen the text will be written next.  It
takes in two values which indicate the row and column on the display that
the cursor should be moved to*/
Grove_LCD_RGB_Backlightlocate:	//R0: char col, R1: char row
	push	{r0,r1,r2,r3}
	subs	r1,#0
	ite eq
    orreq r0,#0x80
    orrne r0,#0xC0
    ldr	r2,=GroveBuffer
    mov	r3,#0x80
    strb r3,[r2]
    strb r0,[r2,#1]
    ldr	r0,=GroveBuffer
    mov	r1,#2
    mov	r2,#LCD_ADDRESS
   	call	I2C1_sendBytes	//R0: Startadresse der Daten, R1: Anzahl der Datenbytes, R2: Zieladresse
	pop	{r0,r1,r2,r3}
   	bx 	lr

Grove_LCD_RGB_Backlightinit:

	push	{r0,r1,r2,r3}

	mov		r0,#255
	mov		r1,#255
	mov		r2,#255
	call 	Grove_LCD_RGB_BacklightsetRGB

	ldr	r0,=_displayfunction
	ldrb r1,[r0]
	orr	 r1,#LCD_2LINE
	orr	 r1,#LCD_5x10DOTS
    //Initialize displayfunction parameter for setting up LCD display
   //_displayfunction |= LCD_2LINE;
   //_displayfunction |= LCD_5x10DOTS;

   //Wait for more than 30 ms after power rises above 4.5V per the data sheet
   // wait_ms(50);
    ldr	r2,=3200000
Grove_LCD_RGB_BacklightinitWait50ms:
	subs	r2,#1
	bne	  Grove_LCD_RGB_BacklightinitWait50ms


    // Send first function set command. Wait longer that 39 us per the data sheet
    //sendCommand(LCD_FUNCTIONSET | _displayfunction);
    orr	r1,#LCD_FUNCTIONSET
    mov	r0,r1
    call	Grove_LCD_RGB_Backlight_sendCommand //char value in r0

    //wait_us(45);
    ldr	r1,=2880
Grove_LCD_RGB_BacklightinitWait45us:
	subs	r1,#1
	bne		Grove_LCD_RGB_BacklightinitWait45us

    // turn the display on
    //displayOn();
    call	Grove_LCD_RGB_Backlight_displayOn

    // clear the display
    //clear();
    call 	Grove_LCD_RGB_Backlightclear

    // Initialize backlight
    //setReg(0, 0);
    mov	r0,#0
    mov	r1,#0
    call	Grove_LCD_RGB_BacklightsetReg	//R0: char addr, R1: char val
    //setReg(1, 0);
    mov	r0,#1
    mov	r1,#0
    call	Grove_LCD_RGB_BacklightsetReg	//R0: char addr, R1: char val
    //setReg(0x08, 0xAA);
    mov	r0,#8
    mov	r1,#0xaa
    call	Grove_LCD_RGB_BacklightsetReg	//R0: char addr, R1: char val
    pop	{r0,r1,r2,r3}
    bx	lr

/*This function is used to write to the LCD screen.  It takes in a number writes it to the 0x40 register of the display.*/
Grove_LCD_RGB_Backlightdezaus:	//R0: nummer
	push	{r0,r1,r2,r3,r4}
	ldr		r3,=BCD
	ldr	r1,=1000000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=100000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#1]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=10000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#2]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=1000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#3]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=100000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#4]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=10000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#5]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=1000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#6]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=100
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#7]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=10
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#8]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=1
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#9]
	mul	r2,r1
	sub		r0,r2

	mov	r0,r3
	mov	r4,#0

dezausWdh:
	ldrb	r2,[r3]
	add		r2,#0x30
	strb	r2,[r3]
	add		r3,#1
	add		r4,#1
	cmp		r4,#10
	bne		dezausWdh

	mov	r1,#10
dezausWdh2:
	ldrb	r2,[r0]
	cmp		r2,#0x30
	bne		dezAnzeigen
	sub		r1,#1
	add		r0,#1
	cmp		r1,#1
	bne		dezausWdh2
dezAnzeigen:
	mov		r2,#0
	str		r2,[r3]
	call	Grove_LCD_RGB_Backlightprint	//R0: char *str

	pop		{r0,r1,r2,r3,r4}
	bx	lr

.ltorg
//MFS
.equ SerialData,D8
.equ SerialClock,D7
.equ LatchClock,D4

MFS_serial_init:
	//7segment-Anzeige
//	setDir D8,Ausgang
//	setDir D7,Ausgang
//	setDir D4,Ausgang
	bx lr

sendBit:	//Bit im Carry
	movCBit	SerialData
	setb	SerialClock
	clr	    SerialClock
	bx	lr

MFS_sendWord:	//Daten in R0
	push	{r1,r2}
//	ldr	 r2,=EPort
//	ldr  r1,[r2]
	mov  r1,r0
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	lsrs r1,#1
	call sendBit
	setb	LatchClock
	clr		LatchClock
	pop	{r1,r2}
	bx lr

.ltorg

//LCD_Keyboard_Shield
.equ	RS,PA9
.equ	E,PC7
.equ 	DB4,D4
.equ	DB5,D5
.equ	DB6,D6
.equ	DB7,D7



//This function is used to write to the LCD screen.  It takes in a number writes it to the 0x40 register of the display.
LCD_Keypad_Dezaus:	//R0: nummer

	push	{r0,r1,r2,r3,r4}
	ldr		r3,=BCD

	ldr	r1,=1000000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=100000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#1]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=10000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#2]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=1000000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#3]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=100000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#4]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=10000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#5]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=1000
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#6]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=100
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#7]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=10
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#8]
	mul	r2,r1
	sub		r0,r2

	ldr	r1,=1
	udiv	r2,r0,r1	//r2=r0/r1
	strb	r2,[r3,#9]
	mul	r2,r1
	sub		r0,r2

	mov	r0,r3
	mov	r4,#0

LCD_Keypad_dezausWdh:
	ldrb	r2,[r3]
	add		r2,#0x30
	strb	r2,[r3]
	add		r3,#1
	add		r4,#1
	cmp		r4,#10
	bne		LCD_Keypad_dezausWdh

	mov	r1,#10
LCD_Keypad_dezausWdh2:
	ldrb	r2,[r0]
	cmp		r2,#0x30
	bne		LCD_Keypad_dezAnzeigen
	sub		r1,#1
	add		r0,#1
	cmp		r1,#1
	bne		LCD_Keypad_dezausWdh2
LCD_Keypad_dezAnzeigen:
	//mov		r2,#0
	//str		r2,[r3]
	call	LCD_Keypad_Text	//R0: char *str

	pop		{r0,r1,r2,r3,r4}
	bx	lr

LCD_Keypad_Cursor:	//Cursorpos in R0
	push	{r0}
	orr		r0,#0x80
	call	LCD_Keypad_write_Control
	call	LCD_Keypad_Warte50us
	pop		{r0}
	bx	lr


LCD_Keypad_Clear:
	push	{r0}
	mov		r0,#0x01
	call	LCD_Keypad_write_Control
	mov		r0,#0
	call	LCD_Keypad_Cursor
	call	LCD_Keypad_Warte10ms
	pop		{r0}
	bx	lr

LCD_Keypad_Text:
/*This function is used to write to the LCD screen.  It takes in a string of
characters and writes them to the 0x40 register of the display.*/
	//R0: char *str)
	push	{r0,r1,r2,r3}
	mov		r1,r0
LCD_Keypad_Text_Wdh:
	ldrb	r0,[r1]
	cmp		r0,#0
	beq		LCD_Keypad_Text_fertig
	call	LCD_Keypad_write_Data
	add		r1,#1
	b		LCD_Keypad_Text_Wdh
LCD_Keypad_Text_fertig:
	call	LCD_Keypad_Warte50us
	pop		{r0,r1,r2,r3}
	bx	lr


LCD_Keypad_init:
	setDir	RS,Ausgang
	setDir	E,Ausgang
	clr		E
	setDir	DB4,Ausgang
	setDir	DB5,Ausgang
	setDir	DB6,Ausgang
	setDir	DB7,Ausgang
	call	LCD_Keypad_FunctionSet
	mov		r0,#0x28
	call	LCD_Keypad_write_Control
	mov		r0,#0x0E
	call	LCD_Keypad_write_Control
	mov		r0,#0x06
	call	LCD_Keypad_write_Control
	mov		r0,#0
	call	LCD_Keypad_Cursor
	call	LCD_Keypad_Warte50us
	bx lr

LCD_Keypad_wait:
	push	{r0}
	mov		r0,#16
LCD_Keypad_wait_Wdh:
	subs	r0,#1
	bne		LCD_Keypad_wait_Wdh
	pop		{r0}
	bx		lr

LCD_Keypad_write:	//Byte in R0
	push	{r0}
	setb	E
	lsrs	r0,#5
	movCBit DB4
	lsrs	r0,#1
	movCBit DB5
	lsrs	r0,#1
	movCBit DB6
	lsrs	r0,#1
	movCBit DB7
	call	LCD_Keypad_wait
	clr		E
	call	LCD_Keypad_wait
	pop		{r0}
	push	{r0}
	setb	E
	lsrs	r0,#1
	movCBit DB4
	lsrs	r0,#1
	movCBit DB5
	lsrs	r0,#1
	movCBit DB6
	lsrs	r0,#1
	movCBit DB7
	setb	E
	call	LCD_Keypad_wait
	clr		E
	call	LCD_Keypad_wait

	pop		{r0}
	bx		lr

LCD_Keypad_write_Control:	//Byte in R0
	clr		RS
	b		LCD_Keypad_write

LCD_Keypad_write_Data:		//Byte in R0
	setb	RS
	b		LCD_Keypad_write

LCD_Keypad_FunctionSet:	//4Bit Interface
	clr		RS
	clr		DB7
	clr		DB6
	setb	DB5
	clr		DB4
	setb	E
	call	LCD_Keypad_wait
	clr		E
	call	LCD_Keypad_wait
	bx		lr

LCD_Keypad_Warte50us:
	push	{r0}
	mov		r0,#300
LCD_Keypad_Warte50usWdh:
	subs	r0,#1
	bne		LCD_Keypad_Warte50usWdh
	pop		{r0}
	bx		lr

LCD_Keypad_Warte10ms:
	push	{r0}
	ldr		r0,=530000
LCD_Keypad_Warte10msWdh:
	subs	r0,#1
	bne		LCD_Keypad_Warte10msWdh
	pop		{r0}
	bx		lr
.ltorg

//Schrittmotorshield
.equ SM_EN12,D11
.equ SM_EN34,D3
.equ SM_SerialData,D8
.equ SM_SerialClock,D4
.equ SM_LatchClock,D12
.equ SM_OutputEnable,D7


SM_init:
	setDir D11,Ausgang
	setDir D3,Ausgang
	setDir D8,Ausgang
	setDir D4,Ausgang
	setDir D12,Ausgang
	setDir D7,Ausgang
	bx	lr

SM_sendBit:	//Bit im Carry
	//movc	SerialData
	movCBit	SM_SerialData
	setb	SM_SerialClock
	clr	    SM_SerialClock
	bx	lr

SM_sendByte:	//Schritt in R0
	push	{r0,r1}
	mov r1,r0
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	lsrs r1,#1
	call SM_sendBit
	setb	SM_LatchClock
	clr		SM_LatchClock
	pop		{r0,r1}
	bx lr

.ltorg
//Bitliste:	//Maske,ODR, IDR

.equ	ea,255
.equ	EA,255

//Bit-Operationen

writeBit:	//Bit in R0, Wert in R1
	push	{r0,r1,r2,r3,r4}
	cmp		r0,#EA
	bne		writeWeiter
	cmp		r1,#1
	beq		setEA
clearEA:
	mov	r0,#1
	msr faultmask,r0
	b		writeFertig
setEA:
	mov	r0,#0
	msr faultmask,r0
	b		writeFertig
writeWeiter:
	ldr		r2,=Bitliste
	mov		r3,#12
	mul		r0,r3
	add		r0,r2		//Adresse des Biteintrags in der Bitliste ist in R0
	cmp		r1,#1
	beq		setbit
clearbit:
	mov		r1,r0		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r4,[r1]		//Maske in R4
	bic		r3,r4
	str		r3,[r2]
	b		writeFertig
setbit:
	mov		r1,r0		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r4,[r1]		//Maske in R4
	orr		r3,r4
	str		r3,[r2]

writeFertig:
	pop 	{r0,r1,r2,r3,r4}
	bx		lr

writeBit2:	//Port Bit in R2, Wert in R3
	push	{r0,r1,r2,r3,r4}

	ldr		r0,=Bitliste
	mov		r1,#12
	mul		r2,r1
	add		r2,r0		//Adresse des Biteintrags in der Bitliste ist in R0
	cmp		r3,#1
	beq		setbit2
clearbit2:
	mov		r3,r2		//Tabellenadresse des Bits in der Bitliste
	ldr		r0,[r3,#4]	//Outputregister
	ldr 	r1,[r0]		//@Outputregister in r3
	ldr		r4,[r3]		//Maske in R4
	bic		r1,r4
	str		r1,[r0]
	b		writeFertig2
setbit2:
	mov		r1,r2		//Tabellenadresse des Bits in der Bitliste
	ldr		r0,[r1,#4]	//Outputregister
	ldr 	r3,[r0]		//@Outputregister in r3
	ldr		r4,[r1]		//Maske in R4
	orr		r3,r4
	str		r3,[r0]

writeFertig2:
	pop 	{r0,r1,r2,r3,r4}
	bx		lr





readBit:	//Bit in R0, return in R0
	push	{r1,r2,r3,r4}
	cmp		r0,#EA
	bne		readWeiter
	mov		r0,#1
	mrs 	r0,faultmask
	and		r0,#1
	eor		r0,#1
	b		readFertig
readWeiter:
	ldr		r2,=Bitliste
	mov		r3,#12
	mul		r0,r3
	add		r0,r2		//Adresse des Biteintrags in der Bitliste ist in R0
	mov		r1,r0		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#8]	//Inputregister
	ldr 	r3,[r2]		//@Inputregister in r3
	ldr		r4,[r1]		//Maske in R4
	ands	r3,r4
	ite		eq
	moveq	r0,#0
	movne	r0,#1
readFertig:
	pop 	{r1,r2,r3,r4}
	bx		lr

readBit2:	//Bit in R0, return in R4
	push	{r0,r1,r2,r3}
	ldr		r2,=Bitliste
	mov		r3,#12
	mul		r0,r3
	add		r0,r2		//Adresse des Biteintrags in der Bitliste ist in R0
	mov		r1,r0		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#8]	//Inputregister
	ldr 	r3,[r2]		//@Inputregister in r3
	ldr		r4,[r1]		//Maske in R4
	ands	r3,r4
	ite		eq
	moveq	r0,#0
	movne	r0,#1
	mov		r4,r0
readFertig2:
	pop 	{r0,r1,r2,r3}
	bx		lr

.ltorg

//.equ Eingang,0
//.equ Ausgang,1
//.equ Alternate,2
//.equ Analog,3
setDirection:	//R0: Portbit, R1: Direction
	push	{R0,R1,R2,R3,R4,r5}
	mov		r2,#16
	mov		r3,r0
	udiv	r3,r2	//0: PA, 1: PB 2: PC
	mov		r2,#0x400
	mul		r3,r2
	ldr		r2,=GPIOA
	add		r2,r3		//GPIO Basisadresse in r2
	mov		r3,#16
	mov		r4,r0
	mod		r5,r4,r3	//a=b%c	BitNr in r5
	add		r5,r5,r5
	lsl		r1,r1,r5		//Richtungswert in R1 bereit zum Schreiben
    mov r3,#3
    lsl r3,r3,r5
    ldr r4,=0xffffffff
    eor r3,r4
    ldr r4,[r2]
    and r4,r3
    orr	r4,r1
    str r4,[r2]	//ModeRegister
	pop {R0,R1,R2,R3,R4,r5}
	bx	lr
.ltorg


PullUpDown:
//Pullup/-down
//.equ	KeinPull,0
//.equ	Pullup,1
//.equ	PullDown,2
	push {R0,R1,R2,R3,R4,R5}
	mov		r2,#16
	mov		r3,r0
	udiv	r3,r2	//0: PA, 1: PB 2: PC
	mov		r2,#0x400
	mul		r3,r2
	ldr		r2,=GPIOA
	add		r2,r3		//GPIO Basisadresse in r2
	mov		r3,#16
	mov		r4,r0
	mod		r5,r4,r3	//a=b%c	BitNr in r5
	add		r5,r5,r5
	lsl		r1,r1,r5		//PUDRwert in R1 bereit zum Schreiben
    mov r3,#3
    lsl r3,r3,r5
    ldr r4,=0xffffffff
    eor r3,r4
    ldr r4,[r2,#GPIOx_PUPDR]
    and r4,r3
    orr	r4,r1
    str r4,[r2,#GPIOx_PUPDR]	//Pullup, -down Register
	pop {R0,R1,R2,R3,R4,R5}
	bx	lr
.ltorg

cplBit:		//Bit in R0
	push	{r0,r1,r2,r3,r4}
	mov		r1,#12
	mul		r0,r1
	ldr		r1,=Bitliste
	add		r1,r0		//Tabellenadresse des Bits in der Bitliste
	ldr		r2,[r1,#4]	//Outputregister
	ldr 	r3,[r2]		//@Outputregister in r3
	ldr		r4,[r1]		//Maske in R4
	eor		r3,r4
	str		r3,[r2]
	pop 	{r0,r1,r2,r3,r4}
	bx		lr
.ltorg


Ausgangstyp: 	//Bit in R0, Typ in R1
//OutputType
//.equ PushPull,0
//.equ OpenDrain,1
	push {R0,R1,R2,R3,R4,R5}
	mov		r2,#16
	mov		r3,r0
	udiv	r3,r2	//0: PA, 1: PB 2: PC
	mov		r2,#0x400
	mul		r3,r2
	ldr		r2,=GPIOA
	add		r2,r3		//GPIO Basisadresse in r2
	mov		r3,#16
	mov		r4,r0
	mod		r5,r4,r3	//a=b%c	BitNr in r5
	lsl		r1,r1,r5	//ATRwert in R1 bereit zum Schreiben
    mov r3,#1
    lsl r3,r3,r5
    ldr r4,=0xffffffff
    eor r3,r4
    ldr r4,[r2,#GPIOx_OTYPER]
    and r4,r3
    orr	r4,r1
    str r4,[r2,#GPIOx_OTYPER]	//Pullup, -down Register
	pop {R0,R1,R2,R3,R4,R5}
	bx	lr


.equ	DL,0
.equ	DH,1
writeArduinoPort: 		// r0: Wert r1: DL oder DH 	kopiert untere 8 Bits von r0 auf D7..D0 oder D15 .. D8
	push	{r0,r1,r2,r3,r4}
	cmp		r1,#1
	beq		copyDH
	lsrs	R0,#1
	movCBit		D0
	lsrs	r0,#1
	movCBit		D1
	lsrs	r0,#1
	movCBit		D2
	lsrs	r0,#1
	movCBit		D3
	lsrs	r0,#1
	movCBit		D4
	lsrs	r0,#1
	movCBit		D5
	lsrs	r0,#1
	movCBit		D6
	lsrs	r0,#1
	movCBit		D7
	b	copyFertig
copyDH:
	lsrs	r0,#1
	movCBit		D8
	lsrs	r0,#1
	movCBit		D9
	lsrs	r0,#1
	movCBit		D10
	lsrs	r0,#1
	movCBit		D11
	lsrs	r0,#1
	movCBit		D12
	lsrs	r0,#1
	movCBit		D13
	lsrs	r0,#1
	movCBit		D14
	lsrs	r0,#1
	movCBit		D15
copyFertig:
	pop	{r0,r1,r2,r3,r4}

	bx	lr


writeRegister:	//R0 Register, R1 Data
	strh	R1,[R0]
	bx	lr


readRegister:	//R0 Register	return R0
	ldrh	r0,[r0]
	bx	lr


writeByteRegister:	//R0 Register, R1 Data
	strb	R1,[R0]
	bx	lr


readByteRegister:	//R0 Register	return R0
	ldrb	r0,[r0]
	bx	lr

.ltorg


toBCD:
	push	{R1,R2,R3}
	mov		R3,#10
	mov		R1,#0
	mod		R2,R0,R3
	add		R1,R2
	udiv	R0,R3
	mod		R2,R0,R3
	lsl		R2,#4
	add		R1,R2
	udiv	R0,R3
	mod		R2,R0,R3
	lsl		R2,#8
	add		R1,R2
	udiv	R0,R3
	mod		R2,R0,R3
	lsl		R2,#12
	add		R1,R2
	mov		R0,R1
	pop		{R1,R2,R3}
	bx	lr
//LCD_i2c
/*	im RAM werden die i2c Ports gespeichert
LCD_i2c_sda:
.byte 0
LCD_i2c_scl:
.byte 0
*/

LCD_i2c_init:	//R0 = SCL, R1 = SDA
	push	{R0,R1,R2,R3,R4}
	ldr		r2,=LCD_i2c_sda
	strb	r0,[r2,#1]
	strb	r1,[r2]
	mov		r4,r1	//R4 speichert SDA
	mov		r3,R0	//R3 speichert SCL

	mov		r1,#Ausgang		//R0= scl
	call	setDirection	//SCL = Ausgang

	mov		r0,r4			//R1=Ausgang, R0 = SDA
	call	setDirection

	mov		r1,#OpenDrain	//R1 = Opendrain R0=SDA
	call	Ausgangstyp		//SDA OpenDrain

	mov		r1,#Pullup
	call	PullUpDown

	mov		r1,#1			//SDA=1
	call	writeBit
	mov		r0,R3
	call	writeBit
	mov		r0,#100
	call	wait_ms

	pop		{R0,R1,R2,R3,R4}
	bx	 lr

LCD_i2c_warte:
	push	{r0}
	mov		r0,#50	//50*6 / 32MHz ca 10�s
LCD_i2c_warte_Wdh:
	subs	r0,#1
	bne		LCD_i2c_warte_Wdh
	pop		{r0}
	bx		lr

LCD_i2c_start:
 	push	{r0,r1,r2,r3}
 	ldr		r2,=LCD_i2c_sda
//SCL=1;
	ldrb	r0,[r2,#1]	//SCL
	mov		r1,#1
	call	writeBit
//SDA=1;
	ldrb	r0,[r2]	//SDA
	mov		r1,#1
	call	writeBit

//warte();
	call	LCD_i2c_warte

//SCL=1;
	ldrb	r0,[r2,#1]	//SCL
	mov		r1,#1
	call	writeBit
//SDA=0;
	ldrb	r0,[r2]	//SDA
	mov		r1,#0
	call	writeBit
//warte();
	call	LCD_i2c_warte

//SCL=0;
	ldrb	r0,[r2,#1]	//SCL
	mov		r1,#0
	call	writeBit
//warte()
	call	LCD_i2c_warte

 	pop	{r0,r1,r2,r3}
 	bx	lr

LCD_i2c_sendeSlaveAdresse:  // R0 = (unsigned char adresse)
	push	{r0,r1,r2,r3,r4}
	mov		r3,r0
	mov		r4,#6
	ldr		r2,=LCD_i2c_sda
LCD_i2c_sendeSlaveAdresse_Wdh:
	//SDA=(adresse>>i)&1;
	ldrb	r0,[r2]		//sda-Port in R0
	lsr		r1,r3,r4
	and		r1,#1
	call	writeBit
	//warte();
	call	LCD_i2c_warte
	//SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
	//warte();
	call	LCD_i2c_warte
	//warte();
	call	LCD_i2c_warte
	//SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
	//warte();
	call	LCD_i2c_warte

	subs	r4,#1
	bpl		LCD_i2c_sendeSlaveAdresse_Wdh

	pop	{r0,r1,r2,r3,r4}
	bx	lr

LCD_i2c_sendRD_WR:	//R0 :(unsigned char rdwr)	0 = wr, 1 = rd
	push	{r0,r1,r2,r3,r4}
	mov		r1,r0
	ldr		r2,=LCD_i2c_sda

	ldrb	r0,[r2]		//sda-Port in R0
	call	writeBit
	//warte();
	call	LCD_i2c_warte
	//SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
	//warte();
	call	LCD_i2c_warte
	//warte();
	call	LCD_i2c_warte
	//SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
	//warte();
	call	LCD_i2c_warte

	pop		{r0,r1,r2,r3,r4}
	bx		lr

LCD_i2c_ack:	//R�ckgabe R0 Ack (0 = 0k)
	push	{r1,r2,r3,r4}
//{
//unsigned char x;
//	SDA=1;
	ldr		r2,=LCD_i2c_sda
	mov		r1,#1
	ldrb	r0,[r2]		//sda-Port in R0
	call	writeBit
//	warte();
	call	LCD_i2c_warte
//	SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
//	warte();
	call	LCD_i2c_warte
//	x=SDA;
	ldrb	r0,[r2]		//sda-Port in R0
	call	readBit		//acc in R0
	mov		r3,r0		//acc in R3
//	warte();
	call	LCD_i2c_warte
//	SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
//	warte();
	call	LCD_i2c_warte
//	return x;
	mov		R0,R3
//}
	pop		{r1,r2,r3,r4}
	bx		lr

LCD_i2c_sendeByte:  // R0 = (unsigned char Byte)
	push	{r0,r1,r2,r3,r4}
	mov		r3,r0
	mov		r4,#7
	ldr		r2,=LCD_i2c_sda
LCD_i2c_sendeByte_Wdh:
	//SDA=(adresse>>i)&1;
	ldrb	r0,[r2]		//sda-Port in R0
	lsr		r1,r3,r4
	and		r1,#1
	call	writeBit
	//warte();
	call	LCD_i2c_warte
	//SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
	//warte();
	call	LCD_i2c_warte
	//warte();
	call	LCD_i2c_warte
	//SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
	//warte();
	call	LCD_i2c_warte

	subs	r4,#1
	bpl		LCD_i2c_sendeByte_Wdh

	pop	{r0,r1,r2,r3,r4}
	bx	lr

LCD_i2c_stop:
//{
	push	{r0,r1,r2,r3,r4}
	ldr		r2,=LCD_i2c_sda
//	SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
//	SDA=0;
	ldrb	r0,[r2]
	mov		r1,#0
	call	writeBit
//	warte();
	call	LCD_i2c_warte
//	SDA=1;
	ldrb	r0,[r2]
	mov		r1,#0
	call	writeBit
//}
	pop	{r0,r1,r2,r3,r4}
	bx	lr

//return unsigned char in R0 (1 nicht ok)
//Parameter:
// R0: unsigned char geraeteadresse, -> R4
// R1: unsigned char wordadress, -> R5
// R2: unsigned char * daten, -> R6
// R3: unsigned char anzahl -> R7

LCD_i2c_send_i2c:
//{
	push	{R1,R2,R3,R4,R5,R6,R7,R8}
//	unsigned char i;
	mov		R4,R0
	mov		R5,R1
	mov		R6,R2
	mov		R7,R3
//	start()
	call LCD_i2c_start;
//	sendeSlaveAdresse(geraeteadresse);
	mov		R0,R4
	call	LCD_i2c_sendeSlaveAdresse
//sendRD_WR(0);
	mov		R0,#0
	call	LCD_i2c_sendRD_WR
//	if (ack()!=1) return 0;
	call	LCD_i2c_ack
	cmp		R0,#0
	bne		LCD_i2c_send_i2c_fertig
//	sendeWordAdresse(wordadress);
	mov		R0,R5
	call	LCD_i2c_sendeByte
//	if (ack()!=1) return 0;
	call	LCD_i2c_ack
	cmp		R0,#0
	bne		LCD_i2c_send_i2c_fertig
//	for (i=0;i<anzahl;i++)
//	{
	mov		R8,#0
LCD_i2c_send_i2c_Wdh:
	cmp		R8,R7
	beq		LCD_i2c_send_i2c_stop
//		sendeDatenByte(daten[i]);
	ldrb	R0,[R6,R8]
	call	LCD_i2c_sendeByte
//		if (ack()!=1) return 0;
	call	LCD_i2c_ack
	cmp		R0,#0
	bne		LCD_i2c_send_i2c_fertig
	add		R8,#1
	b		LCD_i2c_send_i2c_Wdh
//	}
LCD_i2c_send_i2c_stop:
//	stop();
	call	LCD_i2c_stop
//	return 0;
	mov		R0,#0
//}
LCD_i2c_send_i2c_fertig:
	pop		{R1,R2,R3,R4,R5,R6,R7,R8}
	bx	lr

//Soft i2c


soft_init:	//R0 = SCL, R1 = SDA, R2=i2cNr
	push	{R0,R1,R2,R3,R4}
	ldr		r3,=soft_sda
	lsl		r2,#1
	add		r2,r3
	strb	r1,[r2]
	strb	r0,[r2,#1]
	mov		r4,r1	//R4 speichert SDA
	mov		r3,R0	//R3 speichert SCL

	mov		r1,#Ausgang		//R0= scl
	call	setDirection	//SCL = Ausgang

	mov		r0,r4			//R1=Ausgang, R0 = SDA
	call	setDirection

	mov		r1,#OpenDrain	//R1 = Opendrain R0=SDA
	call	Ausgangstyp		//SDA OpenDrain

	mov		r1,#Pullup
	call	PullUpDown

	mov		r1,#1			//SDA=1
	call	writeBit
	mov		r0,R3
	call	writeBit
	mov		r0,#100
	call	wait_ms

	pop		{R0,R1,R2,R3,R4}
	bx	 lr

soft_warte:
	push	{r0}
	mov		r0,100	//50*6 / 32MHz ca 10�s
soft_warte_Wdh:
	subs	r0,#1
	bne		soft_warte_Wdh
	pop		{r0}
	bx		lr

soft_start:	//R1 = i2cNr
 	push	{r0,r1,r2,r3}
 	ldr		r2,=soft_sda
 	lsl		r1,#1
 	add		r2,r1
//SCL=1;
	ldrb	r0,[r2,#1]	//SCL
	mov		r1,#1
	call	writeBit
//SDA=1;
	ldrb	r0,[r2]	//SDA
	mov		r1,#1
	call	writeBit

//warte();
	call	soft_warte

//SCL=1;
	ldrb	r0,[r2,#1]	//SCL
	mov		r1,#1
	call	writeBit
//SDA=0;
	ldrb	r0,[r2]	//SDA
	mov		r1,#0
	call	writeBit
//warte();
	call	soft_warte

//SCL=0;
	ldrb	r0,[r2,#1]	//SCL
	mov		r1,#0
	call	writeBit
//warte()
	call	soft_warte

 	pop	{r0,r1,r2,r3}
 	bx	lr

soft_sendeSlaveAdresse:  // R0 = (unsigned char adresse) R1=i2cNr
	push	{r0,r1,r2,r3,r4}
	mov		r3,r0
	mov		r4,#6
	ldr		r2,=soft_sda
	lsl		r1,#1
	add		r2,r1
soft_sendeSlaveAdresse_Wdh:
	//SDA=(adresse>>i)&1;
	ldrb	r0,[r2]		//sda-Port in R0
	lsr		r1,r3,r4
	and		r1,#1
	call	writeBit
	//warte();
	call	soft_warte
	//SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
	//warte();
	call	soft_warte
	//warte();
	call	soft_warte
	//SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
	//warte();
	call	soft_warte

	subs	r4,#1
	bpl		soft_sendeSlaveAdresse_Wdh

	pop	{r0,r1,r2,r3,r4}
	bx	lr

soft_sendRD_WR:	//R0 :(unsigned char rdwr)	0 = wr, 1 = rd R1=i2cNr
	push	{r0,r1,r2,r3,r4}
	lsl		r1,#1
	ldr		r2,=soft_sda
	add		r2,r1
	mov		r1,r0
	ldrb	r0,[r2]		//sda-Port in R0
	call	writeBit
	//warte();
	call	soft_warte
	//SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
	//warte();
	call	soft_warte
	//warte();
	call	soft_warte
	//SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
	//warte();
	call	soft_warte

	pop		{r0,r1,r2,r3,r4}
	bx		lr

soft_ack:	//R�ckgabe R0 Ack (0 = 0k) R1=i2cNr
	push	{r1,r2,r3,r4}
//{
//unsigned char x;
//	SDA=1;
	ldr		r2,=soft_sda
	lsl		r1,#1
	add		r2,r1
	mov		r1,#1
	ldrb	r0,[r2]		//sda-Port in R0
	call	writeBit
//	warte();
	call	soft_warte
//	SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
//	warte();
	call	soft_warte
//	x=SDA;
	ldrb	r0,[r2]		//sda-Port in R0
	call	readBit		//acc in R0
	mov		r3,r0		//acc in R3
//	warte();
	call	soft_warte
//	SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
//	warte();
	call	soft_warte
//	return x;
	mov		R0,R3
//}
	pop		{r1,r2,r3,r4}
	bx		lr

soft_sendeByte:  // R0 = (unsigned char Byte) r1=i2cNr
	push	{r0,r1,r2,r3,r4}
	mov		r3,r0
	mov		r4,#7
	ldr		r2,=soft_sda
	lsl		r1,#1
	add		r2,r1
soft_sendeByte_Wdh:
	//SDA=(adresse>>i)&1;
	ldrb	r0,[r2]		//sda-Port in R0
	lsr		r1,r3,r4
	and		r1,#1
	call	writeBit
	//warte();
	call	soft_warte
	//SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
	//warte();
	call	soft_warte
	//warte();
	call	soft_warte
	//SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
	//warte();
	call	soft_warte

	subs	r4,#1
	bpl		soft_sendeByte_Wdh

	pop	{r0,r1,r2,r3,r4}
	bx	lr

soft_stop:	//r1=i2cNr
//{
	push	{r0,r1,r2,r3,r4}
	ldr		r2,=soft_sda
	lsl		r1,#1
	add		r2,r1
//	SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
//	SDA=0;
	ldrb	r0,[r2]
	mov		r1,#0
	call	writeBit
//	warte();
	call	soft_warte
//	SDA=1;
	ldrb	r0,[r2]
	mov		r1,#0
	call	writeBit
//}
	pop	{r0,r1,r2,r3,r4}
	bx	lr

soft_sendAck:	//R0=ack  (unsigned char ack) r1=i2cNr
	push	{r0,r1,r2,r3,r4}
	ldr		r2,=soft_sda
	lsl		r1,#1
	add		r2,r1
//	SDA=ack;
	mov		r1,r0
	ldrb	r0,[r2]
	call	writeBit
//	SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
//	warte();
	call	soft_warte
//	SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
//	SDA=1;
	ldrb	r0,[r2]
	mov		r1,#1
	call	writeBit
//	warte();
	call	soft_warte
	pop	   {r0,r1,r2,r3,r4}
	bx	lr

soft_leseByte:	//return unsigned char in R0, r1 = i2cNr
	push	{r1,r2,r3,r4}
	ldr		r2,=soft_sda
	lsl		r1,#1
	add		r2,r1
	//unsigned char x=0;
	mov		r4,#0
	//char i;
	mov		r3,#0
soft_leseByteWdh:
//	for (i=7;i>=0;i--)
//	{
	//SCL=0;
	call soft_warte
//		SCL=1;
	ldrb	r0,[r2,#1]
	mov		r1,#1
	call	writeBit
//		warte();
	call	soft_warte
//		x=x<<1;
	lsl		R4,#1
//		x=x+SDA;
	ldrb	r0,[r2]
	call	readBit
	add		R4,R0
//		SCL=0;
	ldrb	r0,[r2,#1]
	mov		r1,#0
	call	writeBit
//		warte();
	call	soft_warte
//	}
	adds	r3,#1
	cmp		r3,#8
	bne		soft_leseByteWdh
//	return x;
	mov		r0,r4
	pop	{r1,r2,r3,r4}
	bx	lr


// R0 Ger�teadresse, -> R4
// R1 Wortadresser	-> R5
// R2 Datenzeiger	-> R6
// R3 Anzahl der zu lesenden Bytes im LowByte-> R7
// R3 Nummer der i2c-Schnittstelle von der gelesen werden soll im Highbyte ->R9

soft_read_i2c: //(unsigned char geraeteadresse, unsigned char wordadress, unsigned char *daten) //return r0: 1 Fehler
//{
	push	{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9}
	mov		R9,R3
	lsr		r9,#8
	and		r3,#0xff
	mov		R4,R0
	mov		R5,R1
	mov		R6,R2
	mov		R7,R3
//	unsigned char i;
//	start()
	mov		r1,R9
	call soft_start;
//	sendeSlaveAdresse(geraeteadresse);
	mov		R0,R4
	call	soft_sendeSlaveAdresse
//sendRD_WR(0);
	mov		R0,#0
	call	soft_sendRD_WR
//	if (ack()!=1) return 0;
	call	soft_ack
	cmp		R0,#0
	bne		soft_read_i2c_fertig
//	sendeWordAdresse(wordadress);
	mov		R0,R5
	call	soft_sendeByte
//	if (ack()!=1) return 0;
	call	soft_ack
	cmp		R0,#0
	bne		soft_read_i2c_fertig
//	stop();
	call	soft_stop
	cmp		R7,#0
	beq		soft_read_i2c_noRead
//	start();
	call	soft_start
//	sendeSlaveAdresse(geraeteadresse);
	mov		R0,R4
	call	soft_sendeSlaveAdresse
	//sendRD_WR(1);
	mov		R0,#1
	call	soft_sendRD_WR
//	if (ack()!=1) return 0;
	call	soft_ack
	cmp		R0,#0
	bne		soft_read_i2c_fertig

//	for (i=0;i<anzahl-1;i++)
//	{
	mov		R8,#0
soft_readByteWdh:
//		daten[i]=leseByte();
	call	soft_leseByte
	strb	r0,[R6,R8]
	adds	R8,#1
//letztes Byte	-> noAck
	cmp		R7,R8
	beq		soft_readByteNoAck
//		sendAck(0);
	mov		r0,#0
	call	soft_sendAck
	b		soft_readByteWdh
//	}

//	daten[i]=leseByte();
//	sendAck(1);
soft_readByteNoAck:
	mov		r0,#1
	call	soft_sendAck
//	stop();
	call	soft_stop
//	return 1;
//}
soft_read_i2c_noRead:
	pop	{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9}
	mov	r0,#0
	bx	lr
soft_read_i2c_fertig:	//Fehler
	pop	{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9}
	mov	r0,#1
	bx	lr


//return unsigned char in R0 (1 nicht ok)
//Parameter:
// R0: unsigned char geraeteadresse, -> R4
// R1: unsigned char wordadress, -> R5
// R2: unsigned char * daten, -> R6
// R3: unsigned char anzahl -> R7
// R3: 2. Byte unsigned char i2cNr	->R9

soft_send_i2c:
//{
	push	{R1,R2,R3,R4,R5,R6,R7,R8,R9}
//	unsigned char i;
    mov		R9,R3
    lsr		R9,#8
    and		R3,#0xFF
	mov		R4,R0
	mov		R5,R1
	mov		R6,R2
	mov		R7,R3
//	start()
	mov		r1,R9
	call soft_start;
//	sendeSlaveAdresse(geraeteadresse);
	mov		R0,R4
	call	soft_sendeSlaveAdresse
//sendRD_WR(0);
	mov		R0,#0
	call	soft_sendRD_WR
//	if (ack()!=1) return 0;
	call	soft_ack
	cmp		R0,#0
	bne		soft_send_i2c_fertig
//	sendeWordAdresse(wordadress);
	mov		R0,R5
	call	soft_sendeByte
//	if (ack()!=1) return 0;
	call	soft_ack
	cmp		R0,#0
	bne		soft_send_i2c_fertig
//	for (i=0;i<anzahl;i++)
//	{
	mov		R8,#0
soft_send_i2c_Wdh:
	cmp		R8,R7
	beq		soft_send_i2c_stop
//		sendeDatenByte(daten[i]);
	ldrb	R0,[R6,R8]
	call	soft_sendeByte
//		if (ack()!=1) return 0;
	call	soft_ack
	cmp		R0,#0
	bne		soft_send_i2c_fertig
	add		R8,#1
	b		soft_send_i2c_Wdh
//	}
soft_send_i2c_stop:
//	stop();
	call	soft_stop
//	return 0;
	mov		R0,#0
//}
soft_send_i2c_fertig:
	pop		{R1,R2,R3,R4,R5,R6,R7,R8,R9}
	bx	lr


//R0 = SCL, R1 = SDA verwendet soft_i2c mit i2cNr=0
LCD_i2c_init_display: //R0 = SCL, R1 = SDA,
	push	{R0,R1,R2,R3,R4,R5}
	mov		r2,#0
	call 	soft_init
	mov		R0,#50
	call	wait_ms
//return unsigned char in R0 (1 nicht ok)
//Parameter:
// R0: unsigned char geraeteadresse,
// R1: unsigned char wordadress,
// R2: unsigned char * daten,
// R3: unsigned char anzahl


	mov	R5,#0
LCD_i2c_scan:
	ldr		R4,=LCD_i2c_8Bit
	ldrb	r3,[R4]
	mov		r2,R4
	add		r2,#1
	mov		r1,#0
	mov		r0,R5	;#LCD_Adresse		//oder 0x27
	mov		r4,#0
	call 	soft_send_i2c
	cmp     R0,#0
	beq		LCD_i2c_scan_erfolgreich
	add     R5,#1
    cmp     R5,#128
    bne		LCD_i2c_scan

LCD_i2c_scan_erfolgreich:
	ldr 	R0,=LCD_i2c_geraeteadresse
	strb	R5,[R0]


	mov		R0,#5
	call	wait_ms

	ldr		R4,=LCD_i2c_8Bit
	ldrb	r3,[R4]
	mov		r2,R4
	add		r2,#1
	mov		r1,#0
//	mov		r0,#LCD_Adresse	//oder 0x27
	ldr		r0,=LCD_i2c_geraeteadresse
	ldrb	r0,[r0]

	mov		r4,#0
	call 	soft_send_i2c
	mov		R0,#5
	call	wait_ms

	ldr		R4,=LCD_i2c_8Bit
	ldrb	r3,[R4]
	mov		r2,R4
	add		r2,#1
	mov		r1,#0
	mov		r4,#0
//	mov		r0,#LCD_Adresse	//oder 0x27
	ldr		r0,=LCD_i2c_geraeteadresse
	ldrb	r0,[r0]

	call 	soft_send_i2c
	mov		R0,#5
	call	wait_ms

	ldr		R4,=LCD_i2c_Initsequence
	ldrb	r3,[R4]
	mov		r2,R4
	add		r2,#1
	mov		r1,#0
//	mov		r0,#LCD_Adresse	//oder 0x27
	ldr		r0,=LCD_i2c_geraeteadresse
	ldrb		r0,[r0]

	mov		r4,#0
	call 	soft_send_i2c
	mov		R0,#5
	call	wait_ms
	pop		{R0,R1,R2,R3,R4,R5}
	bx	lr


LCD_i2c_clear:
	push	{r0}
	mov		r0,#0
	call	LCD_i2c_cursorpos
	ldr		r0,=LCD_i2c_leerstring
	call	LCD_i2c_textout
	mov		r0,#0x40
	call	LCD_i2c_cursorpos
	ldr		r0,=LCD_i2c_leerstring
	call	LCD_i2c_textout
	pop		{r0}
	bx	lr


LCD_i2c_cursorpos:	//R0 cursorpos
	push	{r0,r1,r2,r3,r4}
	ldr		r2,=LCD_i2c_sendstring
	orr		R0,#0x80
	mov		r3,R0
	lsl		r0,r3,#4
	orr		r0,#0b1000			//BL=1, CS=0,RW=0, RS=0
	strb	r0,[r2,#3]
	strb	r0,[r2,#5]
	orr		r0,#0b0100
	strb	r0,[r2,#4]
	mov		r0,r3
	and		r0,0b11110000			//High Nippel in R0
	orr		r0,0b1000
	strb	r0,[r2,#0]
	strb	r0,[r2,#2]
	orr		r0,#0b0100
	strb	r0,[r2,#1]
// R0: unsigned char geraeteadresse,
// R1: unsigned char wordadress,
// R2: unsigned char * daten,
// R3: unsigned char anzahl
//	mov		r0,#LCD_Adresse
	ldr		r0,=LCD_i2c_geraeteadresse
	ldrb	r0,[r0]

	mov		r1,#8
	mov		r3,#6
	mov		r4,#0
	call	soft_send_i2c
	pop		{r0,r1,r2,r3,r4}
	bx 		lr



//Zahl in R0 wird als Dezimalzahl ausgegeben

LCD_i2c_dezaus:
dezaus:
	push {R0}
	call	ToDezASCI
	ldr R0,=ASCIbuffer
	call LCD_i2c_textaus
	pop {R0}
	bx lr

//Zahl in R0 wird als Hexadezimalzahl ausgegeben


LCD_i2c_hexaus:
hexaus:
	push {R0}
	call	ToHexASCI
	ldr R0,=ASCIbuffer
	call LCD_i2c_textaus
	pop {R0}
	bx lr

//Zeichen in R0 wird ausgegeben

LCD_i2c_asciaus:
	push	{R0,R1}
	ldr R1,=ASCIbuffer
	strb	R0,[R1]
	mov 	R0,#0
	strb 	R0,[R1,1]
	mov 	R0,R1
	call 	LCD_i2c_textaus
	pop		{R0,R1}
	bx lr


//Zahl in R0 wird als Bin�rzahl ausgegeben (8Bit)

LCD_i2c_binaus:
binaus:
	push {R0}
	call	ToBin8ASCI
	ldr R0,=ASCIbuffer
	call LCD_i2c_textaus
	pop {R0}
	bx lr

//Zahl in R0 wird als Bin�rzahl ausgegeben (8Bit)


LCD_i2c_bin16aus:
bin16aus:
	push {R0}
	call	ToBin16ASCI
	ldr R0,=ASCIbuffer
	call LCD_i2c_textaus
	pop {R0}
	bx lr


LCD_i2c_textzeile1:	//R0 Pointer auf string, nullterminiert
	push {R0}
	mov R0,#0
	call LCD_i2c_cursorpos
	ldr R0,=LCD_i2c_Leerzeile
	call LCD_i2c_textaus
	mov R0,#0
	call LCD_i2c_cursorpos
	pop {R0}
	call LCD_i2c_textaus
	bx lr



LCD_i2c_textzeile2:	//R0 Pointer auf string, nullterminiert
	push {R0}
	mov R0,#0x40
	call LCD_i2c_cursorpos
	ldr R0,=LCD_i2c_Leerzeile
	call LCD_i2c_textaus
	mov R0,#0x40
	call LCD_i2c_cursorpos
	pop {R0}
	call LCD_i2c_textaus
	bx lr

LCD_i2c_Leerzeile:
.asciz "                "

.ltorg



LCD_i2c_textaus:	//R0 Pointer auf string, nullterminiert
LCD_i2c_textout:	//R0 Pointer auf string, nullterminiert
	push	{r0,r1,r2,r3,r4}
	ldr		r2,=LCD_i2c_sendstring
	mov		r3,#0
LCD_i2c_textoutWdh:
	ldrb	r1,[r0,r3]
	cmp		r1,#0
	beq		LCD_i2c_textoutfertig
	cmp 	r3,#16
	beq		LCD_i2c_textoutfertig
	lsl		r4,r1,#4
	orr		r4,#0b1001	//BL=1, rw=0,cs=0,rs=1
	strb	r4,[r2,#3]
	strb	r4,[r2,#5]
	orr		r4,0b0100
	strb	r4,[r2,#4]
	mov		r4,r1
	and		r4,0b11110000
	orr		r4,#0b1001	//BL=1, rw=0,cs=0,rs=1
	strb	r4,[r2,#0]
	strb	r4,[r2,#2]
	orr		r4,0b0100
	strb	r4,[r2,#1]
	add		r2,#6
	add		r3,#1
	b		LCD_i2c_textoutWdh
LCD_i2c_textoutfertig:
// R0: unsigned char geraeteadresse,
// R1: unsigned char wordadress,
// R2: unsigned char * daten,
// R3: unsigned char anzahl

//	mov		r0,#LCD_Adresse
	ldr		r0,=LCD_i2c_geraeteadresse
	ldrb	r0,[r0]

	mov		r1,#8
	mov		r4,#6
	mul		r3,r4
	mov		r4,#0
	ldr		r2,=LCD_i2c_sendstring
	call	soft_send_i2c
	pop	{r0,r1,r2,r3,r4}
	bx	lr


/*
Expanderanschl�sse:
P0 = RS
P1 = RW
P2 = CS
P3 = BL
P4 = DB4
P5 = DB5
P6 = DB6
P7 = DB7
*/
//LCD Kommando
LCD_i2c_8Bit:
// DB7,DB6,DB5,DB4,BL,CS,RW,RS
.byte	3,0b00111000,0b00111100,0b00111000

LCD_i2c_Initsequence:
.byte 15
// DB7,DB6,DB5,DB4,BL,CS,RW,RS
.byte 0b00101000,0b00101100,0b00101000		//0010

.byte 0b00101000,0b00101100,0b00101000		//0010
.byte 0b10001000,0b10001100,0b10001000		//1000 = NF00

.byte 0b00001000,0b00001100,0b00001000		//0000	D=1 C=1 B=0
.byte 0b11111000,0b11111100,0b11111000		//0110  Entry Mode

.byte 0b00001000,0b00001000,0b00001000		//0000	clear display
.byte 0b00011000,0b00011100,0b00011000		//0001

LCD_i2c_clearCommand:
.byte 6
.byte 0b00001000,0b00001000,0b00001000		//0000	clear display
.byte 0b00011000,0b00011100,0b00011000		//0001

LCD_i2c_leerstring:
.asciz	"                "


.balign 4
//LED&KEY

LuK_init:	//R0 = Pin Strobe, R1 = Pin CLK, R2 = Pin DIO
	push	{r0,r1,r2,r3,r4}
	ldr		r3,=LuK_Strobe
	strb	r0,[r3]
	strb	r1,[r3,#1]
	strb	r2,[r3,#2]
/*
	mov		r4,r1
	mov		r1,#Ausgang		//Strobe Ausgang
	call	setDirection
	mov		r0,r4
	call	setDirection	//Clk Ausgang
	mov		r0,r2
	call	setDirection	//DIO Ausgang
	mov		r1,#OpenDrain
	call	Ausgangstyp		//DIO OpenDrain
*/
	mov		r1,#1
	call	writeBit		//DIO = 1
	ldrb	r0,[r3]
	call	writeBit		//Strobe = 1
	ldrb	r0,[r3,#1]
	call	writeBit		//CLK = 1
	mov		r0,#0x8F
	call	LuK_sendCommand
	mov		r0,#0			//Display l�schen
	mov		r1,#0
	mov		r2,#0
LuK_init_Wdh:
	call	LuK_send2Byte
	adds	r2,#1
	cmp		r2,#16
	bne		LuK_init_Wdh
	pop		{r0,r1,r2,r3,r4}
	bx	lr

//writeBit2:	//Port Bit in R2, Wert in R3
LuK_sendBit:	//Send Bit in r1, Pin DIO in R0, Pin CLK in R2 Wert CLK in R3
	mov		r3,#0
	call	writeBit2
	call	writeBit
	mov		r3,#1
	call	writeBit2
	bx		lr
.ltorg

LuK_sendCommand: //Command in R0
	push	{r0,r1,r2,r3,r4,r5}
	mov		r4,r0			//Command in R4
	ldr		R5,=LuK_Strobe
	ldrb		R2,[R5,#1]		//Pin CLK in R2
	ldrb		R0,[r5]			//Pin Strobe in R0
	mov		R1,#0
	call	writeBit		//Strobe auf 0
	ldrb		r0,[r5,#2]		//Pin DIO	in r0
	mov		r5,#0			//Bit Z�hler in r5
LuK_sendCommand_Wdh:
	lsrs	r4,#1
	ite		cc
	movcc	r1,#0
	movcs	r1,#1
	call	LuK_sendBit
	adds	r5,#1
	cmp		r5,#8
	bne		LuK_sendCommand_Wdh
	ldr		R5,=LuK_Strobe	//Strobe wieder auf 1
	ldrb	R0,[r5]			//Pin Strobe in R0
	mov		R1,#1
	call	writeBit		//Strobe auf 1
	pop		{r0,r1,r2,r3,r4,r5}
	bx 	lr

LuK_send2Byte: //Command in R0	Data in R1
	push	{r0,r1,r2,r3,r4,r5,r6}
	mov		r4,r0			//Command in R4
	mov		r6,r1
	ldr		R5,=LuK_Strobe
	ldrb		R2,[R5,#1]		//Pin CLK in R2
	ldrb		R0,[r5]			//Pin Strobe in R0
	mov		R1,#0
	call	writeBit		//Strobe auf 0
	ldrb		r0,[r5,#2]		//Pin DIO	in r0
	mov		r5,#0			//Bit Z�hler in r5
LuK_send2Byte_Wdh:
	lsrs	r4,#1
	ite		cc
	movcc	r1,#0
	movcs	r1,#1
	call	LuK_sendBit
	adds	r5,#1
	cmp		r5,#8
	bne		LuK_send2Byte_Wdh
	mov		r1,#10			//2�s
LuK_send2Byte_Warte:
	subs	r1,#1
	bne		LuK_send2Byte_Warte
	mov		r5,#0			//Bit Z�hler in r5
LuK_send2Byte_Wdh2:
	lsrs	r6,#1
	ite		cc
	movcc	r1,#0
	movcs	r1,#1
	call	LuK_sendBit
	adds	r5,#1
	cmp		r5,#8
	bne		LuK_send2Byte_Wdh2
	ldr		R5,=LuK_Strobe
	ldrb	R0,[r5]			//Pin Strobe in R0
	mov		R1,#1
	call	writeBit		//Strobe auf 1
	pop		{r0,r1,r2,r3,r4,r5,r6}
	bx 	lr
.ltorg

LuK_sendByte:	//R0 Displayadresse, R1 Data
	push	{r0,r1,r2,r3,r4}
	ldr		r2,=LuK_busy
	ldrb	r3,[r2]
	cmp		r3,#0
	bne		LuK_sendBytefertig
	mov		r3,#1
	strb	r3,[r2]
	mov		r4,r0		//Displayadresse gespeichert in r4
	add		r4,#0xC0	//Alle displayadressen haben 0xC?
	mov		r0,#0x44	//setData Command
	call	LuK_sendCommand
	mov		r0,r4
	call	LuK_send2Byte
	ldr		r2,=LuK_busy
	mov		r3,#0
	strb	r3,[r2]
LuK_sendBytefertig:
	pop		{r0,r1,r2,r3,r4}
	bx		lr
.ltorg
LuK_sendCommand_ohneStrobe: //Command in R0
	mov		r4,r0			//Command in R4
	ldr		R5,=LuK_Strobe
	ldrb		R2,[R5,#1]		//Pin CLK in R2
	ldrb		R0,[r5]			//Pin Strobe in R0
	mov		R1,#0
	call	writeBit		//Strobe auf 0
	ldrb		r0,[r5,#2]		//Pin DIO	in r0
	mov		r5,#0			//Bit Z�hler in r5
LuK_sendCommand_Wdh2:
	lsrs	r4,#1
	ite		cc
	movcc	r1,#0
	movcs	r1,#1
	call	LuK_sendBit
	adds	r5,#1
	cmp		r5,#8
	bne		LuK_sendCommand_Wdh2
	//ldr		R5,=LuK_Strobe	//Strobe wieder auf 1
	//ldrb	R0,[r5]			//Pin Strobe in R0
	//mov		R1,#1
	//call	writeBit		//Strobe auf 1

	bx 	lr

LuK_readBit:
	mov		r3,#0
	call	writeBit2
	nop
	nop
	nop
	nop		//Wartezeit auf Data
	call	readBit2
	mov		r3,#1
	call	writeBit2
	bx		lr
.ltorg


LuK_read:	//R�ckgabe in R0, readBit2:	//Bit in R0, return in R4
	push	{r1,r2,r3,r4}
	ldr		r5,=LuK_Strobe
	ldrb	r0,[r5,#2]		//DIO in R0
	mov		r1,#1
	call 	writeBit
	ldrb	r2,[r5,#1]		//clk in R2
	mov		r5,#8
	mov		r6,#0
LuK_read_Wdh:
	call	LuK_readBit	//Bit in R4
	lsl		r6,#1
	add		r6,r4
	subs	r5,#1
	bne		LuK_read_Wdh
	mov		r0,r6
	mov		r1,#10			//2�s
LuK_read_Warte1:
	subs	r1,#1
	bne		LuK_read_Warte1
	pop		{r1,r2,r3,r4}
	bx		lr

.ltorg

LuK_readByte:	//R�ckgabe in R0
	push	{r1,r2,r3,r4,r5,r6}
	ldr		r2,=LuK_busy
	ldrb	r3,[r2]
	cmp		r3,#0
	bne		LuK_readBytefertig
	mov		r3,#1
	strb	r3,[r2]
	mov		r0,#0x42
	call	LuK_sendCommand_ohneStrobe
	mov		r1,#20 //10			//2�s
LuK_readByte_Warte1:
	subs	r1,#1
	bne		LuK_readByte_Warte1

	ldr		r0,=LuK_DIO
	ldrb	r0,[r0]
	mov		r1,#0

	ldrb	r0,[r5,#2]		//DIO in R0
	mov		r1,#1
	call 	writeBit

//	call	setDirection
	call	LuK_read
	mov		r1,r0
	call	LuK_read
	mov		r2,r0
	call	LuK_read
	mov		r3,r0
	call	LuK_read
	mov		r4,r0
	ldr		R5,=LuK_Strobe	//Strobe wieder auf 1
	ldrb	R0,[r5]			//Pin Strobe in R0
	push	{r1}
	mov		R1,#1
	call	writeBit		//Strobe auf 1
	pop		{r1}
	mov		r0,#0
	lsl		r0,#1
	lsrs	r4,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r3,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r2,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r1,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r4,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r3,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r2,#4
	adc	r0,#0
	lsl		r0,#1
	lsrs	r1,#4
	adc	r0,#0
	push	{r0}
	ldr		r0,=LuK_DIO
	ldrb	r0,[r0]
	mov		r1,#1
//	call	setDirection
	pop		{r0}
	ldr		r2,=LuK_busy
	mov		r3,#0
	strb	r3,[r2]
LuK_readBytefertig:
	pop		{r1,r2,r3,r4,r5,r6}
	bx		lr
.ltorg

LuK_setLEDs:	//LEDS in R0, Maske in R3
	push	{r0,r1,r2,r3}
	mov		r2,r0
	mov		r3,r1

	mov		r0,#1
LuK_setLEDs_Wdh:
	mov		r1,#0
	lsrs	r2,#1
	adc		r1,#0
	lsrs	r3,#1
	bcc		LuK_setLEDs_weiter
	call	LuK_sendByte	//R0 Displayadresse, R1 Data
LuK_setLEDs_weiter:
	adds	r0,#2
	cmp		r0,#17
	bne		LuK_setLEDs_Wdh

	pop		{r0,r1,r2,r3}
	bx		lr
.ltorg

ToDezASCI:  //R0=dezimalwert => ASCIbuffer
	push {R0,R1,R2,R3,R4,R5}
	mov	R2,#10		//Teiler 10

	ldr R3,=ASCIbuffer
	mov R1,#0		//Endezeichen
	strb R1,[R3]

ToDexASCISchiebeBuffer:
	//Buffer 1 Byte nach rechts verschieben
	mov R5,#30
ToDezASCIWdh:
	ldrb R4,[R3,R5]
	add R5,#1
	strb R4,[R3,R5]
	subs R5,#2
	bcs ToDezASCIWdh

ToDezASCI_ZeichenInBuffereintragen:
	mod R1,R0,R2	//R1=R0%10
	add R1,#0x30
	strb R1,[R3]
	udiv R0,R2
	cmp R0,#0
	bne ToDexASCISchiebeBuffer


	pop  {R0,R1,R2,R3,R4,R5}
	bx lr
.ltorg
ToHexASCI: //Hexadezimalwert in R0
	push {R0,R1,R2,R3,R4,R5}
	mov	R2,#16		//Teiler 16

	ldr R3,=ASCIbuffer
	mov R1,#0		//Endezeichen
	strb R1,[R3]

ToHexASCISchiebeBuffer:
	//Buffer 1 Byte nach rechts verschieben
	mov R5,#30
ToHexASCIWdh:
	ldrb R4,[R3,R5]
	add R5,#1
	strb R4,[R3,R5]
	subs R5,#2
	bcs ToHexASCIWdh

ToHexASCI_ZeichenInBuffereintragen:
	mod R1,R0,R2	//R1=R0%16
	cmp R1,#10
	bcc ToHexASCi_0bis9
	add R1,#7
ToHexASCi_0bis9:
	add R1,#0x30
	strb R1,[R3]
	udiv R0,R2
	cmp R0,#0
	bne ToHexASCISchiebeBuffer


	pop  {R0,R1,R2,R3,R4,R5}
	bx lr
.ltorg
ToBin8ASCI: //Hexadezimalwert in R0 ( 8Bit )
	push {R0,R1,R2,R3,R4,R5,R6}
	mov	R2,#2		//Teiler 16

	ldr R3,=ASCIbuffer
	mov R1,#0		//Endezeichen
	strb R1,[R3]

	mov R6,#8

ToBin8ASCISchiebeBuffer:
	//Buffer 1 Byte nach rechts verschieben
	mov R5,#30
ToBin8ASCIWdh:
	ldrb R4,[R3,R5]
	add R5,#1
	strb R4,[R3,R5]
	subs R5,#2
	bcs ToBin8ASCIWdh

ToBin8ASCI_ZeichenInBuffereintragen:
	mod R1,R0,R2	//R1=R0%16
	add R1,#0x30
	strb R1,[R3]
	udiv R0,R2
	subs R6,#1
	bne ToBin8ASCISchiebeBuffer


	pop  {R0,R1,R2,R3,R4,R5,R6}
	bx lr
.ltorg
ToBin16ASCI: //Hexadezimalwert in R0 ( 16Bit )
	push {R0,R1,R2,R3,R4,R5,R6}
	mov	R2,#2		//Teiler 2

	ldr R3,=ASCIbuffer
	mov R1,#0		//Endezeichen
	strb R1,[R3]

	mov R6,#16

ToBin16ASCISchiebeBuffer:
	//Buffer 1 Byte nach rechts verschieben
	mov R5,#30
ToBin16ASCIWdh:
	ldrb R4,[R3,R5]
	add R5,#1
	strb R4,[R3,R5]
	subs R5,#2
	bcs ToBin16ASCIWdh

ToBin16ASCI_ZeichenInBuffereintragen:
	mod R1,R0,R2	//R1=R0%2
	add R1,#0x30
	strb R1,[R3]
	udiv R0,R2
	subs R6,#1
	bne ToBin16ASCISchiebeBuffer


	pop  {R0,R1,R2,R3,R4,R5,R6}
	bx lr



wait_ms:	//Wartezeit in ms in R0
	push	{r0,r1}
	ldr		r1,=frequenz/(1000*Takte_pro_Schleifendurchlauf)
	mul		r0,r1
	mov 	r1,#1
wait_msWdh:
	subs	r0,r1
	bne		wait_msWdh
	pop		{r0,r1}
	bx	lr

