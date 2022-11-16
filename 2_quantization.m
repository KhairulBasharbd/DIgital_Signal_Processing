



clc;close all;clear all;

%% Answer of a
%% Main Signal
t=0:0.001:1;
F=1;
x=5*cos(2*pi*F*t);
subplot(3,1,1);
plot(t,x,'g');


%% Answer of b
%%Sampled signal at 200hz

fs=20;
n=0:1/fs:1;
x1=5*cos(2*pi*F*n);
subplot(3,1,2);
stem(n,x1,'r');
hold on;
subplot(3,1,2);
plot(n,x1,'g');


%% Quantization
bit=2;
xmax = max(x1);
xmin = min(x1);
step= (xmax-xmin)/(2^bit);
QuantizedSignal = round(x1/step) * step;
subplot(3,1,3);
plot(n,QuantizedSignal,'r');
hold on;
subplot(3,1,3);
%%plot(n,QuantizedSignal,'g');
plot(t,x,'g');
grid on;

