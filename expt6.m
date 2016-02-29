x=input('Enter the sequence: ');
y=xcorr(x,x);
figure;subplot(2,1,1);
stem(x);ylabel('Amplitude- ');
xlabel('(a) n');
subplot(2,1,2);
stem(fliplr(y));ylabel('Amplitude-');
xlabel('(b) n');
disp('The resultant signal is: ');
fliplr(y)
