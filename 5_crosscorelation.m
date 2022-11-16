clc;close all;clear all;

x = [1 2 3 4];
h1 = [4 3 2 1];
h = fliplr(h1);

xln = length(x);
hln = length(h);

X = [x,zeros(1,hln)];
H = [h, zeros(1,xln)];
N = xln+hln - 1;


for i=1:N
  Y(i) = 0;
  for j=1:xln
    if(i-j+1>0)
      Y(i) = Y(i) + X(j)*H(i-j+1);
    endif
  end
end
%xlow = input('Enter low of x : ');
%hlow = input('Enter low of h : ');
xlow =0;
hlow = 0;
nlow = xlow + hlow;

nhigh = (xlow + xln-1) + (hlow + hln-1);

t = nlow:nhigh;

stem(t,Y);
grid on;
