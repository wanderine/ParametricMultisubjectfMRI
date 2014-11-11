
clear all
clc
close all

voxel_size = 2;

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

% Cambridge
%TR = 3; 
%TRs = 119;
%study = 'Cambridge';
%cd D:\fcon1000\Cambridge\
%load randomEventsCambridge.mat

% Beijing
TR = 2;
TRs = 225;
study = 'Beijing';
cd D:\fcon1000\Beijing\
load randomEventsBeijing.mat

preprocessing = 0;

subjects = dir;

for subject = 101:150
    
    if ispc
        subjectString = subjects(subject+2).name
        addpath('D:\spm8')
        data_path = ['D:\fcon1000\' study '\' subjectString '\'];
    end
    
    %--------------------------------------------------------------------------
    %% Initialise SPM defaults
    %--------------------------------------------------------------------------
    spm('Defaults','fMRI');    
    spm_jobman('initcfg');
    
    %--------------------------------------------------------------------------
    %% WORKING DIRECTORY (useful for .ps only)
    %--------------------------------------------------------------------------
    clear jobs
    job = 1;
    jobs{job}.util{1}.cdir.directory = cellstr(data_path);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % SPATIAL PREPROCESSING
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %--------------------------------------------------------------------------
    %% REALIGN (motion correction)
    %--------------------------------------------------------------------------
    
    % Gives rbold.nii    
    job = job + 1;
    filename = [data_path 'func\rest.nii'];
    jobs{job}.spatial{1}.realign{1}.estwrite.data{1} = cellstr(filename);
        
    %--------------------------------------------------------------------------
    %% COREGISTRATION, fMRI and T1
    %--------------------------------------------------------------------------
    
    job = job + 1;
    filename = [data_path 'func/meanrest.nii'];
    jobs{job}.spatial{1}.coreg{1}.estimate.ref = {[filename ',1']};
    filename = [data_path 'anat/mprage_anonymized.nii'];
    jobs{job}.spatial{1}.coreg{1}.estimate.source = {[filename ',1']};
    
    %--------------------------------------------------------------------------
    %% SEGMENT
    %--------------------------------------------------------------------------
    
    job = job + 1;
    filename = [data_path 'anat/mprage_anonymized.nii'];
    jobs{job}.spatial{1}.preproc.data = {[filename ',1']};
    
    %--------------------------------------------------------------------------
    %% NORMALIZE (using transformation from segment)
    %--------------------------------------------------------------------------
    
    job = job + 1;
    matname = [data_path 'anat/mprage_anonymized_seg_sn.mat'];
    jobs{job}.spatial{1}.normalise{1}.write.subj.matname  = cellstr(matname);
    filename = [data_path 'func/rrest.nii'];
    jobs{job}.spatial{1}.normalise{1}.write.subj.resample = cellstr(filename);
    jobs{job}.spatial{1}.normalise{1}.write.roptions.vox  = [voxel_size voxel_size voxel_size];
    
    jobs{job}.spatial{1}.normalise{2}.write.subj.matname  = cellstr(matname);
    filename = [data_path 'anat/mmprage_anonymized.nii'];
    jobs{job}.spatial{1}.normalise{2}.write.subj.resample = cellstr(filename)
    jobs{job}.spatial{1}.normalise{2}.write.roptions.vox  = [1 1 1];
    
    %--------------------------------------------------------------------------
    %% SMOOTHING
    %--------------------------------------------------------------------------
        
    for smoothing = 4:2:16
        job = job + 1;        
        filename = [data_path 'func\wrrest.nii'];
        jobs{job}.spatial{1}.smooth.data = cellstr(filename);
        jobs{job}.spatial{1}.smooth.prefix = ['s' num2str(smoothing)];
        jobs{job}.spatial{1}.smooth.fwhm = [smoothing smoothing smoothing];        
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% RUN
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    if preprocessing == 1
        spm_jobman('run',jobs);
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% CLASSICAL STATISTICAL ANALYSIS
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    for experiment = [1 2 3 4]
        for smoothing = 4:2:16
            
            subjectString
            
            smoothing
            experiment
            
            spm_file = ['D:\fcon1000\temp\classical3\SPM.mat'];
            if exist(spm_file,'file')==2
                %system(['rm' spm_file]); % Linux
                delete(spm_file)
            end
            
            clear jobs
            jobs{1}.util{1}.cdir.directory = cellstr(data_path);
            jobs{1}.util{1}.md.basedir = cellstr(data_path);
            jobs{1}.util{1}.md.name = 'classical3';
            
            %--------------------------------------------------------------------------
            %% MODEL SPECIFICATION AND ESTIMATION
            %--------------------------------------------------------------------------
            data_path = ['D:\fcon1000\temp\classical3\'];
            filename = data_path;
            jobs{2}.stats{1}.fmri_spec.dir = cellstr(filename);
            jobs{2}.stats{1}.fmri_spec.timing.units = 'secs';
            jobs{2}.stats{1}.fmri_spec.timing.RT = TR;
            
            scans = {};
            for t = 1:TRs
                scans{t} = ['D:\fcon1000\' study '\' subjectString '\func\s' num2str(smoothing) 'wrrest.nii,' num2str(t)];
            end
            
            jobs{2}.stats{1}.fmri_spec.sess.scans = scans;
            
            jobs{2}.stats{1}.fmri_spec.sess.cond(1).name = 'task1';
            
            if experiment == 1
                % Boxcar 10
                experimentString = 'boxcar10';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = [10:20:(TRs*TR)];
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 10;
            elseif experiment == 2
                % Boxcar 30
                experimentString = 'boxcar30';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = [30:60:(TRs*TR)];
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 30;
            elseif experiment == 3
                % Event 1
                experimentString = 'event1';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = 8:8:(TRs*TR);
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = 2;
            elseif experiment == 4
                % Event 2
                experimentString = 'event2';
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).onset = randomOnsets;
                jobs{2}.stats{1}.fmri_spec.sess.cond(1).duration = randomDurations;                
            end
            
            % Motion regressors
            jobs{2}.stats{1}.fmri_spec.sess.multi_reg = {['D:\fcon1000\' study '\' subjectString '\func\rp_rest.txt']};
            
            % Temporal derivatives
            jobs{2}.stats{1}.fmri_spec.bases.hrf.derivs = [1 0];
            
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
            
            % Move contrast volume to correct folder
            movefile([data_path 'con_0001.hdr'],['D:\fcon1000\' study '\' subjectString '\func\con_' experimentString '_s' num2str(smoothing) '.hdr']);
            movefile([data_path 'con_0001.img'],['D:\fcon1000\' study '\' subjectString '\func\con_' experimentString '_s' num2str(smoothing) '.img']);

            % Move t-volume to correct folder    
            movefile([data_path 'spmT_0001.hdr'],['D:\fcon1000\' study '\' subjectString '\func\spmT_' experimentString '_s' num2str(smoothing) '.hdr']);
            movefile([data_path 'spmT_0001.img'],['D:\fcon1000\' study '\' subjectString '\func\spmT_' experimentString '_s' num2str(smoothing) '.img']);

            % Move SPM.mat to correct folder    
            movefile([data_path 'SPM.mat'],['D:\fcon1000\' study '\' subjectString '\func\SPM_' experimentString '_s' num2str(smoothing) '.mat']);
            
        end
    end   
end

