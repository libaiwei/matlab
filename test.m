% r0=5;
% 
% b=1;
% 
% t0=2;
% 
% syms t;
% 
% ezplot(r0*exp(b*(1./t-1/t0)),[1:20]);
% 
% title('????');%??????
% 
% xlabel('X??');%????X????
% 
% ylabel('Y??');%????Y????

% clear,clc;close all;
% t=-1:0.03:1;
% [x,y]=meshgrid(t,t);
% z=y.*(y-1)./(x.*(x-1));
% surf(x,y,z)
% set(gcf,'unit','normalized','position',[0,0,1,1]);
% view(25,14)


f=@(x,y)(x+y)
x=1:0.1:2;
y=1:0.1:2;
[X,Y]=meshgrid(x,y);
z=f(X,Y);
mesh(z)
axis('tight')