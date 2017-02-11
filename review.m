%%exam review
%get current figure gcf
%get current axis
X=1:5;
Y=2:6;

figure
plot(X.^2,Y,'*y',X,Y);
%get/set

name = input('Whats your Name? ', 's');
age = input('How old are you? ','s');
X = [name,', you are ',num2str(age),' years old'];
disp(X)
%%
name = input('whats your name?', 's')
name(length(name):-1:1)