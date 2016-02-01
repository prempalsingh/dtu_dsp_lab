clc;
clear;
a = input('enter the sequence x(n) = ');
b = input('enter the sequence h(n) = ');
n1=length(a);
n2=length(b);
N=max(n1,n2);
x = [a zeros(1,(N-n1))];
for i = 1:N
k = i;
for j = 1:n2
H(i,j)=x(k)* b(j);
k = k-1;
if (k == 0)
k = N;
end
end
end
y=zeros(1,N);
M=H;
for j = 1:N
for i = 1:n2
y(j)=M(i,j)+y(j);
end
end
disp('The output sequence is y(n)= ');
disp(y);
stem(y);
title('Circular Convolution');
xlabel('n');
ylabel('y(n)');
