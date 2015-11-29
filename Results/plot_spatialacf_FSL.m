close all
clear all
clc

addpath('/home/andek/Research_projects/nifti_matlab')

% Pad with zeros in z direction
all_values = zeros(91,109,111,1000);

OLS = 1;
FLAME = 2;

analysis = OLS;

if analysis == OLS
    
    for file = 1:1000
        file
        
        difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/Results/FSL/AllMapsOLS/false_difference_Beijing_6mm_Event2_comparison' num2str(file) '.nii.gz']);
        difference = double(difference.img);
        
        % Pad with zeros in z direction
        all_values(:,:,11:end-10,file) = difference;
    end
    
elseif analysis == FLAME
    
    for file = 1:1000
        file
        
        difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/Results/FSL/AllMapsFLAME/false_difference_Beijing_6mm_Event2_comparison' num2str(file) '.nii.gz']);
        difference = double(difference.img);
        
        % Pad with zeros in z direction
        all_values(:,:,11:end-10,file) = difference;
    end
    
end

acf_length = 10;

[sy sx sz st] = size(all_values);

brain_mask = double(all_values(:,:,:,1) ~= 0);


% Estimate spatial ACFs

xacf = zeros(1000,acf_length+1);
yacf = zeros(1000,acf_length+1);
zacf = zeros(1000,acf_length+1);

for t = 1:1000
    
    test = all_values(:,:,:,t);
    
    for diff = 0:acf_length
        
        test_shiftedx = zeros(size(test));
        test_shiftedx(:,1:end-diff,:) = test(:,(1+diff):end,:);
        
        xacf(t,diff+1) = corr2(test(:),test_shiftedx(:));
        
        test_shiftedy = zeros(size(test));
        test_shiftedy(1:end-diff,:,:) = test((1+diff):end,:,:);
        
        yacf(t,diff+1) = corr2(test(:),test_shiftedy(:));
        
        
        test_shiftedz = zeros(size(test));
        test_shiftedz(:,:,1:end-diff) = test(:,:,(1+diff):end);
        
        zacf(t,diff+1) = corr2(test(:),test_shiftedz(:));
        
    end
    
end

mean_xacf = mean(xacf);
mean_yacf = mean(yacf);
mean_zacf = mean(zacf);

mean_acf = (mean_xacf + mean_yacf + mean_zacf)/3;

std_xacf = std(xacf);
std_yacf = std(yacf);
std_zacf = std(zacf);

std_acf = (std_xacf + std_yacf + std_zacf)/3;


% figure
% plot(0:acf_length,mean_acf)
% hold on
% plot(0:acf_length,mean_acf-std_acf,'r')
% hold on
% plot(0:acf_length,mean_acf+std_acf,'r')
% hold off
% legend('Mean FSL OLS ACF','Mean FSL OLS ACF +- std ACF')
% xlabel('Distance (voxels)')
% ylabel('Correlation')
% axis([0 acf_length 0 1])
% print -dpng 'FSLOLS_mean_acf_and_std_acf.png'




% figure
% plot(0:acf_length,mean_xacf)
% hold on
% plot(0:acf_length,mean_xacf-std_xacf,'r')
% hold on
% plot(0:acf_length,mean_xacf+std_xacf,'r')
% hold off
% legend('Mean x ACF','Mean x ACF +- std x ACF')
% xlabel('Distance (voxels)')
% ylabel('Correlation')
% axis([0 acf_length 0 1])
% print -dpng 'mean_xacf_and_std.png'
%
% figure
% plot(0:acf_length,mean_yacf)
% hold on
% plot(0:acf_length,mean_yacf-std_yacf,'r')
% hold on
% plot(0:acf_length,mean_yacf+std_yacf,'r')
% hold off
% legend('Mean y ACF','Mean y ACF +- std y ACF')
% xlabel('Distance (voxels)')
% ylabel('Correlation')
% axis([0 acf_length 0 1])
% print -dpng 'mean_yacf_and_std.png'
%
% figure
% plot(0:acf_length,mean_zacf)
% hold on
% plot(0:acf_length,mean_zacf-std_zacf,'r')
% hold on
% plot(0:acf_length,mean_zacf+std_zacf,'r')
% hold off
% legend('Mean z ACF','Mean z ACF +- std z ACF')
% xlabel('Distance (voxels)')
% ylabel('Correlation')
% axis([0 acf_length 0 1])
% print -dpng 'mean_zacf_and_std.png'

if analysis == OLS
    figure
    plot(0:acf_length,mean_acf)
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),'g')
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/50),'r')
    hold off
    legend('Mean FSL OLS ACF','Exponential ACF','Squared exponential ACF')
    xlabel('Distance (mm)')
    ylabel('Correlation')
    title(sprintf('Empirical and theoretical spatial \nauto correlation functions for FSL OLS'),'FontSize',15)
    axis([0 acf_length 0 1])
    set(gca,'FontSize',15)
    NumTicks = 11;
    L = [0 10];
    set(gca,'XTick',linspace(L(1),L(2),NumTicks))
    set(gca,'XTickLabel',{'0', '2', '4', '6','8', '10', '12', '14','16', '18', '20', '22'})
    L = [0 1];
    set(gca,'YTick',linspace(L(1),L(2),NumTicks))
    set(gca,'YTickLabel',{'0', '0.1', '0.2', '0.3','0.4', '0.5','0.6', '0.7','0.8', '0.9', '1'})
    %print -dpng 'FSLOLS_empirical_theoretical_acf.png'
    %print -depsc 'FSLOLS_empirical_theoretical_acf.eps'
    
    figure
    plot(0:acf_length,mean_acf,'k')
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),':k')
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/50),'-.k')
    hold off
    legend('Mean FSL OLS ACF','Exponential ACF','Squared exponential ACF')
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
    
    %print -dpng 'FSLOLS_empirical_theoretical_acf_bw.png'
    %print -deps 'FSLOLS_empirical_theoretical_acf_bw.eps'
    
    
elseif analysis == FLAME
    figure
    plot(0:acf_length,mean_acf)
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),'g')
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/50),'r')
    hold off
    legend('Mean FSL FLAME ACF','Exponential ACF','Squared exponential ACF')
    xlabel('Distance (mm)')
    ylabel('Correlation')
    title(sprintf('Empirical and theoretical spatial \nauto correlation functions for FSL FLAME'),'FontSize',15)
    axis([0 acf_length 0 1])
    set(gca,'FontSize',15)
    NumTicks = 11;
    L = [0 10];
    set(gca,'XTick',linspace(L(1),L(2),NumTicks))
    set(gca,'XTickLabel',{'0', '2', '4', '6','8', '10', '12', '14','16', '18', '20', '22'})
    %print -dpng 'FSLFLAME_empirical_theoretical_acf.png'
    %print -depsc 'FSLFLAME_empirical_theoretical_acf.eps'
    
    
    figure
    plot(0:acf_length,mean_acf,'k')
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)]/12),':k')
    hold on
    plot(0:acf_length,exp(-[0:2:(acf_length*2)].^2/50),'-.k')
    hold off
    legend('Mean FSL FLAME ACF','Exponential ACF','Squared exponential ACF')
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
    
    %print -dpng 'FSLFLAME_empirical_theoretical_acf_bw.png'
    %print -deps 'FSLFLAME_empirical_theoretical_acf_bw.eps'
    
end

