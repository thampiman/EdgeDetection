
#include "C6416_DSK_FIRcfg.h"
#include "images.h"
#include <math.h>
#include <time.h>
#include "std.h"
#define CHIP_6416 1
#define HEIGHTY 288
#define WIDTHX 352
#include "dsk6416.h"
#include "dsk6416_aic23.h"
#pragma DATA_SECTION (frame_1,"ext_sdram")
extern unsigned char frame_1[HEIGHTY*WIDTHX];
unsigned char gradient[HEIGHTY*WIDTHX];
unsigned char edgemap[HEIGHTY*WIDTHX];

/* Codec configuration settings */
DSK6416_AIC23_Config config = { \
    0x0017,  /* 0 DSK6416_AIC23_LEFTINVOL  Left line input channel volume */ \
    0x0017,  /* 1 DSK6416_AIC23_RIGHTINVOL Right line input channel volume */\
    0x01f9,  /* 2 DSK6416_AIC23_LEFTHPVOL  Left channel headphone volume */  \
    0x01f9,  /* 3 DSK6416_AIC23_RIGHTHPVOL Right channel headphone volume */ \
    0x0011,  /* 4 DSK6416_AIC23_ANAPATH    Analog audio path control */      \
    0x0000,  /* 5 DSK6416_AIC23_DIGPATH    Digital audio path control */     \
    0x0000,  /* 6 DSK6416_AIC23_POWERDOWN  Power down control */             \
    0x0043,  /* 7 DSK6416_AIC23_DIGIF      Digital audio interface format */ \
    0x0081,  /* 8 DSK6416_AIC23_SAMPLERATE Sample rate control */            \
    0x0001   /* 9 DSK6416_AIC23_DIGACT     Digital interface activation */   \
};

void main()
{
	int th=45; // set the theshold for generating the edge map
	int i,y_index,x_index;
	int gradientX=0;
	int gradientY=0;
	clock_t start, stop, overhead; // variables for profiling

	 /* Initialize the board support library, must be called first */
    DSK6416_init();

	// First get the overhead before profiling code
	start = clock();
	stop = clock();
	overhead = stop-start;

	start = clock();
	for (i=0;i<HEIGHTY*WIDTHX;i++) //initialise arrays
	{
		gradient[i]=0;
		edgemap[i]=0;
	}
	stop = clock();
	LOG_printf(&mylog, "Initialisation cycles: %d", stop-start-overhead);

	start = clock();
	for(y_index = 0; y_index < HEIGHTY; y_index++)
	{	
		for(x_index = 0; x_index < WIDTHX; x_index++)
		{
			gradientX=abs(frame_1[x_index+y_index*WIDTHX+1]-frame_1[x_index+y_index*WIDTHX-1]);
			gradientY=abs(frame_1[x_index+(y_index+1)*WIDTHX]-frame_1[x_index+(y_index-1)*WIDTHX]);
			gradient[x_index+y_index*WIDTHX]=sqrt(gradientX*gradientX+gradientY*gradientY);
			if (gradient[x_index+y_index*WIDTHX]>th)
			{
				edgemap[x_index+y_index*WIDTHX]=255;
			}
		}
	}
	stop = clock();
	LOG_printf(&mylog, "Edge detection cycles: %d", stop-start-overhead);
}
