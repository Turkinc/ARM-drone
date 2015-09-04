/*
 * Boot file for the Raspberry Pi board
 */
 
 
 
 
 .section .init
 
 .text
 
 .globl start_
 start_:
 
        /* Turn on ACT light */
        ldr     r0,     =0x20200000
        mov     r1,     #1
        lsl     r1,     #18
        str     r1,     [r0, #4]
        
        call kmain
        
        /* Turn off ACT light */
        ldr     r0,     =0x20200000
        mov     r1,     #1
        lsl     r1,     #18
        str     r1,     [r0, #4]
        
loop$:
        b       loop$