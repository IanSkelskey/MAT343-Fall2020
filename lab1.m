diary lab1.txt
format compact
% MAT 343 MATLAB Assignment # 1

% Question 1

A = [-2 1 0;-6 -4 -2;-4 -3 -2]
B = [1.3 2.3 1.0;0.2 -0.2 0.6; -0.9 3.0 2.7]
C = [-5 4;-4 0;2 -4]

% Question 1(i)

i = A*C

% Question 1(ii)

ii = A+B

% Question 1(iii)

iii = A*B

% Question 1(iv)

% iv = C*A

% Question 1(v)

v = 3 + C

% Question 1(vi)

vi = 2*(A+B)

% Question 1(vii)

vii = 2*A+2*B

% Question 1(viii)

viii = B+A

% Question 1(ix)

% ix = A+C

% Question 1(x)

x = B*A

% Question 1(a)

% MATLAB refuses to do the calculations
% specified in questions 1(iv) and 1(ix).
% (iv) Cannot compute C*A because the inner dimensions
% of the matrices do not match.
% (ix) Cannot compute A+C because matrices must have
% same dimensions to add.

% Question 1(b)

% The following command does not return an
% array of all ones. Therefore, AB != BA.
isEqual = iii == x

% Question 1(c)

% 3+C produced a matrix where each element
% had 3 added to it.
C
c = 3+C
% The difference produces a matrix of all 3's.
differenceMatrix = c-C

% Question 1(d)

% Test for equivalence returns a matrix
% of all 1's. Therefore A+B = B+A
d = A+B == B+A
% Question 1(e)

% Test for equivalence returns a matrix
% of all 1's. Therefore 2(A+B) == 2A+2B
e = 2*(A+B) == 2*A+2*B

% Question 2

A = [4 16;-1 -4]
B = [-3 9;-1 3]
C = [3 -6;1 -2]

% Question 2(i)

% Since A^2 is a zero matrix and A is not
% rule (i) is disproved.
i = A^2

% Question 2(ii)

% Test for equivalence returns a matrix
% of all 0's so the matrices are not equal.
ii = (A-B)*(A+B) == A^2-B^2

% Question 2(iii)

% B*C is a zero matrix, but neither B or C
% is a zero matrix. Rule (iii) disproved.
iii = B*C == 0

% Question 2(iv)

% Test for equivalence returns a matrix
% of all 0's so the matrices are not equal.
iv = (A+B)^2 == B*A+C*A

% Question 2(v)

% Test for equivalence returns a matrix
% of all 0's so the matrices are not equal.
v = (A*B)^2 == A^2*B^2

% Question 2(vi)

% Test for equivalence returns a matrix
% of all 0's so the matrices are not equal.
vi = (A+B)^2 == A^2+2*A*B+B^2

% Question 2(vii)

% Rule (vii) holds.
vii = A*(B+C) == A*B+A*C

% Question 3

A = [-4 0;4 1]
B = [-1 3;3 1]
C = [5 2 1;-1 -3 -3]

% Question 3(i)

i = (A')'

% Question 3(ii)

ii = (A*B)'

% Question 3(iii)

iii = A'*B'

% Question 3(iv)

%iv = A*C'

% Question 3(v)

v = B'

% Question 3(vi)

vi = B'*A'

% Question 3(vii)

vii = C'*A

% Question 3(a)

% MATLAB refused to do the calculations in 
% question 3(iv) because the inner dimensions
% do not match for matrix multiplication.

% Question 3(b)

% (A^T)^T and A are the same matrix
b = (A')' == A

% Question 3(c)

% B is symmetric because B' = B
c = B' == B

% Question 3(d)

% (AB)^T does not equal A^T*B^T
d1 = (A*B)' == A'*B'
% (AB)^T does equal B^T*A^T
d2 = (A*B)' == B'*A'

% Question 4

R = round(10*rand(3))
S = round(10*rand(3))

% Question 4(i)

i = [R*S(:,1), R*S(:,2), R*S(:,3)]

% Question 4(ii)

ii = [R(1,:)*S; R(2,:)*S; R(3,:)*S]

% Question 4(iii)

% The results from parts (i) and (ii) are
% identical.
iii = i == ii

% Question 4(iv)

% In (i), each row of R is multiplied by the columns 
% of S (one at a time) to produce three 3x1 matrices that are
% then adjoined to produce the final result.

% In (ii), each row of R is still multiplied by the columns
% of S, but now the rows of R are separated out instead of the 
% columns of S.

% Question 5

M = 2*eye(3)
N = triu(9*ones(3))
P = diag([6 7 8],0)
Q = 3*ones(3,2)

% Question 6

G = [C, A, eye(2); zeros(2,3), eye(2), B]

% Question 7(a)

H = G(1:3,1:3)

% Question 7(b)

E = H;

E(2,2) = 2

% Question 7(c)

F = H(2,:)

% Question 7(d)

% Outputs all rows and columns of matrix G
d1 = G(:,:)

% Outputs all elements of matrix G as a column vector
d2 = G(:)

% Question 7(e)

% Index in position 1 exceeds array bounds.
% Calls for row 5 when G only contains 4 rows.
% e = G(5,1)

% Question 7(f)

% Returns a vector where each element is the highest
% value of the corresponding row of G.
max(G)

% Returns a vector where each element is the sum of the 
% corresponding rows of G
sum(G)

% Question 7(g)

% Returns all values of G that are greater than 2.
G(G>2)

% Replaces all elements of G that are greater than 2
% with the number '200.'
G(G>2) = 200

% Question 8

format rat
A = [7 4 3;-28 -18 -10;28 12 21]

A(1,:) = 1/7*A(1,:)
A(2,:) = A(2,:)+A(3,:)
A(3,:) = A(3,:)-28*A(1,:)
A(2,:) = -1/6*A(2,:)
A(2,:) = A(2,:)+A(3,:)
A(2,:) = -1/3*A(2,:)
A(3,:) = A(3,:)+4*A(2,:)
A(3,:) = -9/5*A(3,:)

