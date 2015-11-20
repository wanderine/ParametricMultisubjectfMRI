close all
clear all
clc

sd = sqrt(0.05*0.95/1000)*1.96*100;

results_spm_Cambridge_voxel
results_fsl_Cambridge_voxel
results_afni_Cambridge_voxel
results_perm_Cambridge_voxel

results_spm_Beijing_voxel
results_fsl_Beijing_voxel
results_afni_Beijing_voxel
results_perm_Beijing_voxel

study = 2;

if study == 2
    studyName = 'Beijing'
elseif study == 1
    studyName = 'Cambridge'
end


% Two sample t-tests
analysisType = 1;

groupSize = 2;
groupSize_ = 20;

% results(smoothing, paradigm, analysis type, group size, study)

figure

plot([squeeze(results_spm_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'b','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'g','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'r','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'c','LineWidth',3)
hold on

plot(5*ones(24,1),'k','LineWidth',3)
hold on
plot([(5+sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
hold on
plot([(5-sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
hold on

plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'c','LineWidth',3)
hold on


plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(1,1:4,analysisType,groupSize,study))'*1 ],'b','LineWidth',3)
hold on
plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(2,1:4,analysisType,groupSize,study))'*1 ],'g','LineWidth',3)
hold on
plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(3,1:4,analysisType,groupSize,study))'*1 ],'r','LineWidth',3)
hold on
plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(4,1:4,analysisType,groupSize,study))'*1 ],'c','LineWidth',3)
hold off

title([studyName ' data, two sample t-test, ' num2str(groupSize_*2)  ' subjects, voxel inference'],'FontSize',15)

xlabel('SPM      FLAME1      FSL OLS      3dttest++      3dMEMA      Perm','FontSize',15)
ylabel('Familywise error rate (%)','FontSize',15)
legend('4 mm','6 mm','8 mm','10 mm','Expected','95% CI')
ylim([0 60])
xlim([0.9 24.1])
set(gca,'FontSize',15)
NumTicks = 24;
L = [1 24];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2'})

if groupSize == 1
    if study == 2
        print -dpng 'fwe_Beijing_twosample_voxel_groupsize10.png'
    elseif study == 1
        print -dpng 'fwe_Cambridge_twosample_voxel_groupsize10.png'
    end
elseif groupSize == 2
    if study == 2
        print -dpng 'fwe_Beijing_twosample_voxel_groupsize20.png'
    elseif study == 1
        print -dpng 'fwe_Cambridge_twosample_voxel_groupsize20.png'
    end
end







% One sample t-tests
analysisType = 2;

groupSize = groupSize*2;
groupSize_ = groupSize_*2;

% results(smoothing, paradigm, analysis type, group size, study)

figure

plot([squeeze(results_spm_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'b','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'g','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'r','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(20,1)],'c','LineWidth',3)
hold on

plot(5*ones(24,1),'k','LineWidth',3)
hold on
plot([(5+sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
hold on
plot([(5-sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
hold on

plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'c','LineWidth',3)
hold on


plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(1,1:4,analysisType,groupSize,study))'*1 ],'b','LineWidth',3)
hold on
plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(2,1:4,analysisType,groupSize,study))'*1 ],'g','LineWidth',3)
hold on
plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(3,1:4,analysisType,groupSize,study))'*1 ],'r','LineWidth',3)
hold on
plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(4,1:4,analysisType,groupSize,study))'*1 ],'c','LineWidth',3)
hold off

title([studyName ' data, one sample t-test, ' num2str(groupSize_) ' subjects, voxel inference'],'FontSize',15)

xlabel('SPM      FLAME1      FSL OLS      3dttest++      3dMEMA      Perm','FontSize',15)
ylabel('Familywise error rate (%)','FontSize',15)
legend('4 mm','6 mm','8 mm','10 mm','Expected','95% CI')
ylim([0 60])
xlim([0.9 24.1])
set(gca,'FontSize',15)
NumTicks = 24;
L = [1 24];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2'})

if groupSize == 2
    if study == 2
        print -dpng 'fwe_Beijing_onesample_voxel_groupsize20.png'
    elseif study == 1
        print -dpng 'fwe_Cambridge_onesample_voxel_groupsize20.png'
    end
elseif groupSize == 4
    if study == 2
        print -dpng 'fwe_Beijing_onesample_voxel_groupsize40.png'
    elseif study == 1
        print -dpng 'fwe_Cambridge_onesample_voxel_groupsize40.png'
    end
end


