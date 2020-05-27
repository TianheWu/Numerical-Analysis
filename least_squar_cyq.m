function p = least_squar_cyq(x,y,n)
% ����ʽ��� ���÷���Ϊ
% ���� x Ϊ���ݵĺ����꣨��������
% yΪ���ݵ������꣨��������
% nΪ��ߴ���
% pΪ��϶���ʽϵ�������������Ӹߵ���
m = length(y);
X = ones(1,m);
if m <=n
    error('��϶���ʽ�Ĵ�������������ݵĸ���!!');
end
for i = 1 : n
    X = [(x.^i);X];
end
A = X*diag(1)*X';
b = X*(1.*y)';
p = (A\b)';
m = length(p);
A = rot90(A);
A = rot90(A)
b = rot90(b);
b = rot90(b)


for i = 1 : m
    if i == m
        fprintf('%f',p(i),n-i+1);
    elseif p(i) ~= 0
        if i == m-1
            if p(m) ~= 0
                fprintf('%f x + ',p(i),n-i+1);
            else 
                fprintf('%f x',p(i),n-i+1);
            end
        else
            fprintf('%f x^%d + ',p(i),n-i+1);
        end
    end
end
return;