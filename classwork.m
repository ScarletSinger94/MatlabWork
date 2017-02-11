clear all;
close all;
clc;

data_n=randn(1,25);
figure(1)
[N,x]=hist(data_n)
%std, min, median, max, mean
mean(data_n);
STD=std(data_n);
n=size(data_n);
SE=STD/sqrt(n(2));
%errorbar(x,y,SE)
median(data_n);

data_n2=randn(1,25);
boxplot([data_n' data_n2'])


data=randn(100,1);
[N,x]=hist(data);
pd=fitdist(data,'normal')
x=linspace(-3,3,100);
PDF=pdf(pd,x);
PDF=(PDF/max(PDF)*max(N));
figure
subplot(1,3,1)
plot(x,PDF)
subplot(1,3,2)
hist(data)
subplot(1,3,3)
plot(x,PDF),'r--'