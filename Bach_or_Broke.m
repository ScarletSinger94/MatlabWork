
button = uicontrol(fig, 'Units', 'normalized', 'Position', [.1 .2 .2 .2], ...
'String', 'Change Color', ...
'CallBack', @ChangeColorButtonPress, ...
'KeyPressFcn', @ChangeColorButtonPress);

function ChangeColorButtonPress(varargin)
    EventData=varargin{2}
    try
        if strcmp(EventData.Key, 'uparrow')
        set(findobj('Tag', 'MainGUI'), 'Color', rand(3,1));
        end
    catch
        set(findobj('Tag', 'MainGUI'), 'Color', rand(3, 1));
    end    
end
H(1)=uicontrol('BackgroundColor','r','Position',[200 10 150 380] ,'Style',...
    'popupmenu','String',{'Bach or Broke','Play','TEST','CatPiano'});
z=.075;
y=1;
msg='Welcome to Bach or Broke';
text(0.2,0.2,msg,'fontsize',15)
axis off
msg='Welcome to Bach or Broke';
V(x)=['A'; 'S'; 'D'; 'F'; 'G'; 'H'; 'J'; 'K'; 'L'];
for x=1:9
    h(x)=uicontrol('BackgroundColor','w','Style','pushbutton','String', 'char(V(x))','Units','normalized','Position',[z .35 .1 .4],'ButtonDownFcn','@mycallback');
    z=z+.095;
    y=y+1;
      
end

 if strcmpi(keyPressed,'x')





