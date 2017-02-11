function [mx,sx,minx,maxx,medx] = allstat(x)
%This function gives back summary startistics
%   Detailed explanation goes here
mx=mean(x);
sx=std(x);
minx=min(x);
maxx=max(x);
medx=median(x);


end

 