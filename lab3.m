diary lab3.txt
format compact

% MAT 343 MATLAB Assignment # 3

% Exercise 1

% Elementary Matrix Type I
E1 = eye(4);
E1([3,1],:) = E1([1,3],:);
% Elementary Matrix Type II
E2 = eye(4);
E2(3,3) = -5;
% Elementary Matrix Type III
E3 = eye(4);
E3(4,2) = -4;

A = floor(10*rand(4,3))

% E1*A swaps rows 1 & 3
E1*A
% E2*A multiplies row 3 by -5
E2*A
% E3*A adds -4*(row 2) to row 4
E3*A

% E1 - E3 demonstrate elementary row operations: Swapping rows, multiplying a row by a
% scalar, and adding a multiple of one row to another.

% Exercise 2(a)

A = [1 5 -4; 2 6 -24; 5 28 -4]

format rat

% Add -2 times row 1 to row 2.
E1 = eye(3)
E1(2,1) = -2;
E1*A

% Add -5 times row 1 to row 3.
E2 = eye(3)
E2(3,1) = -5;
E2*E1*A

% Add 3/4 times row 2 to row 3.
E3 = eye(3)
E3(3,2) = (3/4);
U = E3*E2*E1*A

% Exercise 2(b)

L = inv(E1)*inv(E2)*inv(E3)

A - L*U

% Exercise 3

% permutation vector that defines
% the new order of the rows
p = [4,1,2,5,3]; 
% define E as the identity matrix
E = eye( length (p));
% permute the rows of E according to the
% permutation vector p
E = E(p ,:)

A = floor(10*rand(5))

% Exercise 3(a)

% E*A permutes the matrix A such that row 4 is in position 1, row 1 is in
% position 2, row 2 is in position 3, row 5 is in position 4 and row 3 is
% in position 5.
E*A

% Exercise 3(b)

inv(E)
E'

% The results for E^(-1) and E^T were the same.

% Exercise 4

A = [7 -2 -2 -6; 3 -6 8 9; -1 1 -1 7; 1 -7 -8 -1]
b = [79; -121; -36; -3;]

% Exercise 4(a)

[L,U,P] = lu(A)
P*A - L*U

% Exercise 4(b)

y = L\(P*b)
x_lu = U\y

% Exercise 4(c)

x = [7; 8; -5; -6]
x_lu - x

norm(x_lu-x)

% Exercise 5

A = rand(700); x = ones(700,1); b=A*x;

% Exercise 5(a)

tic; R = rref([A, b]); x_rref = R(:,end); toc

% Exercise 5(b)
tic; [L,U,P] = lu(A); y = L\(P*b); x_lu = U\y; toc;

% The 2nd method is faster

% Exercise 5(c)

norm(x_rref - x)
norm(x_lu - x)

% None of the solutions are 100% accurate. The 1st method appears to be
% more accurate while the 2nd is faster.
