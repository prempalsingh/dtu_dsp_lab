clc;
b=input('Enter the coefficiants of x(n) in the order x(n),x(n-1)...in the Matrix form = ');
a=input('Enter the coefficiants of y(n) in the order y(n),y(n-1)...in the Matrix form = ');
n=[-5:20];
x=[(n==0)];
h=filter(b,a,x);
figure(1);
subplot(2,1,1);
stem(n,x);
xlabel('n');
ylabel('amplitude');
title('impulse sequence');
subplot(2,1,2);
stem(n,h);
xlabel('n');
ylabel('amplitude');
title('impulse response');
