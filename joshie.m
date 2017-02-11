clc;
close all;
c=0;
j=1;
m=1;
n=1;
o=0;
for i=1:10;
    figure;
    msg='+';
    text(0.4,0.5,msg,'fontsize',150);
    axis off
    pause();
    clf;
    length = floor(5*rand)+3;
    X(j)=length;
    j=j+1;
    random_string = char(floor(25*rand(1, length)) + 65);
    figure (2)
    msg = random_string;
    p=random_string;
    text(0.4,0.5,msg,'fontsize',46);
    axis off;
    f=((2000*rand)+500);
    Y(m)=f;
    m=m+1;
    sr=10000;
    dur=2;
    t=1:1/sr:dur;
    x_sin=sin(2*pi*f*t);
    sound(x_sin,sr);
    pause(.75);
    clf;
    figure(2);
    msg = ('GOOD LUCK');
    text(0.1,0.5,msg,'fontsize',26);
    axis off;
    pause((rand)+.5);
    clf;
    guess = input('What did you see?','s');
    tf=strcmp(guess,p);
    Z(n)=tf;
    n=n+1;
    if tf==0
        disp('Sorry, thats incorrect');
    else disp('Great Job');
        
    end
    if tf==1
        c=c+1;
    end
    pause(1);
end

disp(['You Got ' num2str(c) ' Correct']);
figure
subplot(2,2,1);
bar3(X)
title('Subplot 1: String lenght by trial')
subplot(2,2,2);
bar3(Y)
title('Subplot 2: waveform frequency')
subplot(2,2,3);
bar3(Z)
title('Subplot 3: Accuracy')
%%
fclose('all')
 