close all
clear all
clc

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

design = 'boxcar30';
smoothing = 8;
groupSize = 20;
clusterDefiningThreshold = 0.01;

% Do 1000 random group comparisons
for comparison = 1:1
    
    spm('Defaults','fMRI');
    spm_jobman('initcfg');
    
    spm_file = ['D:\fcon1000\tempgroup\classical\SPM.mat'];
    if exist(spm_file,'file')==2
        %system(['rm' spm_file]); % Linux
        delete(spm_file)
    end
    
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
    for s = 1:groupSize
        subjectString = C{1}(s);
        subjectString = subjectString{1};
        a = ['D:\fcon1000\Cambridge\' subjectString '\func\con_' design '_s' num2str(smoothing) '.img,1'];
        group1{s} = ['D:\fcon1000\Cambridge\' subjectString '\func\con_' design '_s' num2str(smoothing) '.img,1'];
    end
    group1 = {};
    group1{1} = ['D:\fcon1000\Cambridge\sub00156\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{2} = ['D:\fcon1000\Cambridge\sub00294\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{3} = ['D:\fcon1000\Cambridge\sub01361\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{4} = ['D:\fcon1000\Cambridge\sub02591\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{5} = ['D:\fcon1000\Cambridge\sub04187\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{6} = ['D:\fcon1000\Cambridge\sub04270\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{7} = ['D:\fcon1000\Cambridge\sub04491\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{8} = ['D:\fcon1000\Cambridge\sub04665\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{9} = ['D:\fcon1000\Cambridge\sub05306\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group1{10} = ['D:\fcon1000\Cambridge\sub05453\func\con_' design '_s' num2str(smoothing) '.img,1'];
    
    % Setup group 2
    group2 = {};
    for s = 1:groupSize
        subjectString = C{1}(s+groupSize);
        subjectString = subjectString{1};
        group2{s} = ['D:\fcon1000\Cambridge\' subjectString '\func\con_' design '_s' num2str(smoothing) '.img,1'];
    end
    group2 = {};
    group2{1} = ['D:\fcon1000\Cambridge\sub06037\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{2} = ['D:\fcon1000\Cambridge\sub06272\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{3} = ['D:\fcon1000\Cambridge\sub07413\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{4} = ['D:\fcon1000\Cambridge\sub07798\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{5} = ['D:\fcon1000\Cambridge\sub07902\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{6} = ['D:\fcon1000\Cambridge\sub08204\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{7} = ['D:\fcon1000\Cambridge\sub08588\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{8} = ['D:\fcon1000\Cambridge\sub08723\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{9} = ['D:\fcon1000\Cambridge\sub08947\func\con_' design '_s' num2str(smoothing) '.img,1'];
    group2{10} = ['D:\fcon1000\Cambridge\sub09015\func\con_' design '_s' num2str(smoothing) '.img,1'];
    
    %{'D:\fcon1000\Cambridge\sub00156\func\con_boxcar10_s10.img,1'}
    
    % Setup statistical analysis
    jobs{2}.stats{1}.factorial_design.dir = {'D:\fcon1000\tempgroup\classical'};
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
    jobs{2}.stats{4}.results.conspec.thresh = clusterDefiningThreshold; % uncorrected voxel threshold
    jobs{2}.stats{4}.results.conspec.extent = 0;
        
    spm_jobman('run',jobs);
    
    % Get t-map
    V = spm_vol('spmT_0001.hdr');
    [tmap,aa] = spm_read_vols(V);
    
    % Calculate cluster extent threshold
    [k,Pc] = corrclusth(SPM,clusterDefiningThreshold,0.05,1:100000);
    
    % Apply cluster defining threshold
    indices = find(tmap>xSPM.u);
    % Get size of largest cluster
    max_cluster = max_extent(tmap, indices)
    
    if max_cluster >= k
        disp('Significant group difference detected!')
    end
end


