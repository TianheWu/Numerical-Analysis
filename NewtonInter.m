function f=NewtonInter(x,y,x0)
%Newton��ֵ����ʽ
%f=NewtonInter(x,y,x0)
%f:��ֵ����ʽ�����ǲ�ֵ����ʽ��x0����ֵ
%x:�ڵ�
%y:����ֵ
%x0:ĳһ���Ե�
%
%���ø�ʽ
%f=NewtonInter(x,y) ���ز�ֵ����ʽ
%f=NewtonInter(x,y,x0) ���ز�ֵ����ʽ��x0���ֵ
%Ӧ�þ���:
%x=[1 2 3 4 5];y=[1 4 7 8 6];x0=6;
%f=NewtonInter(x,y)
%f=NewtonInter(x,y,x0)

if length(x)==length(y)
    n=length(x);
else
    disp('�ڵ�����ͺ���ֵ������ͬ��')
    f=' ';
    return;
end


A=zeros(n);%��ʼ�����̾���
for i=1:n
   A(i,1)=y(i);%���̾���ĵ�һ���Ǻ���ֵ
end
%������̾���
%���̾����жԽ����ϵ�Ԫ��ΪNewdon��ֵ����ʽ��ϵ��
for j=2:n
    for i=j:n
      A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
%��Newdon��ֵ����ʽ
p=zeros(1,n);
for i=1:n
   p1=A(i,i);%���̾���Խ����ϵ�Ԫ�ؾ���Newdon��ֵ����ʽ��ϵ��
    for j=1:i-1
      p1=conv(p1,[1 -x(j)]);%����Newdon��ֵ����ʽ�Ļ���
    end
   p1=[zeros(1,n-i),p1];%������ӣ�ά��������ͬ����������Ԫ�ز���
    p=p+p1;
end

if nargin==3
   f=polyval(p,x0);%�����ֵ����ʽ��x0����ֵ
else
   f=poly2str(p,'x');%�Ѳ�ֵ����ʽ��������ʽת��Ϊ��ֵ����ʽ�ķ�����ʽ
end
format short
disp(A);