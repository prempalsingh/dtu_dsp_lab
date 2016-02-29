clc;
clear all;
close all;

% input sequence
xn=input('Enter the input sequence: ');
N=input('Enter the number of points: ');
xk=dft(xn,N);

%magnitude of dft
magxk=abs(xk);

%phase of dft
phasexk=angle(xk);
k=0:N-1;
subplot(2,1,1);
stem(k,magxk);
title('DFT sequence');
xlabel('Frequency');
ylabel('Magnitude');
subplot(2,1,2);
stem(k,phasexk);
title('Phase of DFT sequence');
xlabel('Frequency');
ylabel('Phase');
