%%class notes
%sprintf prints to string
%fprintf command window
for i=1:5
    fprintf('the number is : %d\n',i)
end
%%
weekday= 'thursday';
fprintf('today is %s\n', weekday)
%%
x=[7 12 19 41];
fprintf('the mean is : %2.1f, and the standard deviation is : %2.2f\n', mean(x), std(x))
%% 
str1='Hello';
str2=' Vesso';
str=[str1 str2];
disp(str)
%%
subnum=input
version='memory_for_scene';
dts=datestr(now,'yyyy-mm-dd-HH-MM');
filetype='.txt';
%%
textread(filename,%read back data types. 'delimiter' '\t'

%filenam='lecture..... .txt
%%[co11 co12 co13 co14]=textread(filename,...
 %   '%d%s%s%s', delimiter', '\t'

%[numbers, words]=xlsread(filename,'sheet');

%%String compare
%strcmp
%strcmpi( only looks for case
%%
for i=1:length(words)
    Spllchck=strcmp(words(i,1), words(i,2))
    if Spllchk==1
        fprintf('the spelling is the same')
    else
        fprintf('you dumb')
    end 
end


save('my_data2'), 'x', 'y');
clear all
pause(2)
load('my_data2')

n=1;
x=23;
y=[3 2 -1];
initials=input('please enter subjects initials','s')
filename=[initials num2str(n)];
save(filename,'x','y');
%who tells the vaiables in workspace
%dir directory
%%
ls *.mat
my_files = ls('*.mat')
%%

