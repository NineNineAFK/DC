%PCM

clc;
f = 2;
a = 2;
fs = 20 * f;
t = 0:1/fs:1; 

x = a * sin(2 * pi * f * t);
x1 = x + a;

q_op = round(x1);

enco = de2bi(q_op, 'left-msb');
deco = bi2de(enco, 'left-msb');

xr = deco - a;

plot(t, x, 'r-', t, xr, 'g+-');
xlabel('time');
ylabel('amplitude');
%legend('Original Signal', 'Reconstructed Signal'); 
