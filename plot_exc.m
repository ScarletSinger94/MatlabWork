function plot_exc(varargin)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
global t h f sr
if nargin==0

scr=get(0,'screensize');
f1=figure(1);
set(f1,'position',[scr(1),scr(2),scr(3),scr(4)],...
    'menubar','none');
h(1)=uicontrol('units','normalized','style','popup',...
    'string','Frequency|50|100|150|200|250|',...
    'position', [0.35 0.1 .2 0.2], 'fontsize',16,'callback', 'plot_my_sin(''freq'')');

sp=subplot('position', [.15 .4 .75 .5]);
dur=2;
sr=10000;
t=1:1/sr:dur;
elseif strcmpi (varargin, 'freq')==1
    f=get(h(1),'value')-1*50; 
    x_sin=sin(2*pi*f*t);
    sound(x_sin,sr)
plot(t,x_sin)


    elseif strcmpi (varargin, 'time')==1
    dur=get(h(2),'value')-1; 
    t=1:1/sr:dur;
x_sin=sin(2*pi*f*t);
plot(t,x_sin)
end
end
