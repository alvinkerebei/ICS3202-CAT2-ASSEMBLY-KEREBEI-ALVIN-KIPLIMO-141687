# ICS3203-CAT2-Assembly-Kerebei Alvin Kiplimo (141687)
## Overview
This repository contains four assembly language programs completed as part of the CAT2 for the ICS3203 course. Each program is designed to showcase specific concepts in assembly programming, including control flow, array manipulation, modular subroutines, and hardware control simulation.

The tasks are written in NASM (Netwide Assembler) and executed on a Windows environment using the NASM assembler and GCC linker.

## Tasks
### Task 1: Control Flow and Conditional Logic
#### Purpose
This program prompts the user to input a number and classifies it as:

- POSITIVE
- NEGATIVE
- ZERO
#### How It Works
1. The program reads the input number from the user.
2. Using conditional and unconditional jumps, it evaluates the number:
  - If the number is greater than 0, it's classified as "POSITIVE."
  - If the number is less than 0, it's classified as "NEGATIVE."
  - If the number is 0, it's classified as "ZERO."
#### Challenges
1. Understanding when to use conditional jumps (jg, jl, je) and unconditional jumps (jmp) for efficient branching.
2. Ensuring all possible cases (positive, negative, zero) are covered without redundant checks.
#### Instructions
1. Assemble the program:
   `nasm -f win32 -o task1.obj task1.asm`
2. Link the object file
   `gcc -m32 -o task1.exe task1.obj`
3. Run the program
   `task1.exe`
### Task 2: Array Manipulation with Looping and Reversal
#### Purpose
This program accepts an array of integers (e.g., five values) from the user, reverses it in place, and outputs the reversed array.

#### How It Works
1. The array is input as integers stored in memory.
2.A loop iterates through the array to swap the elements at the beginning and the end until the midpoint is reached.
3. No additional memory is used for storing the reversed array.
#### Challenges
- Managing memory directly while avoiding the use of additional storage.
- Writing efficient loops to handle array indices and swaps.
- Handling edge cases for arrays with an odd number of elements.
#### Instructions
1. Assemble he program:
   `nasm -f win32 -o task2.obj task2.asm`
2. Link object file
  `gcc -m32 -o task2.exe task2.obj`
3. Run the program
  `task2.exe`
4. Input the array values when prompted and verify the reversed output.
### Task 3: Modular Program with Subroutines for Factorial Calculation
#### Purpose
This program computes the factorial of a number using a modular subroutine. The factorial calculation is performed in a separate function-like code block, demonstrating the use of the stack for register management.

#### How It Works
1. The main program takes a number as input and calls a subroutine to compute its factorial.
2. The subroutine:
  - Uses recursion to compute the factorial.
  - Saves registers to the stack to preserve values during the calculation.
  - Returns the result in a general-purpose register.
3. The result is displayed to the user.
#### Challenges
- Managing the stack to save and restore register values during recursion.
- Ensuring correct return values without overwriting registers.
#### Instructions
1. Assemble the program:
   ``
2. Link object file:
   ``
3. Run the program:
   ``
4. Enter a number to compute its factorial.
### Task 4: Data Monitoring and Control Using Port-Based Simulation
#### Purpose
This program simulates a control system using port-based I/O. A "sensor" input is read from a memory location, and actions are performed based on the sensor value:
- Turn on a "motor" if the water level is low.
- Trigger an "alarm" if the water level is too high.
- Stop the motor if the water level is moderate.
#### How It Works
1. The program reads the sensor value from a specific memory location.
2. Based on predefined thresholds:
  - Sets a bit in memory to represent turning on/off the motor.
  - Sets another bit to represent triggering the alarm.
3. Outputs the system status (e.g., motor and alarm states).
#### Challenges
- Simulating hardware control logic in memory.
- Mapping specific bits in memory to represent motor and alarm states.
- Ensuring all edge cases (e.g., extreme sensor values) are handled.
#### Instructions
1. Assemble the program:
  `nasm -f win32 -o task4.obj task4.asm`
2. Link the object file:
  `gcc -m32 -o task4.exe task4.obj`
3. Run the program:
  `task4.exe`
4. Input sensor values to observe the motor and alarm states.
### Challenges Encountered
1. Memory Management:
  - Direct memory manipulation required careful handling to avoid overwriting data.
  - Stack management in the factorial program was challenging but critical to understanding modular code.
2. Control Flow:
  - Implementing efficient conditional jumps in Task 1 required optimizing the branching logic.
3. Port Simulation:
  - Simulating hardware using memory was conceptually challenging, but bitwise operations simplified the task.
4. Environment Setup:
  - Running assembly programs on a Windows system required additional setup with NASM and GCC.
### How to Use This Repository
1. Clone the repository:
`git clone https://github.com/alvinkerebei/ICS3202-CAT2-ASSEMBLY-KEREBEI-ALVIN-KIPLIMO-141687.git`
2. Navigate to the folder containing the .asm files.
3. Follow the instructions provided for each task to assemble, link, and run the programs.
### Author
- Name: Kerebei Alvin Kiplimo
- Admin Number: 141687

   
