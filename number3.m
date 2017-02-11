clc;
clear all;
close all;

% purpose of the program:
disp('This program allows you to obtain 5 numbers');
disp('from the user and will tell the user if the number ');
disp('was greater, smaller, or equal to 20');
disp(' ');  %a blank line 

for n=1:5 % Starts "for" loop that asks the user to enter 5 numbers:

x(n)=input('Please enter a number between 0 and 20 = ');

while x(n)<0 | x(n)>20;  %errortrap
disp('The number you entered is outside the acceptable range.  Try again.');
x(n)=input('Please enter a number between 0 and 20 = ');
end; % ends the while statement

if x(n)>10;disp('The value you entered is greater than 10');
elseif x(n)<10;disp('The value you entered is smaller than 10');
elseif x(n)==10;disp('The value you entered is equal to 10');
end;

disp(' ');  %also add this blank line so the data entry looks better
end;  %for n

disp(['The numbers you entered were:  ',num2str(x)]); 
%% this section is the age identifier program
age=input('Enter an age : ');% Takes user input for age of number entered
if ((age < 0)|(age >= 120))% logic check
    disp('Error');
elseif (age < 1) %subsequent prints for ages within acceptable range
    disp('Baby');
elseif (age < 13)
    disp('Child');
elseif (age < 18)
    disp('Teenager');
elseif (age < 60)
    disp('Adult');
else
    disp('Senior');
end
%% I went overboard but I had an idea and I went through with it. In the comments, can you tell me if, given a new assignemnt whee we need to design an implement an experiment, if I can resubmit this code or similar. Thanks
clc;
close all;
c=0;%defined variables of use for future functions
j=1;
m=1;
n=1;
o=0;
[y,Fs] = audioread('Psych.wav');%Sound read method using slef made wav file
sound(y,Fs);
figure;
msg = ':)';%distractor
text(0.3,0.5,msg,'fontsize',100);
axis off
pause(21);
clf;
for i=1:10;%for loop
    msg='+'; %fixation cross
    text(0.3,0.5,msg,'fontsize',100);
    axis off
    pause();
    clf; %clears figure
    length = floor(7*rand)+3; %random character length
    X(j)=length;%stores and prints generated string length
    j=j+1;%incremets
    random_string = char(floor(25*rand(1, length)) + 65);%uses ASCII to code capital characters A-Z
    figure (2)
    msg = random_string;%function proceeds to display sequence of letters of length "Length"
    p=random_string;
    text(0.2,0.5,msg,'fontsize',46);
    axis off;
    f=((2000*rand)+500);%waveform generates random tone 500-2500hz
    Y(m)=f;%stores and increments tone for graph
    m=m+1;
    sr=10000;
    dur=2;
    t=1:1/sr:dur;
    x_sin=sin(2*pi*f*t);
    sound(x_sin,sr);
    pause(1.25);%Display time of text is kept constant
    clf;
    figure(2);
    msg = ('GOOD LUCK');%well wishing and working memory distractor
    text(0.3,0.5,msg,'fontsize',26);
    axis off;
    pause(1);
    clf;
    guess = input('What did you see?','s'); %User input 
    tf=strcmp(guess,p);
    Z(n)=tf;%stores 1 or 0 as correct/incorrect answer and below increments for graph
    n=n+1;
    if tf==0 %conditional reporte of accuracy
        disp('Sorry, thats incorrect');
        disp('Hit Enter for the next trial');
    else disp('Great Job');
        disp('Hit Enter for the next trial');
    end
    if tf==1
        c=c+1; %Counter for correct answers
    end
end

disp(['You Got ' num2str(c) ' Correct']); %displays number of choices correct
figure %Subplots figures as labelled with obtained data from agent
subplot(2,2,1);
bar3(X)
title('Subplot 1: String lenght by trial')
subplot(2,2,2);
bar3(Y)
title('Subplot 2: waveform frequency')
subplot(2,2,3);
bar3(Z)
title('Subplot 3: Accuracy')
% :)  I was bored so I went for it, and I'm pleased with the result
