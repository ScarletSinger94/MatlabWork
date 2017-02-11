Piano
p=['A.wav', 'B.wav','C.wav','D.wav', 'E.wav', 'F.wav' ,'G.wav'];
for x=1:5
    mix = randperm(length((p)));
    NewCell=p(mix);
            z=1;
            o=NewCell{z};
         k(Z)=o;
            [y,Fs]=audioread(o);
            sound(y,Fs);
            z=z+1;
            pause(3);
        disp ('thats one');
end