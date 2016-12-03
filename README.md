# λsmirnF

A library for compiling simple C programs to ready-to-implement VHDL

Prototype to handle standard IO and base C with no bells or whistles

Standard IO implemented as bitstreams over the first three GPIO pins 
available. GPIO[0] is used for the clockout, GPIO[1] is used for stdin, 
GPIO[2] is used for stdout.
