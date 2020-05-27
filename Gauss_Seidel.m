function D = Gauss_Seidel(A, n)
C = A;
B = A;
for j = 1:n-1
    for i = j+1:n
        B(j,i) = 0;
        C(j,i) = (-1)*A(j,i);
    end
end

for j = 1:n
    for i = 1:j
        C(j,i) = 0;
    end
end

res = inv(B)*C;
disp(res);
disp('BG = ');
disp(res);
[V, D] = eig(res);
disp('V = ')
disp(V);
disp('D = ')
disp(D);

