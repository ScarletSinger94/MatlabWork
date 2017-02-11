clc
clear all;
%[x,y]=ginput(1)
%get(gca,'CurrentPoint')
%pointpos=pointpos(1,1:2);
k=waitforbuttonpress
get(gcf,'CurrentCharacter')
if k==0
    disp('clicked button');
else if k==1
        disp('pressed key');
    end
end

        % define our "global constant":
global Fs


    
    