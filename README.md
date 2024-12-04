# Assembly Integer Overflow Bug

This repository demonstrates a common error in assembly programming: integer overflow during memory address calculation. The bug involves accessing memory outside the allocated range due to an unchecked `ecx` value leading to an overflow in the calculation `ebx + ecx * 4`.

The `bug.asm` file contains the erroneous code. The `bugSolution.asm` file provides a corrected version with appropriate bounds checking.