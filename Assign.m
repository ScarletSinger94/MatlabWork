clear
clc %clears the command each run

A= 3+4/5+6;%setting the value to be equivalent as was gven.
disp(A); %displays variable in parenthesis
B= 2*pi^2; %using correct method to produce Pi and a power
disp(B);
E= sqrt(2);% use of library function
disp(E);
D=(0.0000123 + 5.67E-3)*(0.4567E-4);%proper assignment with sig figs
disp(D);

C=37;%set the temp
F=9*C/5+32; % maniplate celsius
disp(F);

N=[1 2 3 4 5];%instantiate an array with given values
Q= 1./N; %inverse function
disp(Q);
R= 2*N;%Double the function array
disp(R);
S=1./2*N;% one half each value
disp(S);
T=1./4*N; %one fourth of the vector
disp(T);

price=[0.6 1.2 0.5 1.3]; %price vector
amount=[3 2 1 5]; % amount vector
cost=price*amount'; % number of items multiplyed by price
disp(cost);


rand('state',sum(100*clock)) %Randomizer function
 rand %generates a random number between 0 and 1
 rand*3 %generates a random number between 0 and 3
 floor(rand*3) %generates a random integer by rounding down between 0 and 2
 floor(rand*3)+1 %generates a random integer by rounding between 1 and 3
 randn %generates a random number using N as the normal
randn*2+3 %uses the above but accounts for S.D. and mean
 randperm(8,3) %generates a random number permutation without a repeat