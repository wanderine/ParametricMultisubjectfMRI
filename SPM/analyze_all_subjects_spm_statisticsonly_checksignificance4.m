
clear all
clc
close all

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

voxel_size = 2;
TR = 3;
TRs = 119;

clusterDefiningThreshold1 = 0.01;
clusterDefiningThreshold2 = 0.001;

cd D:\fcon1000\Cambridge\

subjects = dir;

significantActivations = zeros(4,16,2,198);
    
analyses = 0;

for subject = 1:length(subjects)

    analyses = analyses + 1;
    
    if ispc
        subjectString = subjects(subject+2).name
        %subjectString = 'sub94304';
        addpath('D:\spm8')
        data_path = ['D:\fcon1000\Cambridge\' subjectString '\'];
    end
    
    %--------------------------------------------------------------------------
    %% Initialise SPM defaults
    %--------------------------------------------------------------------------
    spm('Defaults','fMRI');    
    spm_jobman('initcfg');
        
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% CLASSICAL STATISTICAL ANALYSIS
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
    for experiment = [1 4]
        for smoothing = 10
            
            subjectString
            
            smoothing
            experiment
            
            spm_file = ['D:\fcon1000\temp\classical4\SPM.mat'];
            if exist(spm_file,'file')==2
                %system(['rm' spm_file]); % Linux
                delete(spm_file)
            end
            
            clear jobs
            jobs{1}.util{1}.cdir.directory = cellstr(data_path);
            jobs{1}.util{1}.md.basedir = cellstr(data_path);
            jobs{1}.util{1}.md.name = 'classical4';
            
            %--------------------------------------------------------------------------
            %% MODEL SPECIFICATION AND ESTIMATION
            %--------------------------------------------------------------------------
            data_path = ['D:\fcon1000\temp\classical4\'];
            filename = data_path;
            jobs{2}.stats{1}.fmri_spec.dir = cellstr(filename);
            jobs{2}.stats{1}.fmri_spec.timing.units = 'secs';
            jobs{2}.stats{1}.fmri_spec.timing.RT = TR;
            
            scans = {};
            for t = 1:TRs
                scans{t} = ['D:\fcon1000\Cambridge\' subjectString '\func\s' num2str(smoothing) 'wrrest.nii,' num2str(t)];
            end
            
            jobs{2}.stats{1}.fmri_spec.sess.scans = scans;
            
            jobs{2}.stats{1}.fmri_spec.sess.cond(1).name = 'task1';
            
            if experiment == 1
                % Boxcar 10
                experimentString = 'boxcar10';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = [10:20:(TRs*TR)];
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 10;
            elseif experiment == 2
                % Boxcar 15
                experimentString = 'boxcar15';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = [15:30:(TRs*TR)];
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 15;
            elseif experiment == 3
                % Boxcar 20
                experimentString = 'boxcar20';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = [20:40:(TRs*TR)];
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 20;
            elseif experiment == 4
                % Boxcar 30
                experimentString = 'boxcar30';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = [30:60:(TRs*TR)];
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 30;
            end
            
            % Motion regressors
            jobs{2}.stats{1}.fmri_spec.sess.multi_reg = {['D:\fcon1000\Cambridge\' subjectString '\func\rp_rest.txt']};
            % Temporal derivative
            jobs{2}.stats{1}.fmri_spec.bases.hrf.derivs = [1 0];
            % Global scaling
            jobs{2}.stats{1}.fmri_spec.global = 'Scaling';
            
            filename = [data_path 'SPM.mat'];
            jobs{2}.stats{2}.fmri_est.spmmat = cellstr(filename);
            
            jobs{2}.stats{3}.con.spmmat = cellstr(filename);
            jobs{2}.stats{3}.con.consess{1}.tcon = struct('name','task1 > rest','convec', 1,'sessrep','none');
            
            %filename = [data_path 'SPM.mat'];
            %jobs{2}.stats{4}.results.spmmat = cellstr(filename);
            %jobs{2}.stats{4}.results.conspec.contrasts = Inf;
            %jobs{2}.stats{4}.results.conspec.threshdesc = 'none';
            %jobs{2}.stats{4}.results.conspec.thresh = 0.3; % uncorrected voxel threshold
            %jobs{2}.stats{4}.results.conspec.extent = 0;
            
            spm_jobman('run',jobs);
            
            
            
            % Get t-map
            V = spm_vol('D:\fcon1000\temp\classical4\spmT_0001.hdr');
            [tmap,aa] = spm_read_vols(V);
            
            load D:\fcon1000\temp\classical4\SPM.mat
            
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
                significantActivations(experiment,smoothing,1,subject) = significantActivations(experiment,smoothing,1,subject) + 1;
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
                significantActivations(experiment,smoothing,2,subject) = significantActivations(experiment,smoothing,2,subject) + 1;
                disp('Significant activation detected!')
            end                                                            
            
            
            
            
            FWE1 = sum(significantActivations(experiment,smoothing,1,:)) / analyses;
            disp(sprintf('Current FWE is %f for %i mm of smoothing, experiment %i and first cluster defining threshold \n',FWE1,smoothing,experiment))
            
            FWE2 = sum(significantActivations(experiment,smoothing,2,:)) / analyses;
            disp(sprintf('Current FWE is %f for %i mm of smoothing, experiment %i and second cluster defining threshold \n',FWE2,smoothing,experiment))
            
            
        end
    end   
end

