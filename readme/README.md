# Introduction
These files are to be used with Xilinx Vivado. Import these files as part of your project. Take the codes through the necessary compilation steps, and you will end up with a .bit file that you can use to program the FPGA.

**Source codes:** These files constitute the modules that, when combined, carry out the desired functionality.

**Test benches:** These files are to simulate the circuitry defined by the source codes. User-defined dummy signals can be input to the simulated circuitry, and the output can be observed to confirm the expected behavior.

# Overview of the circuitry
Before we jump into the coding phase, we should have a good idea of the functionality we need to implement. We need to develop a CCU that counts the incoming pulses from four channels (A, B, B′ and A′), their coincidences, and sends the data over to the PC. The functionality of the CCU can be broken down into four major portions. The schematic workflow in figure A.5 shows how these portions are connected via wires between them. The arrows in the figure show the direction of data flow, while the numbers over arrows with crosses represent the number of bits each bus (a channel comprising more than 1 bit) carries. An arrow without a cross represents a single bit.

![alt text](https://ibb.co/dbBbfqC)


In case of any confusion, feel free to reach out at bilal.samurai@gmail.com
