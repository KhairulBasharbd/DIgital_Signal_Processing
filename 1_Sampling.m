clc;close all;clear all;

%% Answer of a
%% Main Signal
t=0:0.001:1;
x=5*cos(2*pi*50*t);
subplot(4,1,1);
plot(t,x,'g');


%% Answer of b
%%Sampled signal at 200hz

fs=200;
n=0:1/fs:1;
x1=5*cos(2*pi*50*n);
subplot(4,1,2);
stem(n,x1,'r');
hold on;
subplot(4,1,2);
plot(n,x1,'g');


%% Answer of c
%%under sampled at 75 hz
fs1=75;
n1=0:1/fs1:1;
x2=5*cos(2*pi*50*n1);
subplot(4,1,3);
stem(n1,x2,'r');
hold on;
subplot(4,1,3);
plot(n1,x2,'g');


%% Quantization
bit=3;
xmax = max(x1);
xmin = min(x1);
step= (xmax-xmin)/(2^bit);
QuantizedSignal = round(x1/step) * step;
subplot(4,1,4);
plot(n,QuantizedSignal,'r');
hold on;
subplot(4,1,4);
%%plot(n,QuantizedSignal,'g');
plot(t,x,'g');
grid on;


