clc;
close all;
clear all;

x=linspace(0,1,10);
y=[0.1 0.12 0.22 0.34 0.35 0.4 0.5 0.37 0.3 0.28];
figure;
plot(x,y,'r*');hold on
axis([-0.1 1.1 0 0.6]);
%lsline

p=polyfit(x,y,1);
%y_hat=x.*p(1)+p(2);
y_hat=polyval(p,x);
plot(x,y_hat,'b--')
y_hat2=polyval(p2,x);
p2=ployfit(x,y,9);
plot(x,y_hat2