%Exercise set 2
clc;
clear all;
close all;
x=[2 4 5 7];
y=[3 6 8 8];
z=[2 1 1.5 1];
plot(x,y,'gs--',x,z,'r^-');% plots each against the other and use of ' denotes color and shape specification

axis([1 8 0 9]);  %range of axis
xlabel('independent measure','fontsize',14,'fontname','times','color','g');
ylabel('dependent measure','fontsize',14,'fontname','times','color','g');

set(gcf,'color','b');  
set(gca,'color','y');  

%%
figure (2);

errorbar(x,y,z); %errobar function plots y against x with z as the error bars

%%
figure (3);
w=[8 1; 5 2; 9 1.2];
subplot(1,3,1) %creates a subplot and each subsequent plot is using w
bar(w);%plain bar
subplot(1,3,2)
barh(w);%horizontal
subplot(1,3,3)
bar(w(1,:), w(2,:));
%%
figure (4);
w=[8 6 7;9 10 10; 13 12 11];
bar3(w);%3d bar graph using w as input, in a 3b3 graph
%%
figure(5);
a = -3;
b = 12;%using a and b as simple variables and plugging into a random number equation
y = a.*randn(1000,1) + b;
h= histogram(y,20); %plots a histogram with y as data and 20 bins