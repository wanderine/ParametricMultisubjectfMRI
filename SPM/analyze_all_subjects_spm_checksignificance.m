
clear all
clc
close all

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

study = 'Beijing'

clusterDefiningThreshold1 = 0.01;
clusterDefiningThreshold2 = 0.001;

cd D:\fcon1000\Beijing\
subjects = dir;

significantActivations = zeros(4,16,2,198);
    
analyses = 0;

for subject = 1:198

    analyses = analyses + 1;   
    subjectString = subjects(subject+2).name;
            
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% CLASSICAL STATISTICAL ANALYSIS
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
    for experiment = [1 2]
        for smoothing = 4:2:16
            
            subjectString
            
            smoothing
            experiment
                                    
            if experiment == 1
                % Boxcar 10
                experimentString = 'boxcar10';
            elseif experiment == 2
                % Boxcar 30
                experimentString = 'boxcar30';
            elseif experiment == 3
                % Event 1
                experimentString = 'event1';
            elseif experiment == 4
                % Event 2
                experimentString = 'event2';
            end
                                                
            % Get t-map
            V = spm_vol(['D:\fcon1000\' study '\' subjectString '\func\spmT_' experimentString '_s' num2str(smoothing) '.hdr']);
            [tmap,aa] = spm_read_vols(V);
            
            % Load SPM file
            clear SPM
            load(['D:\fcon1000\' study '\' subjectString '\func\SPM_' experimentString '_s' num2str(smoothing) '.mat']);
            
            % Calculate cluster extent threshold, for first cluster
            % defining threshold
            [k,Pc] = corrclusth(SPM,clusterDefiningThreshold1,0.05,1:100000);
            
            % Apply cluster defining threshold 1
            STAT = 'T';
            df   = [1 SPM.xX.erdf];
            u = spm_u(clusterDefiningThreshold1,df,STAT);
            indices = find(tmap>u);
            
            % Get size of largest cluster
            max_cluster = max_extent(tmap, indices)
                        
            if max_cluster >= k
                significantActivations(experiment,smoothing,1,subject) = 1;
                disp('Significant activation detected!')
            end
            
            
            
            
            
            % Calculate cluster extent threshold, for second cluster
            % defining threshold
            [k,Pc] = corrclusth(SPM,clusterDefiningThreshold2,0.05,1:100000);
            
            % Apply cluster defining threshold 2
            STAT = 'T';
            df   = [1 SPM.xX.erdf];
            u = spm_u(clusterDefiningThreshold2,df,STAT);
            indices = find(tmap>u);
            
            % Get size of largest cluster
            max_cluster = max_extent(tmap, indices)
                        
            if max_cluster >= k
                significantActivations(experiment,smoothing,2,subject) = 1;
                disp('Significant activation detected!')
            end                                                            
            
            
            
            
            FWE1 = sum(significantActivations(experiment,smoothing,1,:)) / analyses;
            disp(sprintf('Current FWE is %f for %i mm of smoothing, experiment %i and first cluster defining threshold \n',FWE1,smoothing,experiment))
            
            FWE2 = sum(significantActivations(experiment,smoothing,2,:)) / analyses;
            disp(sprintf('Current FWE is %f for %i mm of smoothing, experiment %i and second cluster defining threshold \n',FWE2,smoothing,experiment))
            
            
        end
    end   
end

