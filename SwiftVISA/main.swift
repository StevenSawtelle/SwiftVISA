//
//  main.swift
//  SwiftVISA
//
//  Created by Steven Sawtelle on 3/24/17.
//  Copyright © 2017 Steven Sawtelle. All rights reserved.
//

import Foundation
import visa


print("Hello, World!")

var defaultRM: ViSession = CUnsignedInt(0)
var status: ViStatus = CInt(-1)
var count: ViUInt32 = CUnsignedInt(0)
var portNo: ViUInt16 = CUnsignedShort(0)

print("defaultRM = ", defaultRM)

/*
 * First we must call viOpenDefaultRM to get the resource manager
 * handle.  We will store this handle in defaultRM.
 * Note that you need to cast the return value as a CInt before it can be stored in status
 */
status = CInt(viOpenDefaultRM(&defaultRM))

print("status = ", status)
print("defaultRM = ", defaultRM)


if (status < CInt(VI_SUCCESS)) {
    print("Could not open a session to the VISA Resource Manager!\n");
    exit (EXIT_FAILURE);
}
else {
    print("ViSession open with defaultRM = ", CInt(defaultRM))
}



// Close the ViSession to avoid a memory error
status = CInt(viClose(defaultRM))


//CREATE new function in visa.h and try run cases on it. give params etc




    //print(status)
    //if (Int(status) < VI_SUCCESS)
    //{
    //    print("Could not open a session to the VISA Resource Manager!\n");
    //    exit (EXIT_FAILURE);
    //}

    /*
     * Now we will open a VISA session to a device at Primary Address 2.
     * You can use any address for your instrument. In this example we are
     * using GPIB Primary Address 2.
     *
     * We must use the handle from viOpenDefaultRM and we must
     * also use a string that indicates which instrument to open.  This
     * is called the instrument descriptor.  The format for this string
     * can be found in the NI-VISA User Manual.
     * After opening a session to the device, we will get a handle to
     * the instrument which we will use in later VISA functions.
     * The two parameters in this function which are left blank are
     * reserved for future functionality.  These two parameters are
     * given the value VI_NULL.
     *
     * This example will also work for serial or VXI instruments by changing
     * the instrument descriptor from GPIB0::2::INSTR to ASRL1::INSTR or
     * VXI0::2::INSTR depending on the necessary descriptor for your
     * instrument.
     */
    /*
    status = viOpen (defaultRM,  "USB0::0x0957::0x4D18::MY54220089::INSTR", VI_NULL, VI_NULL, &instr);
    if (status < VI_SUCCESS)
    {
        printf ("Cannot open a session to the device.\n");
    }
    */
    /*
     * Set timeout value to 5000 milliseconds (5 seconds).
     */
    //status = viSetAttribute (instr, VI_ATTR_TMO_VALUE, 5000);
    
    /*
     * At this point we now have a session open to the instrument at
     * Primary Address 2.  We can use this session handle to write
     * an ASCII command to the instrument.  We will use the viWrite function
     * to send the string "*IDN?", asking for the device's identification.
     */
    /*
    strcpy(stringinput,"MEASure:RESistance?");
    status = viWrite (instr, (ViBuf)stringinput, (ViUInt32)strlen(stringinput), &writeCount);
    if (status < VI_SUCCESS)
    {
        printf("Error writing to the device\n");
    }
    */
    /*
     * Now we will attempt to read back a response from the device to
     * the identification query that was sent.  We will use the viRead
     * function to acquire the data.  We will try to read back 100 bytes.
     * After the data has been read the response is displayed.
     */
    
    /*
    status = viRead (instr, buffer, 100, &retCount);
    if (status < VI_SUCCESS)
    {
        printf("Error reading a response from the device\n");
    }
    else
    {
        printf("Data read: %*s\n",retCount,buffer);
    }
    */
    
    /*
     * Now we will close the session to the instrument using
     * viClose. This operation frees all system resources.
     */
    //Close:
    //print("Closing Sessions\nHit enter to continue.");
    //fflush(stdin);
    //getchar();
    //status = viClose(instr);
    //status = viClose(defaultRM);
