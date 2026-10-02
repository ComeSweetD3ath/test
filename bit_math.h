#ifndef BIT_MATH_H
#define BIT_MATH_H

#define SETBIT(reg,bit) reg|=(1<<bit)
#define CLRBIT(reg,bit) reg&=~(1<<bit)
#define TOGBIT(reg,bit) reg^=(1<<bit)
#define GETBIT(reg,bit) ((reg>>bit)&1)

#endif