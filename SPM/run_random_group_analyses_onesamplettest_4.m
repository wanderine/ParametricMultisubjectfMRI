close all
clear all
clc

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

study = 'Cambridge'
design = 'event1';
groupSize = 20;
clusterDefiningThreshold = 0.001;

significantDifferences = zeros(7,1);

smoothnessEstimates = zeros(7,1000,3);

clusterSizes = zeros(1000,1);

errors = zeros(7,1);

smoothingLevels = 4:2:16;

for smoothing = 4:4       
    
    % Do 1000 random group comparisons for each smoothing
    for comparison = 1:1000
        
        disp(sprintf('Doing comparison %i ! \n',comparison))
        
        spm('Defaults','fMRI');
        spm_jobman('initcfg');
        clear jobs
        
        spm_file = ['D:\fcon1000\tempgroup\classical4\SPM.mat'];
        if exist(spm_file,'file')==2
            %system(['rm' spm_file]); % Linux
            delete(spm_file)
        end
        
        % Read a random permutation from file
        fileID = fopen(['C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\' study '_permutations\permutation' num2str(comparison) '.txt']);
        C = textscan(fileID,'%s');
        fclose(fileID);
        
        data_path = ['D:\fcon1000\tempgroup\'];
        jobs{1}.util{1}.cdir.directory = cellstr(data_path);
        jobs{1}.util{1}.md.basedir = cellstr(data_path);
        jobs{1}.util{1}.md.name = 'classical4';
        
        % Setup group 1
        group1 = {};
        for s = 1:groupSize
            subjectString = C{1}(s);
            subjectString = subjectString{1};
            group1{s} = ['D:\fcon1000\' study '\' subjectString '\func\con_' design '_s' num2str(smoothingLevels(smoothing)) '.img,1'];
        end                
        
        % Setup statistical analysis
        
        jobs{2}.stats{1}.factorial_design.dir = {'D:\fcon1000\tempgroup\classical4'};
        jobs{2}.stats{1}.factorial_design.des.t1.scans = group1;
        jobs{2}.stats{1}.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
        jobs{2}.stats{1}.factorial_design.masking.tm.tm_none = 1;
        jobs{2}.stats{1}.factorial_design.masking.im = 1;
        jobs{2}.stats{1}.factorial_design.masking.em = {''};
        jobs{2}.stats{1}.factorial_design.globalc.g_omit = 1;
        jobs{2}.stats{1}.factorial_design.globalm.gmsca.gmsca_no = 1;
        jobs{2}.stats{1}.factorial_design.globalm.glonorm = 1;
        
        % Estimate
        jobs{2}.stats{2}.fmri_est.spmmat = {'D:\fcon1000\tempgroup\classical4\SPM.mat'};
        jobs{2}.stats{2}.fmri_est.method.classical = 1;
        
        % Setup contrast
        jobs{2}.stats{3}.con.spmmat = {'D:\fcon1000\tempgroup\classical4\SPM.mat'};
        jobs{2}.stats{3}.con.consess{1}.tcon = struct('name','group 1 > 0','convec', 1,'sessrep','none');
        
        % Look at results
        %jobs{2}.stats{4}.results.spmmat = {'D:\fcon1000\tempgroup\classical4\SPM.mat'};
        %jobs{2}.stats{4}.results.conspec.contrasts = Inf;
        %jobs{2}.stats{4}.results.conspec.threshdesc = 'none';
        %jobs{2}.stats{4}.results.conspec.thresh = clusterDefiningThreshold; % uncorrected voxel threshold
        %jobs{2}.stats{4}.results.conspec.extent = 0;
        %jobs{2}.stats{4}.results.print = false;
        
        try
            spm_jobman('run',jobs);
            
            % Get t-map
            V = spm_vol('D:\fcon1000\tempgroup\classical4\spmT_0001.hdr');
            [tmap,aa] = spm_read_vols(V);
            
            cd classical4
            load SPM.mat
            cd ..
            
            % Calculate cluster extent threshold
            [k,Pc] = corrclusth(SPM,clusterDefiningThreshold,0.05,1:100000);
            
            % Apply cluster defining threshold
            STAT = 'T';
            df   = [1 SPM.xX.erdf];
            u = spm_u(clusterDefiningThreshold,df,STAT);
            indices = find(tmap>u);
            
            % Get size of largest cluster
            max_cluster = max_extent(tmap, indices)
            
            clusterSizes(comparison) = max_cluster;
            
            if max_cluster >= k
                significantDifferences(smoothing) = significantDifferences(smoothing) + 1;
                disp('Significant group activity detected!')
            end
            
            FWE = significantDifferences(smoothing) / comparison;
            disp(sprintf('Current FWE is %f for %i mm of smoothing \n',FWE,smoothingLevels(smoothing)))
            
            xsmoothness = SPM.xVol.FWHM(1) * abs(SPM.xVol.M(1,1));
            ysmoothness = SPM.xVol.FWHM(2) * abs(SPM.xVol.M(2,2));
            zsmoothness = SPM.xVol.FWHM(3) * abs(SPM.xVol.M(3,3));
            smoothnessEstimates(smoothing,comparison,:) = [xsmoothness ysmoothness zsmoothness]; 
            
        catch            
            disp('Error detected!')
            errors(smoothing) = errors(smoothing) + 1;
            
            FWE = significantDifferences(smoothing) / comparison;
            disp(sprintf('Current FWE is %f for %i mm of smoothing \n',FWE,smoothingLevels(smoothing)))
        end
        
    end
    
end
