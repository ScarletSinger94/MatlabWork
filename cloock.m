%%tic toc
clc
clear all; 
close all;
fh=figure;
set(fh,'position',[0 0 .1 .1])
letters={'s','n','f'};
order=randperm(length(letters));
input('press the enter key to start the timer')
tic 
for i=order
fprintf('now press the %s fkey\n', char(letters(order(i))))
k=waitforbuttonpress;
whkey=get(fh,'CurrentCharacter');
time=toc;
fprintf('it took you %2.4f seconds to press the %s key\n',time,whkey);
end