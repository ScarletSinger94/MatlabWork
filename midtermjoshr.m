%%This program was written by Joshua Rochotte on 2/29/16. 

clear all;
close all;  %house keeping
clc;
disp('I am going to ask you for the number of scores in set one and two.'); %welcoming display message pre-promting user input
disp('Keep in mind that the number of scores in each set needs to be the same.');
x=input('How Many Scores are there in Set 1? ');%recieve user input for the two variables
y=input('How Many Scores are there in Set 2? ');
if x == y
    disp('Lets proceed');%error check to ensure that the lengths are going to be equal
else
    disp('Try again');
    x=input('How Many Scores are there in Set 1? ');%rewrites values for the variables if errors persist
    y=input('How Many Scores are there in Set 2? ');
    
end
 %extra variables needed to aid in indexing the loop
b=1;
d=1;
for i=1:x
    str=input(sprintf('Enter the value for Set 1 score %d  ',b )); %displays the current position in the matrix
    x(b)= str; %stores string data into matrix x
    b=b+1; %incrementation
    
end
for j=1:y
    str2=input(sprintf('Enter the value for Set 2 score %d  ', d )); %as above in line 24 but for the second matrix
    y(d)= str2;
    d=d+1; %as above
end
disp(x)%friendly displaying of the data entered. felt it may be useful to the user.
disp(y)
%below is the r statistic calculation, where n is substituted for the
%length of the x matrix. I did not supress the R value so it should display
%in the window
R= (length(x)*(sum(x.*y))-(sum(x)*sum(y)))/sqrt((length(x)*(sum(x.^2))-(sum(x).^2 ))*(length(x)*(sum(y.^2))-(sum(y).^2)))

if R>=0
    disp('Those scores are positively correlated :)')%display result to user given the value of R
else
    disp('Those scores are negatively correlated :( ');
end

figure %create a figure in which a subplot will be created
subplot(2,2,1)%referrences subplot 1 of 2
plot(x,'--rs')% plots x data using dashes and red square syntax
xlabel('Number of Observations From Set 1');%labels the x and y axis respectively
ylabel('Dependent Variable');
title('Score Set 1');%this gives the graph a title

subplot(2,2,2) %as above
plot(y,'-ko')
xlabel('Number of Observations From Set 2');
ylabel('Dependent Variable');
title('Score Set 2');

save('Rdata.mat','R','x','y')%this function saves the data file with the given name and will only save the requested variables.
%Im feeling really good about this program. Happy Leap Day to Me!!