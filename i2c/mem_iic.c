#include <stdio.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>

#define DIR_IIC 0x50

int main() {

	int fd;
	int dato;
	int i = 0;
	wiringPiSetup();
	fd = wiringPiI2CSetup( DIR_IIC );

	while ( dato != 'n' ) {
	dato = wiringPiI2CReadReg8( fd, i );
	printf("0x%x = %c\n", i, dato);
	i++;
	}
}
