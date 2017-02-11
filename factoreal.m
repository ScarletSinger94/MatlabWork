function [x] = factoreal(n)
%factoreal takes a number argument and gives the relative factorail value
%   Detailed explanation goes here
fprintf('entering function factoreal with n=%d \n',n);
if n~=1
    fprintf('calling function factoreal with n=%d \n',n-1);
     x=n*factoreal(n-1);
else
    x=1;
end
fprintf('returning from factoreal with n=%d,n!=%d \n', n,x);
