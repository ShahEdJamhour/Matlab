clear all
close all
clc

t=0:1/50:10-1/50;

x1= 2*rectangularPulse(0.5*(t-2));

y=fft(x1);
f=(0:length(y)-1)*50/length(y);
plot(f,abs(y));

n=length(x1);
fshift=(-n/2:n/2-1)*50/n;
yshift=fftshift(y);
plot(fshift,abs(yshift))







% X2=9*ramp(t-3.66666666667)- 18*ramp (t-4)+9*ramp(t-4.33333333333);
% plot (t,X2)
% 
% x2= 3*triangularPulse(3*t-12);
% plot(t,x2)

% 
% y=fft(x2);
% f=(0:length(y)-1)*50/length(y);
% plot(f,abs(y));
% 
% n=length(x2);
% fshift=(-n/2:n/2-1)*50/n;
% yshift=fftshift(y);
% plot(fshift,abs(yshift))