clc;
clear all;
close all;

%% Main Signal
t=0:0.001:1;
F=8;
x=5*cos(2*pi*F*t);
subplot(3,2,1);
plot(t,x,'g');


%% Answer of b
%%Sampled signal at 200hz

fs=64;
n=0:1/fs:1;
x1=5*cos(2*pi*F*n);
subplot(3,2,2);
stem(n,x1,'r');
hold on;
subplot(3,2,2);
plot(n,x1,'g');

%%DFT
N=8;
X=zeros(N,1);

for m=1:N
  for n=1:N
    X(m) = X(m) + (x1(n) * exp(-j*2*pi*(n-1)*(m-1)/N));
  end
end
%%real part
n1=0:N-1
subplot(3,2,3);
stem(n1,real(X));

%%    Imaginary  part
subplot(3,2,4);
stem(n1,imag(X));

%%Magnitude part
subplot(3,2,5);
%%figure(2);
stem(n1,abs(X));

%%phase
a=round(real(X));
b=round(imag(X));
p=atan(b/a);
p=rad2deg(p);
subplot(3,2,6);
stem(n1,p);

%% Power spectrum
figure(2);
%%subplot(3,2,5);
%%figure(2);
stem(n1,abs(X).^2);

%%  inverse DFT
x2=zeros(N,1);
for n= 1:N
  for m=1:N
     x2(n) = x2(n) + (1/N)*(X(m) * exp(j*2*pi*(n-1)*(m-1)/N));
  endfor
end


n2=0:N-1
figure(3);
stem(n1,real(x2));

