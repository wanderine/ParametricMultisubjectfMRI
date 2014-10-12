close all
clear all
clc

design = 'boxcar30';
smoothing = 4;

% Do 1000 random group comparisons
for comparison = 1:1
    
    spm('Defaults','fMRI');    
    spm_jobman('initcfg');
    
    % Read a random permutation from file
    fileID = fopen(['C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\Cambridge_permutations\permutation' num2str(comparison) '.txt']);
    C = textscan(fileID,'%s');
    fclose(fileID);
    
    clear jobs
    data_path = ['D:\fcon1000\tempgroup\'];
    jobs{1}.util{1}.cdir.directory = cellstr(data_path);
    jobs{1}.util{1}.md.basedir = cellstr(data_path);
    jobs{1}.util{1}.md.name = 'classical';
    
    % Setup group 1
    group1 = {};
    for s = 1:20
        subjectString = C{1}(s);
        subjectString = subjectString{1};
        a = ['D:\fcon1000\Cambridge\' subjectString '\func\con_' design '_s' num2str(smoothing) '.img,1'];
        group1{s} = ['D:\fcon1000\Cambridge\' subjectString '\func\con_' design '_s' num2str(smoothing) '.img,1'];        
    end
        
    % Setup group 2
    group2 = {};
    for s = 1:20
        subjectString = C{1}(s+20);
        subjectString = subjectString{1};
        group2{s} = ['D:\fcon1000\Cambridge\' subjectString '\func\con_' design '_s' num2str(smoothing) '.img,1'];        
    end
    
    %{'D:\fcon1000\Cambridge\sub00156\func\con_boxcar10_s10.img,1'}
    
    % Setup statistical analysis
    jobs{2}.stats{1}.factorial_design.dir = {'D:\fcon1000\tempgroup\'};    
    jobs{2}.stats{1}.factorial_design.des.t2.scans1 = group1;
    jobs{2}.stats{1}.factorial_design.des.t2.scans2 = group2;
    jobs{2}.stats{1}.factorial_design.des.t2.dept = 0;
    jobs{2}.stats{1}.factorial_design.des.t2.variance = 1;
    jobs{2}.stats{1}.factorial_design.des.t2.gmsca = 0;
    jobs{2}.stats{1}.factorial_design.des.t2.ancova = 0;
    jobs{2}.stats{1}.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
    jobs{2}.stats{1}.factorial_design.masking.tm.tm_none = 1;
    jobs{2}.stats{1}.factorial_design.masking.im = 1;
    jobs{2}.stats{1}.factorial_design.masking.em = {''};
    jobs{2}.stats{1}.factorial_design.globalc.g_omit = 1;
    jobs{2}.stats{1}.factorial_design.globalm.gmsca.gmsca_no = 1;
    jobs{2}.stats{1}.factorial_design.globalm.glonorm = 1;
    
    % Estimate
    jobs{2}.stats{2}.fmri_est.spmmat = {'D:\fcon1000\tempgroup\classical\SPM.mat'};
    jobs{2}.stats{2}.fmri_est.method.Classical = 1;
    
    % Setup contrast
    jobs{2}.stats{3}.con.spmmat = {'D:\fcon1000\tempgroup\classical\SPM.mat'};
    jobs{2}.stats{3}.con.consess{1}.tcon = struct('name','group 1 > group 2','convec', [1 -1],'sessrep','none');
    
    % Look at results    
    jobs{2}.stats{4}.results.spmmat = {'D:\fcon1000\tempgroup\classical\SPM.mat'};
    jobs{2}.stats{4}.results.conspec.contrasts = Inf;
    jobs{2}.stats{4}.results.conspec.threshdesc = 'none';
    jobs{2}.stats{4}.results.conspec.thresh = 0.3; % uncorrected voxel threshold
    jobs{2}.stats{4}.results.conspec.extent = 0;
    
    spm_jobman('run',jobs);
    
end


