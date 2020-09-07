diary lab2.txt
format compact

% MAT 343 MATLAB Assignment # 2

% Question 1(a)

n = 900;
A = floor(25*rand(n));
z = ones(n,1);
b = A*z;

% Question 1(ai)

tic, x = A\b;   toc
tic, y = inv(A)*b;  toc

% On my first run the elapsed time for method 1 (x = A\b;) 
% was 0.048663 seconds and method 2 (y = inv(A)*b;) had 
% a time of 0.024560 seconds. However, in every other run method 1
% proved faster.

% Question 1(aii)

sum(abs(x-z))
sum(abs(y-z))

% Method 1 is more accurate.

% Question 1(b)

n = 1800;
A = floor(25*rand(n));
z = ones(n,1);
b = A*z;

tic, x = A\b;   toc
tic, y = inv(A)*b;  toc

sum(abs(x-z))
sum(abs(y-z))

% Method 1 is still faster and more accurate with n = 1800.

n = 3600;
A = floor(25*rand(n));
z = ones(n,1);
b = A*z;

tic, x = A\b;   toc
tic, y = inv(A)*b;  toc

sum(abs(x-z))
sum(abs(y-z))

% Method 1 is still faster and more accurate with n = 3600.

% Question 1(c)

% The vector solution z is the solution to the system Ax = b because we set
% b = A*z. Rearranged, we have A*z = b. Therefore z = x.

% Question 2

n = 100;
B = eye(n) - triu(ones(n),1);
A = B'*B;
z = ones(n,1);
b = A*z;

x = A\b;
y = inv(A)*b;

sum(abs(x-z))
sum(abs(y-z))

% Method 1 is more accurate.

% Question 3

A = floor(20*rand(6));
b = floor(40*rand(6,1))-20;

% Question 3(a)

x = A\b

% Question 3(b)

U = rref([A,b])

% Question 3(c)

U(:,7)-x

% Question 3(d)

A(:,4) = 5*A(:,2)+3*A(:,1);

U = rref([A,b])

% The system Ax = b will have no solution because the last row of RREF
% shows that 0 = 1, which is not true.

% Question 3(e)

y = floor(40*rand(6,1))-20;
c = A*y;

% The way that vector c is defined guarantees that the system Ax = c is
% consistent because x = y is a solution.

% Question 3(f)

U = rref([A,c])

% The system Ax = c has one soution. Every variable has a coefficient that
% is not zero in at least one row of the augmented matrix.

% Question 4

% Function test scenarios.
A = floor(10*rand(5,6))
x = floor(10*rand(6,1))

myrowproduct(A,x)
A*x

A = floor(10*rand(4,7))
x = floor(10*rand(7,1))

myrowproduct(A,x)
A*x

A = floor(10*rand(4,7))
x = floor(10*rand(1,7))

myrowproduct(A,x)
%A*x

% Question 5(a)

% Function test scenarios.

A = floor(10*rand(4,4))
B = floor(10*rand(4,6))

columnproduct(A,B)
A*B

A = floor(10*rand(3,2))
B = floor(10*rand(2,5))

columnproduct(A,B)
A*B

A = floor(10*rand(3,2))
B = floor(10*rand(5,2))

columnproduct(A,B)
%A*B

% Question 5(b)

% Function test scenarios.

A = floor(10*rand(4,4))
B = floor(10*rand(4,6))

rowproduct(A,B)
A*B

A = floor(10*rand(3,2))
B = floor(10*rand(2,5))

rowproduct(A,B)
A*B

A = floor(10*rand(3,2))
B = floor(10*rand(5,2))

rowproduct(A,B)
%A*B