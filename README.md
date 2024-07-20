Design and Simulation of Priority Encoders and Serial Byte Processing Module Using VHDL

Overview

This project involves the design and simulation of two priority encoders and a serial byte processing module using VHDL. The work was done as part of the final project for the Digital Systems course under the guidance of Dr. Hesam Zandi.

Project Component

1. Priority Encoder
-Single Priority Encoder**: An encoder that takes an 8-bit input and outputs the binary equivalent of the highest priority bit with a value of 1.
-Dual Priority Encoder**: An encoder that not only provides the highest priority bit with a value of 1 but also the second highest.

2. Serial Byte Processing Module
- A module that processes an 8-bit byte input in series, calculates and outputs the data using the formula:
  \[
  \text{Data} = |X(n) - X(n-1) + \left\lfloor \frac{X(n-2)}{2} \right\rfloor|
  \]
- This module computes the difference between the current input byte and the previous byte, adds half of the byte before the previous one, and outputs the absolute value.

Project Structure

-priority_encoder.vhdl`: VHDL code for the single and dual priority encoders.
-serial_byte_processing.vhdl`: VHDL code for the serial byte processing module.
-test_bench_priority_encoder.vhdl`: Test bench for the priority encoders.
-test_bench_serial_byte_processing.vhdl`: Test bench for the serial byte processing module.
-report.pdf`: Detailed report explaining the design, code, and simulation results.

How to Run

1. Clone the repository:
   bash
   git clone https://github.com/mroinka/VHDL-Design-and-Simulation-of-Priority-Encoders-and-Serial-Byte-Processing-Module
