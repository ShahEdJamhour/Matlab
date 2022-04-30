clear all
close all
clc

t=0:1/50:10-1/50;
x1=2*rectangularPulse(0.5*(t-2));
plot(t,x1)

y=fft(x1);
f=(0:length (y)-1)*50/length(y); 
plot (f,abs(y))

n=length(x1)
fshift=(-n/2:n/2-1)*50/n;
yshift=fftshift(y);
plot (fshift,abs(yshift)) 




