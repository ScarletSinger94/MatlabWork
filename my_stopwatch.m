 function my_stopwatch(varargin)
global txt f1
 if nargin==0
scr=get(0,'screensize');
f1=figure(1);
set(f1,'position',[scr(1),scr(2),scr(3),scr(4)],'menubar','none','color','k');
h(1)=uicontrol('units','normalized','style','pushbutton',...
    'string','Start','BackgroundColor','g','position', [0.3 0.5 .2 0.2], 'fontsize',16,'callback', 'tic');
h(2)=uicontrol('units','normalized','style','pushbutton',...
    'string','STOP!','BackgroundColor','r','position', [0.5 0.5 .2 0.2], 'fontsize',16,'callback', 'my_stopwatch(''toc'')');
txt = uicontrol('units','normalized','fontsize',36,'Style','text','Position',[.35 .1 .3 .2],'String','GO');
 elseif strcmpi(varargin, 'toc')==1
     val=toc;
     set(txt, 'String', num2str(val));
     set(f1,'color',rand(3,1));% I did this part for a little added, recursive fun
end

