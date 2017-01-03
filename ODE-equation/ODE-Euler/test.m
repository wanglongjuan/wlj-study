tic
df=@(x,y)4*x*y^(1/2);
[x,y]=qmeuler(df,[0,2],1,0.1);
%[x,y]=implictEuler(df,[0,2],1,0.1);
%[x,y]=Euler(df,[0,2],1,0.1);
%[x,y]=m4rkutta(df,[0,2],1,0.1);
%[x,y]=m4adams(df,[0,2],1,0.1);
toc


ye=(1+x.^2).^2;
plot(x,ye)
hold on
plot(x,y,'k.-','markersize',16);
legend('True value solution','numerical solution')
title('True value solution and numerical solution of the contrast ')
xlabel('x');ylabel('y');

