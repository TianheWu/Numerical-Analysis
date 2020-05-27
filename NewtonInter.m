function f=NewtonInter(x,y,x0)
%Newton插值多项式
%f=NewtonInter(x,y,x0)
%f:插值多项式或者是插值多项式在x0处的值
%x:节点
%y:函数值
%x0:某一测试点
%
%调用格式
%f=NewtonInter(x,y) 返回插值多项式
%f=NewtonInter(x,y,x0) 返回插值多项式在x0点的值
%应用举例:
%x=[1 2 3 4 5];y=[1 4 7 8 6];x0=6;
%f=NewtonInter(x,y)
%f=NewtonInter(x,y,x0)

if length(x)==length(y)
    n=length(x);
else
    disp('节点个数和函数值个数不同！')
    f=' ';
    return;
end


A=zeros(n);%初始化差商矩阵
for i=1:n
   A(i,1)=y(i);%差商矩阵的第一列是函数值
end
%计算差商矩阵
%差商矩阵中对角线上的元素为Newdon插值多项式的系数
for j=2:n
    for i=j:n
      A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
%求Newdon插值多项式
p=zeros(1,n);
for i=1:n
   p1=A(i,i);%差商矩阵对角线上的元素就是Newdon插值多项式的系数
    for j=1:i-1
      p1=conv(p1,[1 -x(j)]);%计算Newdon插值多项式的基项
    end
   p1=[zeros(1,n-i),p1];%向量相加，维数必须相同。把向量的元素补齐
    p=p+p1;
end

if nargin==3
   f=polyval(p,x0);%计算插值多项式在x0处的值
else
   f=poly2str(p,'x');%把插值多项式的向量形式转化为插值多项式的符号形式
end
format short
disp(A);