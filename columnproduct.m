% MAT 343 MATLAB Assignment # 2
% Question 5
% This function outputs the product of an m x n matrix 'A' and an n x p
% matrix 'B' one column at a time.

function C = columnproduct(A,B)
C = [];
[rowA, colA] = size(A);
[rowB, colB] = size(B);
if colA ~= rowB
    disp('The dimensions do not match.');
    return;
else
    for i=1:colB
        C(:,i) = A*B(:,i);
    end
end

end
