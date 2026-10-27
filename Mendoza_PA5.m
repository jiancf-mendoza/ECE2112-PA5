% Name: Jian Carla F. Mendoza
% Section: 2ECE-A
% ECE 2112 - EXPERIMENT 5: Introduction to MATLAB Programming

%% Problem A:Transpose Operations
R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]

Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]

transpose(R)

transpose(R')

transpose(R.')

transpose(Z)

transpose(Z')

transpose(Z.')

% Answer the following MATLAB comments:
% a. All three operations give identical results for the real matrix R
% b. transpose(Z) and Z.' give identical results for the complex matrix Z
% c. The apostrophe operator (') performs conjugate along with the transpose, it computes the complex conjugate transpose 

%% Problem B: Two Methods For A Linear System
A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2]

B = [16; -7; 6; 7]


% 1. Inverse Method
x_inv = inv(A) * B;

% 2. Cramer's Rule
n = length(B); 
x_cramer = zeros(n,1);
det_A = det(A);
for i = 1:n
A_temp = A;
A_temp(:,i) = B;
x_cramer(i) = det(A_temp)/det_A;
end

det_A = det(A)
x_inv
x_cramer
norm_diff = norm(x_inv - x_cramer)
norm_residual = norm(A * x_inv - B)
