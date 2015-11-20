close all
clear all
clc

results_spm_Beijing_10voxelsextent
results_fsl_Beijing_10voxelsextent
results_afni_Beijing_3voxelsextent

study = 2;
studyName = 'Beijing'

% Two sample t-tests
analysisType = 1;

groupSize = 1;
groupSize_ = 10;

% results(smoothing, paradigm, analysis type, group size, study)

figure

plot([squeeze(results_spm_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'b','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'g','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'r','LineWidth',3)
hold on
plot([squeeze(results_spm_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(12,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(16,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(8,1)],'c','LineWidth',3)
hold on

plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(1,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'b','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(2,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'g','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(3,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'r','LineWidth',3)
hold on
plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(4,1:4,analysisType,groupSize,study))'*1 ; NaN*zeros(4,1)],'c','LineWidth',3)
hold on


plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(1,1:4,analysisType,groupSize,study))'*1 ],'b','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(2,1:4,analysisType,groupSize,study))'*1 ],'g','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(3,1:4,analysisType,groupSize,study))'*1 ],'r','LineWidth',3)
hold on
plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(4,1:4,analysisType,groupSize,study))'*1 ],'c','LineWidth',3)
hold on

title([studyName ' data, two sample t-test, ' num2str(groupSize_*2)  ' subjects, ad-hoc cluster inference'],'FontSize',15)

xlabel('SPM         FLAME1         FSL OLS         3dttest++         3dMEMA','FontSize',15)
ylabel('Familywise error rate (%)','FontSize',15)
legend('4 mm','6 mm','8 mm','10 mm')
ylim([0 100])
xlim([0.9 20.1])
set(gca,'FontSize',15)
NumTicks = 20;
L = [1 20];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2','B1', 'B2', 'E1', 'E2'})

print -dpng 'fwe_Beijing_twosample_10voxelsextent_groupsize10.png'




