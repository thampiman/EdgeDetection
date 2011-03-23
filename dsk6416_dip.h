/*
 *  Copyright 2002 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  ======== DSK6416_dip.h ========
 *
 *  Interface for DIP switches on the DSK6416 board
 */
#ifndef DSK6416_DIP_
#define DSK6416_DIP_

#ifdef __cplusplus
extern "C" {
#endif

#include <csl.h>

/* Initialize the DIP switches */
void DSK6416_DIP_init();

/* Retrieve the DIP switch value */
Uint32 DSK6416_DIP_get(Uint32 dipNum);

#ifdef __cplusplus
}
#endif

#endif
