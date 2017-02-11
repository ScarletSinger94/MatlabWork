for n = [1,3,5,6,8,10,12,13], sine_tone(440*2^(n/12));end

function sin_tone(freq)
fs=8192;
t=[0:1/fs:1];
y = sin(2*pi*freq*t);
soundsc(y)