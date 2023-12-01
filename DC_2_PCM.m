%Nikunj Purohit
%PCM
close all;
clc;

A=2;
f=3;
t=0:0.01:1;

X= A*sin(2*pi*f*t);
%plot(t,X);
%subplot(4,2,1);
%title("signal");

Level_shift= X + A;
%plot(t,Level_shift);
%subplot(4,2,2);
%title("Level Shifting")

quant=round(Level_shift);
%plot(t,quant);
%subplot(4,2,3);
%title("Level Shifting")

enc=de2bi(quant);
dec=bi2de(enc);
Level_dshift = dec - A;
plot(t,X,"r-",t,Level_dshift,"g+-");
