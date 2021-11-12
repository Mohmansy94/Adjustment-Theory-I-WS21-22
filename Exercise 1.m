%--------------------------------------------------------------------------
%   
%          ADJUSTMENT THEORY I
%    Exercise 1: Introduction to Octave/Matlab   
% 
%   Author         : Anastasia Pasioti
%   Version        : October 02, 2020
%   Last changes   : October 02, 2021
%
%--------------------------------------------------------------------------

clc;
clear all;
close all;

%--------------------------------------------------------------------------
%   Task 1
%--------------------------------------------------------------------------
x = 4^2
y = sqrt(4)
z = 4^(-2)
t = factorial (4)

%--------------------------------------------------------------------------
%   Task 2 - Right angle triangle
%--------------------------------------------------------------------------
%Using the Law of Sines
a = 4                        %[m]
alpha = 53.1201              %[degrees]
c = a*sind(90)/sind(alpha)   %[m] 

% Using the Pythagorean Theorem   
b = 3                     %[m]
c_2 = sqrt(a^2+b^2)       %[m]

%--------------------------------------------------------------------------
%   Task 3 - General triangle
%--------------------------------------------------------------------------
%Using the Law of Cosines

a = 3          %[m]
b =2           %[m]
gamma = 55     %[deg]

c= sqrt(a^2 + b^2 - 2*a*b*cosd(gamma))

%Using the Law of Sines

a = 4         %[m]
b = 3         %[m]
alpha = 30    %[deg]

beta = asind (b*sind(30)/a)



%--------------------------------------------------------------------------
%   Task 4 - Using matrices
%--------------------------------------------------------------------------
A = [1 2 3;4 5 6]
B = [4 5 6;8 2 3]

%Calculate the product
% C = A*(B.')

%Load file and assign matrix to N
N = importdata('matrix.txt')

%Calculate determinant, rank, inverse, pseudo-inverse, eigenvector and
%eigenvalues of matrix N

det_N = det (N)
rn_N = rank (A)
inv_N = inv (N)
pinv_N = pinv (N)
[eigVec_N,eigVal_N] = eig(N)
