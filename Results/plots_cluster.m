close all
clear all
clc

sd = sqrt(0.05*0.95/1000)*1.96*100;

results_spm_Cambridge
results_fsl_Cambridge
results_afni_Cambridge
results_perm_Cambridge

results_spm_Beijing
results_fsl_Beijing
results_afni_Beijing
results_perm_Beijing

for study = 1:2
    
    if study == 2
        studyName = 'Beijing'
    elseif study == 1
        studyName = 'Cambridge'
    end    
    
    for groupSize = 1:2
        
        groupSize_ = groupSize*10;
                
        % Two sample t-tests
        analysisType = 1;        
        
        % results(cluster defining threshold, smoothing, paradigm, analysis type, group size, study)
        
        % Loop over cluster defining thresholds (p = 0.01, p = 0.001)
        for cdt = 1:2
            
            figure
            
            plot([squeeze(results_spm_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'b','LineWidth',3)
            hold on
            plot([squeeze(results_spm_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'g','LineWidth',3)
            hold on
            plot([squeeze(results_spm_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'r','LineWidth',3)
            hold on
            plot([squeeze(results_spm_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'c','LineWidth',3)
            hold on
            
            plot(5*ones(24,1),'k','LineWidth',3)
            hold on
            plot([(5+sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
            hold on
            plot([(5-sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
            hold on
            
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'c','LineWidth',3)
            hold on
            
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'c','LineWidth',3)
            hold on
            
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'c','LineWidth',3)
            hold on
            
            
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'c','LineWidth',3)
            hold on
            
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ],'c','LineWidth',3)
            hold off
            
            if cdt == 1
                title([studyName ' data, two sample t-test, ' num2str(groupSize_*2)  ' subjects, CDT p = 0.01'],'FontSize',15)
            elseif cdt == 2
                title([studyName ' data, two sample t-test, ' num2str(groupSize_*2)  ' subjects, CDT p = 0.001'],'FontSize',15)
            end
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
                if study == 2  && cdt == 1
                    print -dpng 'fwe_Beijing_twosample_cdt23_groupsize10.png'
                elseif study == 2  && cdt == 2
                    print -dpng 'fwe_Beijing_twosample_cdt31_groupsize10.png'
                elseif study == 1 && cdt == 1
                    print -dpng 'fwe_Cambridge_twosample_cdt23_groupsize10.png'
                elseif study == 1 && cdt == 2
                    print -dpng 'fwe_Cambridge_twosample_cdt31_groupsize10.png'
                end
            elseif groupSize == 2
                if study == 2  && cdt == 1
                    print -dpng 'fwe_Beijing_twosample_cdt23_groupsize20.png'
                elseif study == 2  && cdt == 2
                    print -dpng 'fwe_Beijing_twosample_cdt31_groupsize20.png'
                elseif study == 1 && cdt == 1
                    print -dpng 'fwe_Cambridge_twosample_cdt23_groupsize20.png'
                elseif study == 1 && cdt == 2
                    print -dpng 'fwe_Cambridge_twosample_cdt31_groupsize20.png'
                end
            end
            
        end
        
        
        
        
        
        
        
        % One sample t-tests
        analysisType = 2;
        
        groupSize = groupSize*2;
        groupSize_ = groupSize_*2;
        
        % results(cluster defining threshold, smoothing, paradigm, analysis type, group size, study)
        
        % Loop over cluster defining thresholds (p = 0.01, p = 0.001)
        for cdt = 1:2
            
            figure
            
            plot([squeeze(results_spm_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'b','LineWidth',3)
            hold on
            plot([squeeze(results_spm_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'g','LineWidth',3)
            hold on
            plot([squeeze(results_spm_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'r','LineWidth',3)
            hold on
            plot([squeeze(results_spm_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(20,1)],'c','LineWidth',3)
            hold on
            
            plot(5*ones(24,1),'k','LineWidth',3)
            hold on
            plot([(5+sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
            hold on
            plot([(5-sd)*ones(24,1)],'-.k','Color',[0.5 0.5 0.5],'LineWidth',2)
            hold on
            
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(4,1) ; squeeze(results_fsl_flame1(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(16,1)],'c','LineWidth',3)
            hold on
            
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(8,1) ; squeeze(results_fsl_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(12,1)],'c','LineWidth',3)
            hold on
            
            
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(12,1) ; squeeze(results_afni_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(8,1)],'c','LineWidth',3)
            hold on
            
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,1,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,2,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,3,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(16,1) ; squeeze(results_afni_mema(cdt,4,1:4,analysisType,groupSize,study))*1 ; NaN*zeros(4,1)],'c','LineWidth',3)
            hold on
            
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,1,1:4,analysisType,groupSize,study))*1 ],'b','LineWidth',3)
            hold on
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,2,1:4,analysisType,groupSize,study))*1 ],'g','LineWidth',3)
            hold on
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,3,1:4,analysisType,groupSize,study))*1 ],'r','LineWidth',3)
            hold on
            plot([NaN*zeros(20,1) ; squeeze(results_perm_ols(cdt,4,1:4,analysisType,groupSize,study))*1 ],'c','LineWidth',3)
            hold off
            
            if cdt == 1
                title([studyName ' data, one sample t-test, ' num2str(groupSize_) ' subjects, CDT p = 0.01'],'FontSize',15)
            elseif cdt == 2
                title([studyName ' data, one sample t-test, ' num2str(groupSize_) ' subjects, CDT p = 0.001'],'FontSize',15)
            end
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
                if study == 2  && cdt == 1
                    print -dpng 'fwe_Beijing_onesample_cdt23_groupsize20.png'
                elseif study == 2  && cdt == 2
                    print -dpng 'fwe_Beijing_onesample_cdt31_groupsize20.png'
                elseif study == 1 && cdt == 1
                    print -dpng 'fwe_Cambridge_onesample_cdt23_groupsize20.png'
                elseif study == 1 && cdt == 2
                    print -dpng 'fwe_Cambridge_onesample_cdt31_groupsize20.png'
                end
            elseif groupSize == 4
                if study == 2  && cdt == 1
                    print -dpng 'fwe_Beijing_onesample_cdt23_groupsize40.png'
                elseif study == 2  && cdt == 2
                    print -dpng 'fwe_Beijing_onesample_cdt31_groupsize40.png'
                elseif study == 1 && cdt == 1
                    print -dpng 'fwe_Cambridge_onesample_cdt23_groupsize40.png'
                elseif study == 1 && cdt == 2
                    print -dpng 'fwe_Cambridge_onesample_cdt31_groupsize40.png'
                end
            end
            
        end
        
    end
end

