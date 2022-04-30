clear all
close all
clc
 t=0:1/180:10-1/180;
x6=ramp(t) -heaviside(t-50);
plot (x6)


 t=0:1/180:10-1/180;
%signal #1
x1=2*rectangularPulse(0.5*(t-2));

%Signal #2 
x2= 3*triangularPulse(3*t-12);

%Signal #3 
 c1= 4*cos (120*pi*t);
 
%Signal 4 
c2= 2 *cos (80*pi*t); 

y1= c1.*x1;
y2=c2.*x2;
%plot(t,y1)
%plot(t,y2)

 v= y1+y2;
% plot (t,v)

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Fourier Transformation of Y1  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 H2=fft(y1);
 f=(0:length (H2)-1)*180/length(H2); 
plot (f,abs(H2))
 
 n=length(y1)
fshift=(-n/2:n/2-1)*180/n;
 H2shift=fftshift(H2);
 plot (fshift,abs(H2shift)) 
 
 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Fourier Transformation of Y2  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 H2=fft(y2);
 f=(0:length (H2)-1)*180/length(H2); 
plot (f,abs(H2))
 
 n=length(y2)
fshift=(-n/2:n/2-1)*180/n;
 H2shift=fftshift(H2);
 plot (fshift,abs(H2shift)) 

 
%  
%  
%  
% 
% 
% %  % C2(t)= 2 cos (80??).
% %  t=0:1/50:10-1/50;
% % 
% % plot(t,C2)
% % %%%%%% Fourier Transformation%%%%% 
% % 
% % y2=fft(C2);
% % f=(0:length (y2)-1)*180/length(y2); 
% % plot (f,abs(y2))
% % 
% % n2=length(C2)
% % fshift=(-n2/2:n2/2-1)*180/n;
% % yshift=fftshift(y);
% % plot (fshift,abs(yshift))





%%PART E
c2= 2 *cos (80*pi*t); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Fourier Transformation of C2  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 M=fft(c2);
 f=(0:length(M)-1)*180/length(M); 
plot (f,abs(M));
 
 n=length(c2)
fshift=(-n/2:n/2-1)*180/n;
 Mshift=fftshift(M);
plot (fshift,abs(Mshift)) 
 

