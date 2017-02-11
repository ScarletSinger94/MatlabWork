clc;
clear all;
close all;

%%Matrix lengths need to be the same
age = [18 19 22 17 0 ]; %I added a null value to make it 5X5
height=[64 70 63 69 71]; %Semi colons make rows
subject_stats =[age;height];
%%
score1 =[5 7 20 11 13];%add a variable score
age = [18 19 22 17 57];%As above
height=[64 70 63 69 71];
subject_stats =[age;height;score1];
%%
ID=[101 102 103 104 105];
age = [18 19 22 17 57];%make dimensions equal
height=[64 70 63 69 71];
subject_stats =[ID;age;height;score1];%capitalize the D, lowercase s
%%
ID=[101 102 103 104 105];
test1 = [72 75 58 68 70];
test2=[69 78 63 69 75];
total_score=test1+test2;%need to create a variable to save data
test3=[65 79 64 72 78];
total_score=total_score+test3;
%%
n=randperm(9) + (-3)%% The Syntax of randperm requires non negative integers. therfore, by setting the dimension to 9 and adding the negative in, I can effectively change the value of all the outputs, keeping them within the bounds lsited.
%% cannot do two plots at the same time, and error kept coming up for the indices of the function. so i assigned a new variable and grpahed variables against each other.
x=[-2:0.1:2];
y=x.^2;
plot (x,y);
%% I will not be displayed because the loop terminates before the inner conditional is ever true
for i=1:10
    if i==11
        disp(i)
    end
end
%% while statement never ended, because as long as i = 1, s will print indefinitely
i = 1;
s = 0;
if i ==1
    s = s + 1;
end
%% NO error, compiled fine and prints 10-20 ten times. Its a nested loop that is independent of itself
for i=1:10
    for i=10:20
        disp(i)
    end
end
%% Taking the for loop, i indexed v to length of the vector and plotted the value at each index
values = [23, 17, 46, 15, 88, 34];
for v=1:length(values)
disp(values(v))
end
