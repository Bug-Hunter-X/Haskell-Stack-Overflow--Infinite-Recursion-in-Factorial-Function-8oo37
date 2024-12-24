# Haskell Stack Overflow Bug
This repository demonstrates a common Haskell error: an infinite recursion leading to a stack overflow. The `factorial` function, when called with a negative number, enters an infinite recursive loop because the base case is never reached. This example highlights the importance of carefully defining base cases and handling invalid inputs in recursive functions.

## Bug Description
The `factorial` function does not handle negative inputs correctly.  It recursively calls itself with decreasing values of `n` until a stack overflow occurs.

## Solution
The solution adds input validation to check if the input is non-negative. If not, it returns an error message; otherwise, it computes the factorial using tail recursion for improved performance and prevents stack overflow issues.

## How to Run
1.  Clone the repository.
2.  Compile and run the code using `ghc bug.hs && ./bug` and `ghc bugSolution.hs && ./bugSolution` respectively.