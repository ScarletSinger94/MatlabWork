clc;
clear all;
close all;
input('press the enter key to start the timer, Watch the command window for a prompt :)')
tic 
disp('Click the Figure Window to close it')
k=waitforbuttonpress;
time=toc;
close all;
fprintf('Congrats, it took you %2.4f seconds to close the figure.',time);
