#include "C6416_DSK_FIRcfg.h"
#include "images.h"
#include <math.h>
#include <time.h>
#include "std.h"

#define CHIP_6416 1

#define TOTAL 101376 // Total when char is used
#define TOTALINT 25344 // Total when int is used = 101376/4
#define TOTALDOUBLE 12672 // Total when double is used = 101376/8

#define HEIGHTY 288 // Total height with char
#define WIDTHX 352 // Total width with char
#define HEIGHTINTY 144 // Total height with int = 288/2
#define WIDTHINTX 176 // Total width with int = 352/2
#define HEIGHTDOUBLEY 72 // Total height with double = 288/4
#define WIDTHDOUBLEX 88 // Total width with double = 352/4

#include "dsk6416.h"
#include "dsk6416_aic23.h"
#pragma DATA_SECTION (frame_1,"ext_sdram")

extern unsigned char frame_1[HEIGHTY*WIDTHX];
unsigned char gradient[HEIGHTY*WIDTHX];
unsigned char edgemap[HEIGHTY*WIDTHX];

// Constant Thresholds
const int th = 45; // constant threshold fot edge map
const int th_quad = 0x5A5A5A5A; // contains threshold (90) in 4 packed 8 bits

// Profiling Variables
clock_t start, stop, overhead;

// Function to initialise arrays
void init_array();	
// Function for edge detection in C
void edge_detection_c(const unsigned char *pFrame_1, unsigned char *pEdgemap); 
// Function for edge detection in Linear Assembly
void edge_detection_la(const double *pFrame_x_prev, const double *pFrame_x_next,
					   const double *pFrame_y_prev, const double *pFrame_y_next, 
					   volatile unsigned char *pEdgemap,
					   const int threshold, volatile int count);

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
	const double *pFrame = (const double *)frame_1;
	const double *pFrame_x_prev = &pFrame[0*WIDTHDOUBLEX-1];
	const double *pFrame_x_next = &pFrame[0*WIDTHDOUBLEX+1];
	const double *pFrame_y_prev = &pFrame[(0-1)*WIDTHDOUBLEX];
	const double *pFrame_y_next = &pFrame[(0+1)*WIDTHDOUBLEX];

	 /* Initialize the board support library, must be called first */
    DSK6416_init();

	// First get the overhead before profiling code
	start = clock();
	stop = clock();
	overhead = stop-start;

	// Initialise arrays
	start = clock();
	init_array();
	stop = clock();
	LOG_printf(&mylog, "Initialisation cycles: %d", stop-start-overhead);

	// Edge detection in C
	start = clock();
	edge_detection_c(frame_1, edgemap);
	stop = clock();
	LOG_printf(&mylog, "Edge detection (C) cycles: %d", stop-start-overhead);

	// Reset arrays
	start = clock();
	init_array();
	stop = clock();
	LOG_printf(&mylog, "Initialisation cycles: %d", stop-start-overhead);

	// Edge detection in Linear Assembly
	start = clock();
	edge_detection_la(pFrame_x_prev, pFrame_x_next, pFrame_y_prev, pFrame_y_next, 
					  edgemap, th_quad, TOTALDOUBLE);
	stop = clock();
	LOG_printf(&mylog, "Edge detection (LA) cycles: %d", stop-start-overhead);
}

void init_array()
{
	int i;
	double *d_edgemap = (double *) edgemap;

	// nassert that the total number of elements in d_edgemap = TOTALDOUBLE
	_nassert((int)(d_edgemap)%TOTALDOUBLE == 0);

	for (i=0;i<TOTALDOUBLE;i++) //initialise arrays
	{
		d_edgemap[i]=0;
	}
}

void edge_detection_c(const unsigned char *pFrame_1, unsigned char *pEdgemap)
{
	int y_index,x_index;
	unsigned int gradientX=0;
	unsigned int gradientY=0;
	unsigned int gradient_int=0;
	unsigned int comparison;

	const unsigned int *i_frame_1 = (const unsigned int *)pFrame_1;
	int *i_edgemap = (int *) pEdgemap;

	// nassert that the total number of elements in i_frame_1 and i_edgemap = TOTALINT
	_nassert((int)(i_frame_1)%TOTALINT == 0);
	_nassert((int)(i_edgemap)%TOTALINT == 0);

	for(y_index = 0; y_index < HEIGHTINTY; y_index++)
	{	
		for(x_index = 0; x_index < WIDTHINTX; x_index++)
		{
			gradientX=_subabs4(i_frame_1[x_index+y_index*WIDTHINTX+1], i_frame_1[x_index+y_index*WIDTHINTX-1]);
			gradientY=_subabs4(i_frame_1[x_index+(y_index+1)*WIDTHINTX], i_frame_1[x_index+(y_index-1)*WIDTHINTX]);

			// Approximating sqrt(X^2 + Y^2) to (X+Y)
			gradient_int = _add4(gradientX, gradientY);

			// Compare gradient_int with quad packed threshold
			comparison = _cmpgtu4(gradient_int, th_quad);

			// Expand output to get the edges
			i_edgemap[x_index+y_index*WIDTHINTX]=_xpnd4(comparison);
		}
	}
}

