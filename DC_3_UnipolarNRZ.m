%Aaditya Dawkar
%Unipolar NRZ
clc;
close all;
n = [1,1,0,0,1,0,1];
for k = 1:length(n)
    if n(k) == 1 
    n(k) = 1;
    else 
    n(k) = 0; 
    end
end
i = 1;
t=0:0.001:length(n); 
z  = 0*sin(2*pi*10*t);
y = zeros(size(t));
for j=1:length(t)
    if t(j)<=i
        y(j)=n(i);
    else
        y(j) = n(i);
        i=i+1;
    end
end
plot(t,y,'r',t,z,'g');