# CORDIC

This is an analysis of different implementations of the cos function on an FPGA and their effect on the memory cost and throughput of the design.

Report 1 details effect of input precision and cache sizes.

Report 2 details the effect of off-chip memory, hardware support for multiplication, different cos implementations and software optimizations.

Report 3 details the effect of floating point hardware, CORDIC algorithm and parallelism.

The final design was able to reduce the functions latency by 98%, from 25155ms to 461ms.
