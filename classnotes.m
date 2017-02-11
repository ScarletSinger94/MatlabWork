clc
clear all;
close all;
k=0;
while ~k
    k=waitforbuttonpress;
    if~strcmp(get(gcf,'CurrentCharacter').'y')
        k=0;
    end
end
 
close all
inpudlg
msgbox('this is not correct','error message','error'
rbbox

dh=warndlg('this is a warning - get ready');
waitfor(dh)
disp('this prints after you close');