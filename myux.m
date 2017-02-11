function   myux
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
figure
uicontrol('units','normalize', 'position', [.3 .4 .5 .4],'style','slider','Callback', @display_slider_value);
end
function display_slider_value(hObject, callbackdata)
newval= num2str(get(hObject,'value'));
disp(['slider moved to ' newval]);

end

