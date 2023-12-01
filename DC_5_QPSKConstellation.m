%Nikunj Purohit
%QPSK Constellation
clc;
clear all;
b = [1,0,0,0,1,1,0,1] 
for n=1:length(b)/2
    p=b(2*n); 
    q=b(2*n-1); 
    if(q==0)&(p==0) 
        d(n)=exp(j*pi/4); %45
    end
    if(q==1)&(p==0) 
        d(n)=exp(j*3*pi/4);%135
    end
    if(q==1)&(p==1) 
        d(n)=exp(j*5*pi/4);%225
    end
    if(q==0)&(p==1) 
        d(n)=exp(j*7*pi/4); %315
    end
end
qpsk=d;
plot(d, 'o'); 
xlabel('real');
ylabel('Imag');
title('QPSK constellation');