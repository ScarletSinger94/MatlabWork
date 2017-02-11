function KeyPressExample

fig = figure();
set(fig, 'KeyPressFcn', @play_tone,'Tag', 'MainGUI');

button = uicontrol(fig, 'Units', 'normalized', 'Position', [.4 .4 .2 .2], ...
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
end