function MotionFcn( FigH, Eventdata )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
loc=get(gca,'CurrentPoint');
loc(1)
loc(3)

plot(loc(1),loc(3),'ko'); hold on
xlim([0 500]);
ylim([0 500]);
end

