clc;
clear all;
close all;
fh=figure;
words={'ZXWKLPO','Hippo','DOGGY','PORKETZ','ASDFGHK','CHEESEBURGER','PAPAPAPA','CHISKPWX','MATLAB','ANTIDISESTABLISHMENTARIANISM'};
order=randperm(length(words));
input('press the enter key to start the timer');
time=0;
for i=order
tic
fprintf('Is %s a word \n If so Hit Enter, otherwise click with the mouse \n', char(words(order(i))))
k=waitforbuttonpress;
whkey=get(fh,'CurrentCharacter');
time(i)=toc;
presses(i)=k;
end