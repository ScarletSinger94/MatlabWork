function [ req, geq ] = parallel( r1,r2,r3,r4,r5,r6,r7,r8,r9 )
%function parallel calculates resistance of up to 9 lightbulbs
% =-1 if no resistor is specified
% =NaNif a resistor has a value of zero
%   Detailed explanation goes here
if nargin==0
    req=-1;
else if nargin==1
        req=r1;
    elseif nargin==2
        geq=(1/r1)+(1/r2);
        req=1/geq
        elseif nargin==3
        geq=(1/r1)+(1/r2)+(1/r3);
        req=1/geq
elseif nargin==4
        geq=(1/r1)+(1/r2)+(1/r3)+(1/r4);
        req=1/geq
elseif nargin==5
        geq=(1/r1)+(1/r2)+(1/r3)+(1/r4)+(1/r5);
        req=1/geq
elseif nargin==6
        geq=(1/r1)+(1/r2)+(1/r3)+(1/r4)+(1/r5)+(1/r6);
        req=1/geq

end

