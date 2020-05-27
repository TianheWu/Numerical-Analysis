% n is order
function D = Jacobi(A, n)
C = -1*A;
for j = 1:n
    B(j,j)=A(j,j);
    C(j,j)=0;
end
res = inv(B)*C;
disp('BJ = ')
disp(res);
[V, D] = eig(res);
disp('V = ')
disp(V);
disp('D = ')
disp(D);
    
