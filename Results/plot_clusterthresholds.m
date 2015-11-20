%close all
clear all
clc

% Load thresholds and convert to cubic millimeters
load SPM_clusterThresholds_1_1000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
SPM_clusterthresholds = 2*2*2*clusterThresholds(1:1000);
load FSLFLAME_clusterThresholds_1_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
FSL_clusterthresholds = 2*2*2*clusterThresholds(1:1000);
load AFNI_clusterThresholds_1_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
AFNI_clusterthresholds = 3*3*3*clusterThresholds(1:1000);
load PERM_clusterThresholds_1_1000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
PERM_clusterthresholds = 2*2*2*clusterThresholds(1:1000);

figure

plot(1:1000,[SPM_clusterthresholds],'r','LineWidth',1)
hold on
plot(1:1000,[FSL_clusterthresholds],'g','LineWidth',1)
hold on
plot(1:1000,[AFNI_clusterthresholds],'b','LineWidth',1)
hold on
plot(1:1000,[PERM_clusterthresholds],'k','LineWidth',1)
hold off

title(sprintf('Cluster extent thresholds for \nSPM, FSL FLAME, AFNI and a permutation test'),'FontSize',15)
xlabel('Group analysis','FontSize',15)
ylabel('Cluster extent (cubic millimeters)','FontSize',15)
legend('SPM','FSL','AFNI','Perm')
ylim([1000 23000])
xlim([1 1000])
set(gca,'FontSize',15)

NumTicks = 5;
L = [1 1000];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'1', '250', '500', '750', '1000'})

NumTicks = 4;
L = [5000 20000];
set(gca,'YTick',linspace(L(1),L(2),NumTicks))
set(gca,'YTickLabel',{'5000', '10000', '15000', '20000', '25000'})

print -dpng 'clusterthresholds_Beijing.png'









figure
bar(1:4,[mean(SPM_clusterthresholds) mean(FSL_clusterthresholds) mean(AFNI_clusterthresholds) mean(PERM_clusterthresholds)],0.3)
hold on
errorbar(1:4, [mean(SPM_clusterthresholds) mean(FSL_clusterthresholds) mean(AFNI_clusterthresholds) mean(PERM_clusterthresholds)], [std(SPM_clusterthresholds) std(FSL_clusterthresholds) std(AFNI_clusterthresholds) std(PERM_clusterthresholds)],'.' )
hold off

set(gca,'FontSize',15)
NumTicks = 4;
L = [1 4];
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
set(gca,'XTickLabel',{'SPM', 'FSL FLAME', 'AFNI','Permutation'})

title(sprintf('Cluster extent thresholds for \nSPM, FSL FLAME, AFNI and a permutation test'),'FontSize',15)
xlabel('','FontSize',15)
ylabel('Cluster extent (cubic millimeters)','FontSize',15)

print -dpng 'clusterthresholds_Beijing.png'


