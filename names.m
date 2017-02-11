
% % % % % % % % % Cute or non-cute experiment using pet names % % % % % % % % % % %
% 17/12/2012 created by Rachel Cooper
 
clear all
clc % clear command window
RandStream.setDefaultStream(RandStream('mt19937ar','seed',sum(100*clock))); % reset the random seed
 
%%%%% AIMS %%%%%
 
% Present instruction screen which asks participants to press 'z' if the
% name is cute and 'm' if the name is not cute.
% present cute and non-cute animal names one at a time.
% record which key was pressed and RT.
% save results to a .mat file.
 
 
%%%%% TO DO %%%%%
 
% Present instruction screen which asks participants to press 'z' if the
% name is cute and 'm' if the name is not cute. *
% present cute and non-cute animal images one at a time. *
% record which key was pressed and RT. *
% save results to a .mat file. *
 
%%% Enter particpiant number %%%
 
fail1='Program aborted. Participant number not entered'; % error message which is printed to command window
prompt = {'Enter participant number:'};
dlg_title = 'New Participant';
num_lines = 1;
def = {'0'};
answer = inputdlg(prompt,dlg_title,num_lines,def); %presents box to enter data into
switch isempty(answer)
    case 1 %deals with both cancel and X presses
        error(fail1)
    case 0
        thissub=(answer{1});
end
% % % Define Constants % % %
 
StimuliFolder ='C:\Users\rcoopea\Desktop\cute\stimuli\';
ResultsFolder ='C:\Users\rcoopea\Desktop\cute\results\';
Outputfile = [ResultsFolder 'CuteNamesExperiment_' thissub '.mat' ]; % Create path and name for the results file
StimList = {'Fluffy' 'Buttons' 'Bruser' 'Jaws'};
CuteList = [1,1,0,0]; % correct answer. 1 = cute, 0 = not cute
 
ISI=.5; % Interstimulus interval (seconds)
NTrials = length(StimList); % total number of trials is equal to the length of the list of stimuli. If you change the length of the stimuli list NTrials will automatically update.
 
% % % Randomise Image order % % %
 
StimOrder = randperm(length(StimList));
RandomStim = StimList(StimOrder);
RandomCute = CuteList(StimOrder);
 
% % % Present Instruction Screen % % %
 
CompScreen = get(0,'ScreenSize'); % Find out the size of this computer screen
% win = Screen('OpenWindow',0, [900 900 1000], CompScreen); % Full sized screen
win = Screen('OpenWindow',0, [900 900 1000], [10,10, 1100,1100]); % Small screen used for testing
white=WhiteIndex(win);
Screen('FillRect', win, white);
Screen('TextSize',win, 30);
Screen('TextFont',win, 'Courier New');
Screen('TextStyle', win, 1);
Screen('DrawText', win, 'Welcome to the experiment', 600, 250, [0, 0, 0]);
Screen('DrawText', win, 'You will be presented with names for pets.', 450, 550, [0, 0, 0]);
Screen('DrawText', win, 'Press the ''z'' key if you think the image is cute and the ''m'' key if the image is not cute.', 200, 650, [0, 0, 0]);
Screen('TextSize',win, 25);
Screen('DrawText', win, '< Press any key to continue >', 700, 950, [0, 130, 150]);
Screen(win, 'Flip'); % present to the screen. This is the command to actually present whatever you have made 'win'
WaitSecs(.5); % this avoids participants accidently pressing too quickly and moving the experiment on
KbWait;
WaitSecs(.5); % this avoids participants accidently pressing too quickly and moving the experiment on
 
% % % Trial Loop % % %
 
for trial=1:NTrials;
    
    cute = RandomCute(trial); % find out the correct answer for this trial. 1 = cute, 0 = not cute
    
    % Present words
    Screen('TextSize',win, 50);
    Screen('DrawText', win, RandomStim{trial}, 750, 600, [0, 0, 0]);
    secs0=GetSecs; % set time 0 (for reaction time)
    Screen('Flip', win); % present to the screen
    KbWait; % Wait for a key press
    
    % Collect keyboard response
    [keyIsDown, secs, keyCode, deltaSecs] = KbCheck; % Wait for and check which key was pressed
    response=KbName(keyCode);
    responsenumber=KbName(response);
    RT=secs-secs0; % Get reaction time
    
    % Present blank screen
    Screen('FillRect',win, white); % fill the screen with white
    Screen('Flip', win); % present to the screen
    WaitSecs(ISI); % Wait until the value of ISI
    
    % Create results file
    Results.data(trial,:)=[str2num(thissub) trial cute responsenumber RT]; % Numerical data
    Results.headers=['sub trial cute responsenumber(90=z/77=m) RT ']; % Headers to describe what the numerical data is
    
    
end
 
save(Outputfile, 'Results')
 
 
sca; % Screen Close All %%% Important! %%%
 

