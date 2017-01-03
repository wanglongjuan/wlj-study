%---------------------------------------------
% ����� Euler ������ⳣ΢�ַ���:
%                    y'=f(x,y)
%                    y(x0)=y0
%---------------------------------------------
function [x,y]=hmeuler(df,xspan,y0,h)
% df:f(x,y)   xspan:x������[x0,xn]   y0����ֵy(x0)  h������
x=xspan(1):h:xspan(2);
y(1)=y0;
for n=1:(length(x)-1)
    k1=feval(df,x(n),y(n));
    y(n+1)=y(n)+h*k1;      %  ��ǰEuler��ʽ
    
    k2=feval(df,x(n+1),y(n+1));
    y(n+1)=y(n)+h*k2; 
end