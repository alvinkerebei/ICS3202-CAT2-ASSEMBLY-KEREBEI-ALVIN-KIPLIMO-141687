#ICS3203-CAT2-Assembly-Kerebei Alvin Kiplimo (141687)
##Overview
This repository contains four assembly language programs completed as part of the CAT2 for the ICS3203 course. Each program is designed to showcase specific concepts in assembly programming, including control flow, array manipulation, modular subroutines, and hardware control simulation.

The tasks are written in NASM (Netwide Assembler) and executed on a Windows environment using the NASM assembler and GCC linker.

Tasks
Task 1: Control Flow and Conditional Logic
Purpose
This program prompts the user to input a number and classifies it as:

POSITIVE
NEGATIVE
ZERO
How It Works
The program reads the input number from the user.
Using conditional and unconditional jumps, it evaluates the number:
If the number is greater than 0, it's classified as "POSITIVE."
If the number is less than 0, it's classified as "NEGATIVE."
If the number is 0, it's classified as "ZERO."
Challenges
Understanding when to use conditional jumps (jg, jl, je) and unconditional jumps (jmp) for efficient branching.
Ensuring all possible cases (positive, negative, zero) are covered without redundant checks.
Instructions
