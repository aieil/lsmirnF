# λsmirnF

A library for compiling simple C programs to a set of ready-to-implement
VHDL modules intended for use with the IceStorm toolchain for Lattice FPGAs

Prototype to handle standard IO and base C with no bells and whistles

Standard IO implemented as bitstreams over the first three GPIO pins 
available. GPIO[0] is used for the clockout, GPIO[1] is used for stdin, 
GPIO[2] is used for stdout.
