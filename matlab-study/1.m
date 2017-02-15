x=[1,6]
function M = MassAessbler1D(x)
n = length(x) - 1;
M = zeros(n+1, n+1);
for i = 1:n
    h = x(i+1) - x(i);
    M(i, i) = M(i, i) + h/3;
    M(i, i+1) = M(i, i+1) + h/6;
    M(i+1, i) = M(i+1, i) + h/6;
    M(i+1, i+1) = M(i+1, i+1) + h/3;
end


function b = LoadAssembler1D(x, f)
n = length(x) - 1;
b = zeros(n+1, 1);
for i =1:n
    h = x(i+1) - x(i);
    b(i) = b(i) + f(x(i))*h/2;
end
