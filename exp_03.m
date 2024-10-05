%Exp: 03
%Title: Linear convolution
%Date: 03-10-2024

clear;close;clc;

x = input("Enter the input signal");
h =input("Enter the system function");

n1_x = length(x);
n2_h = length(h);

x =[x,zeros(1,n2_h)];
h =[h,zeros(1,n1_x)];

for i =1:n1_x+n2_h-1
    y(i)=0;
    for j = 1:n1_x+n2_h-1
        if(i-j+1>0)
            y(i)= y(i)+x(j).*h(i-j+1);
        end
    end
end
