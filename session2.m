clc;
clear all;
close all;
%% discrete signal definition
nt=21;
td=linspace(0,2*pi,nt);
fd=sin(td);

%% reconstructed signal definition (polynomial)
% find coefficients
p = polyfit(td,fd,6);
% evaluate the fitted polynomial p and plot
t_recon = linspace(min(td),max(td)*2,1001);
f_recon = polyval(p,t_recon);

%% visualisation
figure(1)
plot(td,fd,'or','LineWidth',2)
hold on
plot(t_recon,f_recon,'-k')