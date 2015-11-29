close all
clear all
clc

load spatialacf_SPM.mat

SPM_FWHM = 9.5; % mm
SPM_std = sqrt(2)*SPM_FWHM/2.355;

figure
plot(0:acf_length,mean_acf)
hold on
plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),'g')
hold on
plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/(2*SPM_std^2)),'r')
hold off
legend('Mean SPM ACF','Exponential ACF',sprintf('Squared exponential ACF, \nFWHM = 9.5 mm'))
xlabel('Distance (mm)','FontSize',15)
ylabel('Correlation','FontSize',15)
title(sprintf('Empirical and theoretical spatial \nauto correlation functions for SPM'),'FontSize',15)
axis([0 acf_length 0 1])
set(gca,'FontSize',15)
NumTicks = 11;
L = [0 10];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'0', '2', '4', '6','8', '10', '12', '14','16', '18', '20', '22'})

L = [0 1];
set(gca,'YTick',linspace(L(1),L(2),NumTicks))
set(gca,'YTickLabel',{'0', '0.1', '0.2', '0.3','0.4', '0.5', '0.6', '0.7','0.8', '0.9', '1'})

print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/SPM_empirical_theoretical_acf.png
print -depsc /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/SPM_empirical_theoretical_acf.eps

pause(2)


%-----

load spatialacf_FSLOLS.mat

FSL_FWHM = 9; % mm
FSL_std = sqrt(2)*FSL_FWHM/2.355;

figure
plot(0:acf_length,mean_acf)
hold on
plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),'g')
hold on
plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/(2*FSL_std^2)),'r')
hold off
legend('Mean FSL OLS ACF','Exponential ACF',sprintf('Squared exponential ACF, \nFWHM = 9 mm'))
xlabel('Distance (mm)','FontSize',15)
ylabel('Correlation','FontSize',15)
title(sprintf('Empirical and theoretical spatial \nauto correlation functions for FSL OLS'),'FontSize',15)
axis([0 acf_length 0 1])
set(gca,'FontSize',15)
NumTicks = 11;
L = [0 10];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'0', '2', '4', '6','8', '10', '12', '14','16', '18', '20', '22'})
L = [0 1];
set(gca,'YTick',linspace(L(1),L(2),NumTicks))
set(gca,'YTickLabel',{'0', '0.1', '0.2', '0.3','0.4', '0.5', '0.6', '0.7','0.8', '0.9', '1'})

print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLOLS_empirical_theoretical_acf.png
print -depsc /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLOLS_empirical_theoretical_acf.eps

pause(2)



load spatialacf_FSLFLAME.mat

figure
plot(0:acf_length,mean_acf)
hold on
plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),'g')
hold on
plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/(2*FSL_std^2)),'r')
hold off
legend('Mean FSL FLAME ACF','Exponential ACF',sprintf('Squared exponential ACF, \nFWHM = 9 mm'))
xlabel('Distance (mm)','FontSize',15)
ylabel('Correlation','FontSize',15)
title(sprintf('Empirical and theoretical spatial \nauto correlation functions for FSL FLAME'),'FontSize',15)
axis([0 acf_length 0 1])
set(gca,'FontSize',15)
NumTicks = 11;
L = [0 10];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'0', '2', '4', '6','8', '10', '12', '14','16', '18', '20', '22'})
L = [0 1];
set(gca,'YTick',linspace(L(1),L(2),NumTicks))
set(gca,'YTickLabel',{'0', '0.1', '0.2', '0.3','0.4', '0.5', '0.6', '0.7','0.8', '0.9', '1'})

print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLFLAME_empirical_theoretical_acf.png
print -depsc /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLFLAME_empirical_theoretical_acf.eps


pause(2)


%----

load spatialacf_AFNIOLS.mat

AFNI_FWHM = 8; % mm
AFNI_std = sqrt(2)*AFNI_FWHM/2.355;

figure
plot(0:acf_length,mean_acf)
hold on
plot(0:acf_length,exp(-[0:3:(acf_length*3)]/12),'g')
hold on
plot(0:acf_length,exp(-[0:3:(acf_length*3)].^2/(2*AFNI_std^2)),'r')
hold off
legend('Mean AFNI OLS ACF','Exponential ACF',sprintf('Squared exponential ACF, \nFWHM = 8 mm'))
xlabel('Distance (mm)')
ylabel('Correlation')
title(sprintf('Empirical and theoretical spatial \nauto correlation functions for AFNI OLS'),'FontSize',15)
axis([0 acf_length 0 1])
set(gca,'FontSize',15)
NumTicks = 8;
L = [0 7];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'0', '3', '6', '9','12', '15', '18', '21'})
NumTicks = 11;
L = [0 1];
set(gca,'YTick',linspace(L(1),L(2),NumTicks))
set(gca,'YTickLabel',{'0', '0.1', '0.2', '0.3','0.4', '0.5', '0.6', '0.7','0.8', '0.9', '1'})

print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIOLS_empirical_theoretical_acf.png
print -depsc /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIOLS_empirical_theoretical_acf.eps

pause(2)

load spatialacf_AFNIMEMA.mat

figure
plot(0:acf_length,mean_acf)
hold on
plot(0:acf_length,exp(-[0:3:(acf_length*3)]/12),'g')
hold on
plot(0:acf_length,exp(-[0:3:(acf_length*3)].^2/(2*AFNI_std^2)),'r')
hold off
legend('Mean AFNI MEMA ACF','Exponential ACF',sprintf('Squared exponential ACF, \nFWHM = 8 mm'))
xlabel('Distance (mm)')
ylabel('Correlation')
title(sprintf('Empirical and theoretical spatial \nauto correlation functions for AFNI MEMA'),'FontSize',15)
axis([0 acf_length 0 1])
set(gca,'FontSize',15)
NumTicks = 8;
L = [0 7];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'0', '3', '6', '9','12', '15', '18', '21'})
NumTicks = 11;
L = [0 1];
set(gca,'YTick',linspace(L(1),L(2),NumTicks))
set(gca,'YTickLabel',{'0', '0.1', '0.2', '0.3','0.4', '0.5', '0.6', '0.7','0.8', '0.9', '1'})

print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIMEMA_empirical_theoretical_acf.png
print -depsc /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIMEMA_empirical_theoretical_acf.eps


