%Exp: 02
%Title: Plot basic signals
%Date: 03-10-2024

clear;close;clc;

% Unit impulse signal
n=-3:1:3;
un_imp = [zeros(1,3),ones(1,1),zeros(1,3)];
subplot(221)
stem(n,un_imp);
title("Unit Impulse Signal");
xlabel("Samples");
ylabel("Amplitude");

% Unit Step Signal
n=-3:1:3;
un_step = [zeros(1,3),ones(1,4)];
subplot(222)
stem(n,un_step);
title("Unit Step Signal");
xlabel("Samples");
ylabel("Amplitude");

% Unit Ramp Signal
n=-3:1:3;
n1=0:3;
un_ramp1 =n1;
un_ramp = [zeros(1,3),un_ramp1];
subplot(223)
stem(n,un_ramp);
title("Unit Ramp Signal");
xlabel("Samples");
ylabel("Amplitude");

% Exponential Signal
n=-3:1:10;
n1=0:10;
un_exp1 =exp(n1);
un_exp = [zeros(1,3),un_exp1];
subplot(224)
stem(n,un_exp);
title("Exponential Signal");
xlabel("Samples");
ylabel("Amplitude");