%%conditional statements
clc;
clear all;
close all;

disp('this program tests for esp');
disp('the spirits have spoken');
for i=1:10
    
    num(i)=floor(rand*10)+1;
    
        guess(i)=input('what do you think this number is? ')
        num(i)
        if (guess<1) | (guess>10)
            disp('you dumb');
        end
        
    
        
        if(guess-num(i))==0
            disp('ESP');
        elseif(abs(guess-num(i)))==1
            disp('jury is out');
        elseif abs(guess-num(i))>1
            disp('no esp');
        end
end