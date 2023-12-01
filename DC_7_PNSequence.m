%Nikunj Purohit
%PN Sequence
f=3;
N=(2^f)-1;
s1=1;
s2=1;
s3=1;
for i=1:N
    s0(i)= xor(s3(i),s1(i));
    s1(i+1)=s0(i);
    s2(i+1)=s1(i);
    s3(i+1)=s2(i);
end
pn_seq=s3(1:N)
disp(pn_seq)
stem(pn_seq)