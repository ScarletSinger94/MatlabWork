function  Instruction( condition )
%This program gives experimental instructions
%   Detailed explanation goes here
scr=get(0,'screensize');

f1=figure(1);
set(f1,'menubar','none','position',[scr(1) scr(2) scr(3) scr(4)]);
set(f1,'color','w');

h(1)=uicontrol('units', 'normalized','style','push','string','continue',...
    'position',[.85,.1,.1,.1],'callback','set(gcf,''userdata'',10)');

if condition==1
    msg=sprintf('Welcome to the experiment');
    t1=text(0.1,0.9,msg,'fontsize',20);
    msg=sprintf('youre really really dumb');
    t2=text(0.1,0.8,msg,'fontsize',20);
    msg=sprintf('this is the %d condition',condition);
    t3=text(0.1,0.7,msg,'fontsize',20);
elseif condition==2
     msg=sprintf('Do Something now');
    t1=text(0.1,0.9,msg,'fontsize',20);
    msg=sprintf('youre really really dumb');
    t2=text(0.1,0.8,msg,'fontsize',20);
    msg=sprintf('this is the %d condition',condition);
    t3=text(0.1,0.7,msg,'fontsize',20);
        
end

press=0;
response=0;
set(gcf,'userdata',0);
while press==0
    pause(0.1)
    response=get(gcf,'userdata');
    
    if response==10
        press=1;
        
    end

end
delete(t1);
delete(t2);
delete(t3);

