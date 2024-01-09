[x, Fs] = audioread('KL_n01.wav');
ts = 1 / Fs;         
n = round(0.02/ts);  
plot(x(1:n));       
sound(x, Fs);

