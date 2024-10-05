% Exp: 01
% Title: Verifying Sampling Theorem
% Date: 12-09-2024

clear;close;clc;

A = 2; % amplitude
f = 100; % frequency
Tp = 1/f;
fs1 = 1.5*f; % undersampling
fs2 = 2*f; % critical sampling
fs3 = 20*f; % oversampling

% undersampled
t = 0:1/fs1:4*Tp;
y1 = A*sin(2*pi*f*t);
subplot(3,1,1)
plot(t,y1);

% critically sampled
t = 0:1/fs2:4*Tp;
y2 = A*sin(2*pi*f*t);
subplot(3,1,2)
plot(t,y2);

% oversampled
t = 0:1/fs3:4*Tp;
y3 = A*sin(2*pi*f*t);
subplot(3,1,3)
stem(t,y3);