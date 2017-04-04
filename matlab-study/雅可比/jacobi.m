function[y,n] = jacobi(A, b, ep, x0)
%求线性方程组的雅可比迭代法
%A为方程组的系数矩阵
%b为方程组的右端项
%x为方程组的解
%ep为精度要求
%itmax为最大迭代次数, 缺省值为100
%k为迭代次数
%index为指标变量, index=0表示失败;index=1表示成功
if nargin == 3
    ep = 1.0e-6;
else if nargin <3
error
return 
end
end
D=diag(diag(A));
L=-tri(A, -1)
U=-tri(A, 1)
B = D\(L+U);
f = D\b;
y = B*x0+f;
n=1;
while norm(y-x0)>=ep 
    x0 = y;
    y = B*x0+f;
    n=n+1;
end

