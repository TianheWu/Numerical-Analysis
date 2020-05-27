% x is independent varible (row vector)
% y is dependent vatible (column vector)
% n is the order
% k is the num
function least_squares(x, y, k)
disp('m = ');
disp(k);
x1 = sum(x); % x1 is the sum of x
disp('x的和是');
disp(x1);
x2 = x*x.';  % x2 is the sum of x^2
disp('x^2的和是');
disp(x2);
y1 = sum(y); % y1 is the sum of y
disp('y的和是');
disp(y1);
y2 = x*y.';  % y2 is the sum of xy
disp('xy的和是');
disp(y2);
A(1,1) = k;
A(1,2) = x1;
A(2,1) = x1;
A(2,2) = x2;
disp('左侧A = ');
disp(A);
B = [y1; y2];
disp('右侧B = ');
disp(B);
res = inv(A)*B;
disp('a0 = ');
disp(res(1));
disp('a1 = ');
disp(res(2));
