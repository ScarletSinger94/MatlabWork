clc;
clear all;
close all;

normpdf(0,0,1)
x=-10:0.1:10;
y=normpdf(x,3,2);
plot(x,y)
normcdf(2,0,1)
y2=normcdf(x,0,1);
figure
plot(x,y2)
1-normcdf(2,0,1)