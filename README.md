# Ada Range Check Subtlety: Compile-Time vs. Runtime

This repository demonstrates a potential issue with Ada's range checks, highlighting the difference between compile-time and runtime checks. The example shows how a simple range check might not behave as expected depending on compiler optimization and code structure.  The solution provides a way to mitigate this type of error.

## Bug Description

Ada's range checks are usually performed at compile time if the values are constants or statically known. However, for dynamic values, they happen at runtime.  This can lead to unexpected behavior if the range isn't considered thoroughly for all possible runtime values.  In the provided example, the `Check_Range` function might return unexpected results if the compiler optimizes away runtime checks or if the logic of the range isn't precisely written to account for dynamic values.

## How to Reproduce

1. Compile and run the provided Ada code (`bug.ada`).
2. Observe the output. The program itself does not contain an error; however, the subtle issue lies in understanding when Ada might perform compile-time versus runtime range checks.

## Solution

The solution focuses on enhancing clarity and ensuring that runtime checks are performed correctly and consistently.  Consider the implications for how the compiler might optimize the function.