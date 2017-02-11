%exam review
clc; 
clear all; 
close all;
debug=1;

if debug==0
disp('this is an experiment')
ID=Input('please enter your id');
INIT=input('please enter your initials','s');
end
f1=figure(1); clf
scrn=get(0,'Screensize');
lft=scrn(1);
bot=scrn(2);
set(f1,'menubar','none','color','w');
set(f1,'position',[lft bot scrn(3) scrn(4)]);
msg=sprintf('welcome to the experiment.')
t1=text(0.01,.9, msg);

msg=('Here are some instructions....');
t2=text(.01,0.7,msg);
msg=sprintf('please click continue to consent to participate');
t3=text(0.01,.5,msg);
axis off;
h(1)=uicontrol('units', 'normalized','style','pushbutton',...
    'position',[.8 .1 .1 .1],'string','continue',...
    'callback','set(gcf,''UserData'',10)');
press=0;
typing=0;
while press==0
    pause(0.1);
    typing=get(gcf,'UserData');
    if typing ==10
        press=1;
    end
end


delete(t1);
delete(t2);
delete(t3);
set(h(1),'visible','off');

%% 4)

words={'accident','belief','cattle','center','design','experimenter','laboratory'...
    'message','negative','permanent','security'};
words=words(randperm(length(words)));
fntSz=[50 30 10];
fntsz=repmat(fntSz,1,4);
fntSz=fntSz(randperm(length(fntSz)));
%% 5)
for i=1:length(words)
    t=text(.35,.5,words(i),'fontsize',fntSz(i),'font','georgia');
    pause(1);
    delete(t);
end


%% 6)
h(2)=uicontrol('units','normalized','style','edit',...
    'position',[.6 .7 .2 .1],'callback','set(gcf,''UserData'',20');
set(h(1),'visible','on');
htext=axes ('position', [0 0 1 .8]);
msg=spintf('type your response in the edit box and hit enter');
t1=text(.15,.95,msg,'fontsize',20);

press=0;
typing=0;
count=0;
set(gcf('UserData',0));
while press==0
    pause(0.01);
    typing=get(gcf,'UserData')
    if typing==20
        count=count+1;
        label{count}=get(h(2),'string');
        set(gcf,'Userdata',10);
        set(h(2),'string','');
       %score set
    elseif typing==10
        press=1;
        delete(t1);
        set(h(1),'visible','off');
        set(h(2),'visible','off');
        
    
    end
end
%% 7)
filename=sprintf('subject_%d_%s.mat',ID,INIT);
save(filename,'words','fntSz','label')
   
