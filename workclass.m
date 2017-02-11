clc;
clear all;
close all;
i=0
fprintf('this is trial %d\n',i)

%[y,Fs] = audioread('Psych.wav');
%sound(y,Fs);
figure;
msg = '+';
text(0.4,0.5,msg,'fontsize',150);
%pause(20);
clf;