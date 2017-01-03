%-----------------------------------------------------------------
%  4阶经典龙格库塔公式解常微分方程
%         y'=f(x,y), 
%         y(x0)=y0 
%-------------------------------------------------------------------
function [x,y]=m4rkutta(df,xspan,y0,h)
x=xspan(1):h:xspan(2);  y(1)=y0;
for n=1:(length(x)-1)
    k1=feval(df, x(n), y(n));
    k2=feval(df, x(n)+h/2, y(n)+h/2*k1);
    k3=feval(df, x(n)+h/2, y(n)+h/2*k2);
    k4=feval(df, x(n+1), y(n)+h*k3);
    y(n+1)=y(n)+h*(k1+2*k2+2*k3+k4)/6;
end