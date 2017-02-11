FigH=figure('WindowButtonMotionFcn', @MotionFcn)
%clock
t1=clock;
fori=1:10000
rand(32);
end
t2=clock;
delta=t2-t1;
delta*[0;0;86400;3600;60;1]
etime(t2,t1)