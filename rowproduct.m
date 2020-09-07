% MAT 343 MATLAB Assignment # 2
% Question 5
% This function outputs the product of an m x n matrix 'A' and an n x p
% matrix 'B' one row at a time.

function C = rowproduct(A,B)
C = [];
[rowA, colA] = size(A);
[rowB, colB] = size(B);
if colA ~= rowB
    disp('The dimensions do not match.');
    return;
else
    for i=1:rowA
        C(i,:) = A(i,:)*B;
    end
end

end
