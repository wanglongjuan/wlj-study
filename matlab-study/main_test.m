%%一维热传导方程有限差分方法主测试脚本
%依次测试：
%        向前差分
%        向后差分
%        六点对称格式
%    并可视化数值计算结果

pde = model_data(); %模型数据结构体


%向前差分格式

[X, T, U] = heat_equation_fd1d(100, 10000, pde, 'forward');
showvarysolution(X, T, U);%以随时间变换方式显示数值解
showsolution(X, T, U);%以二元函数方式显示数值解

%向后差分格式
[X, T, U] = heat_equation_fd1d(100, 10000, pde, 'backward');
showvarysolution(X, T, U);


