function avg = mystats( x )
%nested function class demo

n=length(x);
avg=mymean(x,n);
end

function a=mymean(v,n)
        %this is the help page
a=sum(v)/n;
        

end

