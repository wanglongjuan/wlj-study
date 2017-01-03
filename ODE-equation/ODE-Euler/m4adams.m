%-----------------------------------------------------------------
%  4阶亚当斯预报-校正格式解常微分方程y'=f(x, y), y(x0)=y0
%-----------------------------------------------------------------
function [x,y]=m4adams(df,xspan,y0,h)
x=xspan(1):h:xspan(2);
[xx,yy]=m4rkutta(df,[x(1),x(4)],y0,h);
y(1)=yy(1); y(2)=yy(2); y(3)=yy(3); y(4)=yy(4);
for n=4:(length(x)-1)
  p=y(n)+h/24*(55*feval(df,x(n),y(n))-59*feval(df,x(n-1),y(n-1)) ...
      +37*feval(df,x(n-2),y(n-2))-9*feval(df,x(n-3),y(n-3)));
  y(n+1)=y(n)+h/24*(feval(df,x(n-2),y(n-2))-5*feval(df,x(n-1),y(n-1))...
      +19*feval(df,x(n),y(n))+9*feval(df,x(n+1),p));
end