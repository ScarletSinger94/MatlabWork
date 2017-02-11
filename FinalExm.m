function  FinalExm
%Final Exam
%This program was written by Joshua Rochotte as a semester finalexam
%for Progamming for Behavioral Sciences on 5/9/16
clc;
clear all;
close all;
str=input('Welcome to the Recognition Task. Here I would like to have your first and last intials. \n Could you type them for me? ','s');
name=str; %take input
num=randi([1 100]); %assign random number to subject
ID=(fprintf('%s%d',name,num)); %save id number

GO %run function

function GO
Recognition=figure;
scrn=get(0,'Screensize');
lft=scrn(1);%set figure and screen
bot=scrn(2);
set(Recognition,'menubar','none','color','w');
set(Recognition,'position',[lft bot scrn(3) scrn(4)]);
msg=sprintf('Your participant ID is %s%d \n Here is a memory recognition Task. In it, you will be responsible for correctly identifying words \n that you have studied and words that you have not. \n We will be measuring for correct responses so please do try your best. \n When you are ready, hit the continue button.',name, num);
t1=text(0.01,.9, msg,'color','red','FontSize',24); %print message
axis off
h(1)=uicontrol(Recognition,'units', 'normalized','style','pushbutton',...
    'position',[.7 .2 .2 .2],'string','continue',...
    'callback','set(gcf,''UserData'',10)'); %create UIcontrol with callback for later use
press=0;
while press==0
    pause(0.1);%press option allows to wait for user press
    typing=get(gcf,'UserData');
    if typing ==10
        press=1;
    end
end
if press==1
    clf% when they press, clear the figure
end

words={'pipe', 'beat', 'enemies', 'imaginary', 'beggar', 'discipline', 'giant', 'boarder',...
    'protect' ,'agenda' ,'reckless', 'garage' ,'public' ,'mirror', 'emergency',...
    'ideal', 'super', 'insect' ,'liquid', 'wealthy', 'company'}; %word cell array
    mix=randperm(length(words));
    new_words=words(mix); %mix the words
    for i=1:14
    study_words= new_words(i);%split words into study and foil
    end
    for j=15:21
        foil_words=new_words(j);
    end
    study_words
    foil_words
    for i=1:14
   text(0.4,0.5,new_words(i),'fontsize',30,'FontName','Cambria','color',rand(3,1));
  axis off; %displaying test words
   pause(2);
   clf;
    end
    
  
h(1)=uicontrol(Recognition,'units', 'normalized','style','pushbutton',...
    'position',[.7 .2 .2 .2],'string','continue',...
    'callback','set(gcf,''UserData'',10)'); %allow the user to wait to contiue
press=0;
set(gcf,'UserData',0);
while press==0
    pause(0.1); %button press logic check
    typing=get(gcf,'UserData');
    if typing ==10
        press=1;
    end
end
if press==1
    clf
end
test_words= new_words(randperm(7));%Select subset of displayed words
study=test_words
test_words=[test_words new_words(15:21)];%concatenate
test_words=test_words(randperm(length(test_words))); %mix the words
m=0;
hr=0;
cr=0;
far=0;
for i=1:14%create ui buttons for scoring
hone=uicontrol('Style','pushbutton','String', 'Did Not Study','Fontsize',24 ,...
    'Units','normalized','Position',[.15 .2 .15 .4],'BackgroundColor','r','callback','set(gcf,''UserData'',1)');
htwo=uicontrol('Style','pushbutton','String', 'Maybe Did Not','Fontsize',24 ,...
    'Units','normalized','Position',[.3 .2 .15 .4],'BackgroundColor','g','callback','set(gcf,''UserData'',2)');
hthr=uicontrol('Style','pushbutton','String', 'Unsure','Fontsize',24 ,...
    'Units','normalized','Position',[.45 .2 .15 .4],'BackgroundColor','y','callback','set(gcf,''UserData'',3)');
hfor=uicontrol('Style','pushbutton','String', 'Maybe Did Study','Fontsize',24 ,...
    'Units','normalized','Position',[.6 .2 .15 .4],'BackgroundColor','c','callback','set(gcf,''UserData'',4)');
hfiv=uicontrol('Style','pushbutton','String', 'Did Study','Fontsize',24 ,...
    'Units','normalized','Position',[.75 .2 .15 .4],'BackgroundColor','w','callback','set(gcf,''UserData'',5)');

    msg=test_words(i);
   text(0.5,0.8,msg,'fontsize',30,'FontName','Georgia','color',rand(3,1));
   axis off;
   waitforbuttonpress;%test the user and allow them to click buttons
press(i)=get(gcf,'UserData'); %callback to use for scoring
if (press(i) <4 & strcmp(msg,study))
    m=m+1;
elseif(press(i)>=4 & strcmp(msg,study))%strcmp all responses
    hr=hr+1;
elseif(press(i) <4 & strcmp(msg,new_words(15:21)))
    cr=cr+1;
elseif(press(i)>=4 & strcmp(msg,new_words(15:21)))
    far=far+1;
end
clf;
end
clf;
save('recognition.mat', 'hr', 'cr', 'far', 'm', 'test_words','study_words', 'new_words');
disp('The experiment is over'); %save data and display thanks

end


end

