function Piano(varargin)
%This function is built to simulate a short term memory experiment and
%leave the subject to play after the term is done. By Joshua Rochotte
clear all;
close all;%House Keeping
clc;
sc=get(0,'screensize');

%The following code creates the figure, the button group with nested
%callback, a text display box to give instructions, and each toggle button.
hfigure=figure('Units','Pixels','Position',[sc(1) sc(2) sc(3) sc(4)],'Color','k',...
    'MenuBar','none','Toolbar','none','NumberTitle','off','Name','Bach Or Broke','pointer','circle');
hButtonGroup=uibuttongroup('Parent',hfigure,'Units','Pixels','Position',[sc(1) sc(2) sc(3) sc(4)],...
    'SelectionChangeFcn',@play_note, 'SelectedObject',[]);%This allows callback later on.
Welcome=uicontrol('Style', 'text','String', 'Welcome to Bach Or Broke By Joshua Rochotte. I am going to test your Pitch Acuity.  Its like a short term musical memory. Enjoy! Hit enter to move on.'...
    ,'Units','normalized','Position', [0.35 0.1 0.3 0.3],'Fontsize', 24);
hone=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'C','Fontsize',24 ,...
    'Units','normalized','Position',[.135 .35 .1 .4],'BackgroundColor','r','Value',0);
htwo=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'D','Fontsize',24 ,...
    'Units','normalized','Position',[.23 .35 .1 .4],'BackgroundColor','g');
hthr=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'E','Fontsize',24 ,...
    'Units','normalized','Position',[.325 .35 .1 .4],'BackgroundColor','y');
hfor=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'F','Fontsize',24 ,...
    'Units','normalized','Position',[.42 .35 .1 .4],'BackgroundColor','c');
hfiv=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'G','Fontsize',24 ,...
    'Units','normalized','Position',[.515 .35 .1 .4],'BackgroundColor','w');
hsix=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'A' ,'Fontsize',24,...
    'Units','normalized','Position',[.61 .35 .1 .4],'BackgroundColor','b');
hsev=uicontrol('Parent',hButtonGroup,'Style','togglebutton','String', 'B' ,'Fontsize',24,...
    'Units','normalized','Position',[.705 .35 .1 .4],'BackgroundColor','m');

waitforbuttonpress;%Prompting the subject so they can be attentive to the prompts
set(Welcome, 'String', 'Time to play! The Keys D-B will need to be played back.  Hit enter to move on');
waitforbuttonpress;
set(Welcome, 'String', 'Lets see if you are Bach or Broke. Tones will play following the root pitch');
p={'A.wav', 'B.wav','D.wav', 'E.wav', 'F.wav' ,'G.wav'}; 
%p creates a useful cell array with the names of the wav files to be played
q={'A','B','D','E','F','G'};
%Q is used for the logic check later in the program.
mix = randperm(length((p))); %Randomize the tones to be played
q=q(mix); %keep randomization constant
p=p(mix);
set(Welcome, 'String', 'Listen Up. This is C.');
[y,Fs]=audioread('C.wav'); %Start by playing the root tone.
    sound(y,Fs);
    pause(3); %give time for the sound files to be played.
    set(Welcome, 'String', 'Nows the test. Wait till all notes have been played.');
for x=1:6 %FOR LOOP
    o=p{x}; %pull out the xth element of p
    [y,Fs]=audioread(o);%audioread in and subsequently play said filename
    sound(y,Fs);
    pause(3);
end

set(Welcome, 'String', 'Can you play back for me the keys in order. When you are finished, hit the C key');

    function play_note(~,eventdata)
        %callback function for executing sound play back
        %corresponding to togglebutton selection
        
        N=get(eventdata.NewValue,'String'); %getter to recieve the string from the button group selected object.
        
        switch N %switch case allows for logic check of varied answers. 
            %Each case is the string followed by and audioplay of the corresponding wav file.
            case 'C'
                [y,Fs]=audioread('C.wav');
                sound(y,Fs);
            case 'D'
                [y,Fs]=audioread('D.wav');
                sound(y,Fs);
            case 'E'
                [y,Fs]=audioread('E.wav');
                sound(y,Fs);
            case 'F'
                [y,Fs]=audioread('F.wav');
                sound(y,Fs);
            case 'G'
                [y,Fs]=audioread('G.wav');
                sound(y,Fs);
            case 'A'
                [y,Fs]=audioread('A.wav');
                sound(y,Fs);
            case'B'
                [y,Fs]=audioread('B.wav');
                sound(y,Fs);
        end
        
        
    end
count=0; %To be used in the logic check of correct response in terms of the accuracy of selection.
r=zeros(1,7); %Pre-allocation of our gathered key press array
for x=1:7
   waitforbuttonpress;
    r= get(hButtonGroup,'SelectedObject'); %Gets the selected ui control from the group
    r=get(r,'string'); %Gets String associated with the selected control
    d(x)=r; %Throws the string into our second user input logic array.
end
    for  x=1:6
    if strcmp(d(x+1),q(x))==1 %Compares whether or not the key press equated to the sound file played
        count=count+1; %increments
    else
        count; % Holds count for wrong answer
    end
    end
    u=num2str(count); %Captures the correct count 
   set(Welcome,'String', u); %Displays count as a digit to the text box.
   pause(2);
   save('Piano_test.mat','d','q', 'count');
    if(6-count)==0 % Esp.mat style user rating system.
        set(Welcome, 'String','Bach would be proud!');
        imshow('bach.jpg');
        pause(2);
    elseif(abs(6-count))==1
        set(Welcome, 'String','You have got perfect pitch! or you cheated');
        imshow('pianofire.jpg');
        pause(2);
        
    elseif abs(6-count)==2
        set(Welcome, 'String','I will not be Haydn on your performance.');
        imshow('haydn.jpg');
        pause(2);
        
    elseif abs(6-count)==3
        set(Welcome, 'String','Maybe a Mozart.');
       imshow('mozart.jpg');
        pause(2);
       
    elseif abs(6-count)==4
        set(Welcome, 'String','You got two. Its something.');
        imshow('pianokitty.jpg');
        pause(2);
        
    elseif abs(length(d)-count)==5
        set(Welcome, 'String','Play around a bit and try again.');
        imshow('pianofinger.jpg');
        pause(2);
       
    else
        set(Welcome, 'String','You gave it your best shot.');
         imshow('pianokid.jpg');
        pause(2);
        
    end
     set(Welcome, 'String', 'Wanna give it another Go?');
     %The Following create buttons post trial to allow a second go or to
     %quit. If quit is chosen, quitit runs and displays a thank you message
      retry=uicontrol('style','pushbutton','string','Retry','fontsize',24,'units','normalized','position',[0.65 0.1 0.3 0.3],'callback',@Piano);
      quiti=uicontrol('style','pushbutton','string','QUIT','fontsize',24,'units','normalized','position',[0.05 0.1 0.3 0.3],'callback',@quitit);
    function quitit(varargin)
        clf;
       hFigure=imshow('totallynotacat.png');
        pause(3);
        close all;
        disp('Thanks for playing. Hit run if you change your mind :)');
 
    end

end

    












