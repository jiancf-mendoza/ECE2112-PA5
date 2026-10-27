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
- Define the following matrices exactly as shown:

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

- For each matrix, compute and display all three expressions:
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
- ## Answer the following in MATLAB comments below your output:
a. Which operations give identical results for the real matrix R?
- All three operations give identical results for the real matrix R
b. Which two operations give identical results for the complex matrix Z?
- transpose(Z) and Z.' give identical results for the complex matrix Z
c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?
- The apostrophe operator (') performs conjugate along with the transpose, it computes the complex conjugate transpose

# B. TWO METHODS FOR A LINEAR SYSTEM
- Create the coefficient matrix A and right-hand-side vector b. Then compute the solution in two ways.
1. Inverse method: compute x inv using the inverse of A.
2. Cramer’s Rule: replace one column of A at a time with b, use determinants, and store the result
in x cramer. A loop is optional.
- Do not use MATLAB’s left-division operator as either of the two required methods.
## Required checks: 
Display both solution vectors and det(A). Also display norm(x inv-x cramer) and norm(A*x inv-b). The determinant must be nonzero. Both norm checks should be approximately zero to numerical precision.
``` matlab
>> A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2]

A =

     2    -1     3     2
     1     4    -2     1
     3     2     1    -1
    -2     3     4     2

>> B = [16; -7; 6; 7]

B =

    16
    -7
     6
     7

>> % 1. Inverse Method
>> x_inv = inv(A) * B;
>> % 2. Cramer's Rule
>> n = length(B); 
x_cramer = zeros(n,1);
det_A = det(A);
>> for i = 1:n
A_temp = A;
A_temp(:,i) = B;
x_cramer(i) = det(A_temp)/det_A;
end
>> det_A = det(A)

det_A =

   280

>> x_inv

x_inv =

    2.0000
   -1.0000
    3.0000
    1.0000

>> x_cramer

x_cramer =

    2.0000
   -1.0000
    3.0000
    1.0000

>> norm_diff = norm(x_inv - x_cramer)

norm_diff =

   1.1102e-16
>> norm_residual = norm(A * x_inv - B)

norm_residual =

   2.6645e-15
```
