close all
clear all
clc

addpath('/home/andek/Research_projects/nifti_matlab')

% Pad with zeros in z direction
all_values = zeros(54,64,70,1000);

OLS = 1;
MEMA = 2;

analysis = MEMA;

if analysis == OLS
       
    for file = 1:1000
        file
        
        % MEMA results
        difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/FalseClusters/DifferenceMapsOLS/Beijing_6mm_randomEvent_REML_' num2str(file) '.nii']);
        difference = double(difference.img);
        
        % Get z-score for Group 1 - Group 2, for OLS sub-brick 2 represents
        % the z-score for the group difference
        difference = squeeze(difference(:,:,:,1,2));
        
        % Pad with zeros in z direction
        all_values(:,:,11:end-10,file) = difference;
    end
    
elseif analysis == MEMA
        
    for file = 1:1000
        file
        
        % MEMA results
        difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/FalseClusters/DifferenceMapsMEMA/Beijing_6mm_randomEvent_REML_' num2str(file) '.nii']);
        difference = double(difference.img);
        
        % Get t-score for Group 1 - Group 2, for MEMA sub-brick 6 represents
        % the t-score for the group difference
        difference = squeeze(difference(:,:,:,1,6));
        
        % Pad with zeros in z direction
        all_values(:,:,11:end-10,file) = difference;
    end
    
end

acf_length = 7;

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
% legend('Mean AFNI OLS ACF','Mean AFNI OLS ACF +- std ACF')
% xlabel('Distance (voxels)')
% ylabel('Correlation')
% axis([0 acf_length 0 1])
% print -dpng 'AFNIOLS_mean_acf_and_std_acf.png'




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
    plot(0:acf_length,exp(-[0:3:(acf_length*3)]/12),'g')
    hold on
    plot(0:acf_length,exp(-[0:3:(acf_length*3)].^2/50),'r')
    hold off
    legend('Mean AFNI OLS ACF','Exponential ACF','Squared exponential ACF')
    xlabel('Distance (mm)')
    ylabel('Correlation')
    title(sprintf('Empirical and theoretical spatial \nauto correlation functions for AFNI OLS'),'FontSize',15)
    axis([0 acf_length 0 1])
    set(gca,'FontSize',15)
    NumTicks = 8;
    L = [0 7];
    set(gca,'XTick',linspace(L(1),L(2),NumTicks))
    set(gca,'XTickLabel',{'0', '3', '6', '9','12', '15', '18', '21'})
    print -dpng 'AFNIOLS_empirical_theoretical_acf.png'
elseif analysis == MEMA
    figure
    plot(0:acf_length,mean_acf)
    hold on
    plot(0:acf_length,exp(-[0:3:(acf_length*3)]/12),'g')
    hold on
    plot(0:acf_length,exp(-[0:3:(acf_length*3)].^2/50),'r')
    hold off
    legend('Mean AFNI MEMA ACF','Exponential ACF','Squared exponential ACF')
    xlabel('Distance (mm)')
    ylabel('Correlation')
    title(sprintf('Empirical and theoretical spatial \nauto correlation functions for AFNI MEMA'),'FontSize',15)
    axis([0 acf_length 0 1])
    set(gca,'FontSize',15)
    NumTicks = 8;
    L = [0 7];
    set(gca,'XTick',linspace(L(1),L(2),NumTicks))
    set(gca,'XTickLabel',{'0', '3', '6', '9','12', '15', '18', '21'})    
    print -dpng 'AFNIMEMA_empirical_theoretical_acf.png'
end







