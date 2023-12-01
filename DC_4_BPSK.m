%Aaditya Dawkar
%BPSK
clc %for clearing the command window
close all %for closing all the window except command window
clear all %for deleting all the variables from the memory
t=0:.001:1; 
fc=20;
fm=10;
amp=5;
c=amp.*sin(2*pi*fc*t);
subplot(3,1,1) 
plot(t,c)
xlabel('Time')
ylabel('Amplitude')
title('Carrier')
m=square(2*pi*fm*t);
subplot(3,1,2)
plot(t,m)
xlabel('time')
ylabel('ampmplitude')
title('Message Signal')
x=c.*m;
subplot(3,1,3) 
plot(t,x)
xlabel('t')
ylabel('y')
title('PSK')