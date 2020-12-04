%Creating and input signal with added noise to feed to the FIR filter

h2r = 2*pi;
tStop = 10;
Fs = 48000;
dt = 1/Fs;

%Timestamp
t = (0:dt:tStop)';
nFreq = 50;
K = 0.05;

%Sine wave
sig1 = sin(1*t*h2r);

%Noise signal
sig2 = K*sin(nFreq*t*h2r);

%Sine wave added with noise
noise = sig1 + sig2;