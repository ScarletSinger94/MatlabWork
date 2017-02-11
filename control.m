clc;
clear all;
close all;
sc=get(0,'screensize');
fh=figure(1);
set(fh,'position', [sc(1) sc(2) sc(3) sc(4) ])


%h=uicontrol;
%set(h,'units','normalized','position',[0.5 0.5 0.2 0.2]);
%set(h,'style','slider');
%set(h,'background','b');
%%
h(3)=uicontrol('units','normalized','position',[.85 .4 .5 .8],'string','continue',...
    'callback','set(gcf,''userdata'',10)');

h(2)=uicontrol('units','normalize','style','slider','min',.01,'max',...
    1,'value',.5,'position',[.05 .1 .04 .8],'background','y','fontsize',12,...
    'callback','set(gcf,''userdata'',20)');

pic=imread('brain.jpg');
hs=subplot('position',[0 .1 1 .8]);
h_pic=imshow(pic);
axis square
response=0
press=0;
while press==0
    pause(.1);
   val=get(h(2),'value');
   v1=0.5-(val*.5);
   v2=0.5-(val*.5);
   v3=val;
   v4=val;
   set(hs,'position',[v1 v2 v3 v4]);
   response=get(gcf,'userdata');
   if response==10
       press=1;
   end
end
close all

   