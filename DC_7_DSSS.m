%Nikunj Purohit
%DSSS
clc;
clear;
close all;
N=7;
c=[0 0 1 0 1 1 1];
for i=1:length(c)
    if c(i)==0
        cm(i)=-1;
    else
        cm(i)=1;
    end
end
b=randi([0 1],1,2);
m=[];
for k=1:length(b)
   if b(k)==0
       mm=-cm;
   else
       mm=cm;
   end
   m=[m mm];
end
i=1;
l=1/N;
S=700; 
t=0:1/S:length(b)-1/S;
for j= 1:length(t)
    if t(j)<=l
        y(j)=m(i);
    else
        i=i+1;
        l=l+1/N;
    end
end
figure(1);
subplot(311);
plot(t,y);
axis([0 length(b) -2 2]);
xlabel('time');
ylabel('amp');
title('DSSS baseband signal')
c1=cos(2*pi*10*t);
subplot(312);
plot(t,c1);
axis([0 length(b) -2 2]);
xlabel('time');
ylabel('amp');
title('Sinusoidal signal')
x=y.*c1;
subplot(313);
plot(t,x);
axis([0 length(b) -2 2]);
xlabel('time');
ylabel('amp');
title('DSSS BPSK')