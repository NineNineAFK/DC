%Aaditya Dawkar
%Polar NRZ
clc;
close all;
n = [1,1,1,0,0,1,0];
for k = 1:length(n)
    if n(k) == 1 
    n(k) = 1;
    else 
    n(k) = -1; 
    end
end
i = 1;
a = 0;
t=0:0.001:length(n); 
z  = 0*sin(2*pi*10*t);
y = zeros(size(t));
for j=1:length(t)
    if t(j) == 0 
        y(j)=0;
    elseif (t(j) <= i) 
        disp(t(j)); 
        y(j)=n(i); 
    else
        y(i) = n(i);
        a = i;
        i=i+1;
    end
end
plot(t,y,'r',t,z,'g');