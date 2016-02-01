clc; % clears the command window
t=0:.001:0.1;
f1=input ('Enter the input frequency1 = ');
f2=input ('Enter the input frequency2 = ');
y=cos(2*pi*f1*t)+cos(2*pi*f2*t);
f3=max(f1,f2);
% under sampling
fs=f3; %fs = sampling freequency
ts=1/fs;
tx=0:ts:0.1;
m=max(size(tx));
ys=cos(2*f1*pi*tx)+cos(2*pi*f2*tx);
figure(1);
subplot(3,1,1);
plot(t,y);
title('The sinusoidal signal cos(2*pi*f1*t)+cos(2*pi*f2*t)');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
subplot(3,1,2);
stem(tx,ys);
title('The sinusoidal signal sampled at fs Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
subplot(3,1,3);
plot(tx,ys);
title('The recovered sinusoidal sampled at fs Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
% Right sampling
fs=2*f3; %fs = sampling freequency
ts=1/fs;
tx=0:ts:0.1;
m=max(size(tx));
ys=cos(2*pi*f1*tx)+cos(2*pi*f2*tx);
figure(2);
subplot(3,1,1);
plot(t,y);
title('The sinusoidal signal cos(2*pi*f1*t)+cos(2*pi*f2*t)');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
subplot(3,1,2);
stem(tx,ys);
title('The sinusoidal signal sampled at fs Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
subplot(3,1,3);
plot(tx,ys);
title('The recovered sinusidal sampled at fs Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
% over sampling
fs=3*f3; %fs = sampling freequency
ts=1/fs;
tx=0:ts:0.1;
m=max(size(tx));
ys=cos(2*pi*f1*tx)+cos(2*pi*f2*tx);
figure(3);
subplot(3,1,1);
plot(t,y);
title('The sinusoidal signal cos(2*pi*f1*t)+cos(2*pi*f2*t)');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
subplot(3,1,2);
stem(tx,ys);
title('The sinusoidal signal sampled at fs Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
subplot(3,1,3);
plot(tx,ys);
title('The recovered sinusidal sampled at fs Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');
