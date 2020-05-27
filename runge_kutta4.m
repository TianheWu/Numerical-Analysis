function f2 = runge_kutta4(ydot_fun, h)
%ydot_fun 为一阶微分方程函数;
%x0为初始点；y0为初始值
%h为步长
syms f(x,y);
syms f2(x,y);
f(x,y) = ydot_fun;
k1 = f(x,y);
disp('k1 = ')
disp(k1)
k2 = f(x+h/2, y+h*k1/2);
disp('k2 = ')
disp(k2)
k3 = f(x+h/2, y+h*k2/2);
disp('k3 = ')
disp(k3)
k4 = f(x+h, y+h*k3);
disp('k4 = ')
disp(k4)
f2(x,y) = h/6*(k1 + 2*k2 + 2*k3 + k4);
disp('h/6*(k1 + 2*k2 + 2*k3 + k4) = ')



