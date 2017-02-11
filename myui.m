function myui()
   myvar = 5;
   figure
   uicontrol('Style','pushbutton',...
             'Callback',{@pushbutton_callback,myvar});
end
function pushbutton_callback(hObject,callbackdata,x)
   display(x);
end