function f = Languange(x, y, x0)
syms t;
if(length(x) == length(y))
    n = length(x);
else 
    disp('the dim of x and y is not equal')
    return;
end
f = 0.0;
for(i=1:n)
    l = y(i);
    for(j=1:i-1)
        l = 1*(t-x(j))/(x(i)-x(j));
    end;
    for(j = i+1:n)
        l=l*(t-x(j))/(x(i)-x(j));
    end;
    f = f +l;
    simplify(f);
    if(i == n)
        if(nargin == 3)
            f =subs(f, 't',x0);
        else
            f=collect(f);
            f=vpa(f,6);
        end
    end
end
