# ECE2112-PA5
## Mendoza, Jian Carla F. | 2ECEA
# I. Intended Learning Outcomes
At the end of this laboratory activity, the student should be able to:
1. create real and complex matrices in MATLAB;
2. distinguish transpose from complex-conjugate transpose operations;
3. express a simultaneous linear system in matrix form; and
4. solve and check a linear system using the inverse method and Cramer’s Rule
# Instructions
Write a MATLAB script containing clearly labeled sections for both problems. Display the requested matrices and numerical checks. Use MATLAB matrix operations and built-in functions; do not type a computed answer directly into the output.
# A. TRANSPOSE OPERATIONS
Define the following matrices exactly as shown:

$$
\begin{matrix}
R = 
[5 & -2 & 0 & 7 \\ 
1 & 3 & -4 & 2 \\ 
6 & 0 & 8 & -1]
\end{matrix}
$$
$$
\begin{matrix}
Z =
[2+3i & -1+4i & 5-2i \\
-3+i & 6 & 2+5i]
\end{matrix}
$$

For each matrix, compute and display all three expressions:
`` transpose(A)
A’
A.’ ``

```matlab
>> R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]

R =

     5    -2     0     7
     1     3    -4     2
     6     0     8    -1

>> Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]

Z =

   2.0000 + 3.0000i  -1.0000 + 4.0000i   5.0000 - 2.0000i
  -3.0000 + 1.0000i   6.0000 + 0.0000i   2.0000 + 5.0000i

>> transpose(R)

ans =

     5     1     6
    -2     3     0
     0    -4     8
     7     2    -1

>> transpose(R')

ans =

     5    -2     0     7
     1     3    -4     2
     6     0     8    -1

>> transpose(R.')

ans =

     5    -2     0     7
     1     3    -4     2
     6     0     8    -1

>> transpose(Z)

ans =

   2.0000 + 3.0000i  -3.0000 + 1.0000i
  -1.0000 + 4.0000i   6.0000 + 0.0000i
   5.0000 - 2.0000i   2.0000 + 5.0000i

>> transpose(Z')

ans =

   2.0000 - 3.0000i  -1.0000 - 4.0000i   5.0000 + 2.0000i
  -3.0000 - 1.0000i   6.0000 + 0.0000i   2.0000 - 5.0000i

>> transpose(Z.')

ans =

   2.0000 + 3.0000i  -1.0000 + 4.0000i   5.0000 - 2.0000i
  -3.0000 + 1.0000i   6.0000 + 0.0000i   2.0000 + 5.0000i
```



