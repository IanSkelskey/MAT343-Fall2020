% MAT 343 MATLAB Assignment # 2
% Question 4
% This function outputs the product of an m x n matrix 'A' and an n x 1
% vector 'x' one row at a time.

function y = myrowproduct(A,x)
y = [];
[rowA, colA] = size(A);
[rowx, ~] = size(x);
if colA ~= rowx
    disp('The dimensions do not match.');
    return;
else
    for i=1:rowA
        y(i,1) = A(i,:)*x;
    end
end

end
