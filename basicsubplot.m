%%subplotting, plots within plots
clc;
clear all;
close all;
x=1:0.1:10;
y=sin(x);
z=cos(x);
w=x.^0.5; %w=sqrt(x)
u=y+z;
subplot(2,2,1)
plot(x,y)
xlabel('x')
title('sin')
subplot(2,2,2)
plot(x,w)
subplot(2,2,3)
plot(x,u)
subplot(2,2,4)
plot(x,z)
%%
f=figure;
x=1:5;
y=rand(5,2);
plot(x,y)
set(f,'Color',[255/255,0/255,255/255]);