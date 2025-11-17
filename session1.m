%% signal definitions

clc;
clear all;
close all;
syms tc fc;
fc=sin(tc)

nt=32;
td=linspace(0,2*pi,nt);
fd=sin(td);
figure(1)
fplot(fc,[0,2*pi],'r--')
hold on;
plot(td,fd,'ko')

%% obtaining derivatives
dfdt_c=diff(fc,tc)
%sampling time period
T = td(2)-td(1);
dfdt_d = gradient(fd,T);
close all;
figure(2)
fplot(dfdt_c,[0,2*pi],'r--')
hold on
plot(td,dfdt_d,'ko')