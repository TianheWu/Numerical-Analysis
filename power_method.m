function power_method(A,u)
k = 3;
format rat
for j = 1:k
    v = A*u;
    disp(['v',num2str(j), ' = '])
    disp(v)
    m = norm(v,inf);
    disp(['m',num2str(j), ' = '])
    disp(m)
    u = v/m;
    disp(['u',num2str(j), ' =  '])
    disp(u)
end
%A is matrix
%u is initial vector
    