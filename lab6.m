diary lab6.txt
format compact
% MAT 343 MATLAB Assignment # 6

% Setup

A = imread ('gauss.jpg '); % note the semicolon !

B = double ( A (: ,: ,1)); % don 't forget the semicolon

B = B /255; % semicolon !
[ U S V ] = svd ( B ); % semicolon !

% Problem 1

size(U)
size(S)
size(V)

% Problem 2

C = zeros ( size ( A )); % semicolon !

rank1 = S(1,1)*U(:,1)*V(:,1)';

C(:,:,1) = rank1;
C(:,:,2) = rank1;
C(:,:,3) = rank1;

C = max(0,min(1,C));

image ( C ) , axis image % no semicolon

% Problem 3

C = zeros ( size ( A )); % semicolon !

rank = S(1,1)*U(:,1)*V(:,1)';
for i = 2:10
    rank = rank+S(i,i)*U(:,i)*V(:,i)';
end
C(:,:,1) = rank;
C(:,:,2) = rank;
C(:,:,3) = rank;

C = max(0,min(1,C));

image ( C ) , axis image % no semicolon

% Problem 4

C = zeros ( size ( A )); % semicolon !

rank = S(1,1)*U(:,1)*V(:,1)';
for i = 2:20
    rank = rank+S(i,i)*U(:,i)*V(:,i)';
end
C(:,:,1) = rank;
C(:,:,2) = rank;
C(:,:,3) = rank;

C = max(0,min(1,C));

image ( C ) , axis image % no semicolon
