%---------------------------------------------
% �� Euler ������ⳣ΢�ַ���:
%                    y'=f(x,y)
%                    y(x0)=y0
%---------------------------------------------
function [x,y]=qmeuler(df,xspan,y0,h)
% df:f(x,y)   xspan:the section of x[x0,xn]   y0:chuzhi y(x0)  h:buchang 
x=xspan(1):h:xspan(2);
y(1)=y0;
for n=1:(length(x)-1)
    k1=feval(df,x(n),y(n));
    y(n+1)=y(n)+h*k1;     
end