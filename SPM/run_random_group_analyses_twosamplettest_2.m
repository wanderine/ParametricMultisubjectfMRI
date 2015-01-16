close all
clear all
clc

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

study = 'Beijing'
groupSize = 20;

clusterDefiningThreshold1 = 0.01;
clusterDefiningThreshold2 = 0.001;

significantDifferences = zeros(7,2,4);

smoothnessEstimates = zeros(7,1000,3,4);

clusterSizes = zeros(1000,2,4);

errors = zeros(7,4);

smoothingLevels = 4:2:16;

for d = 1:4
    
    if d == 1
        design = 'boxcar10';
    elseif d == 2
        design = 'boxcar30';
    elseif d == 3
        design = 'event1';
    elseif d == 4
        design = 'event2';
    end
    
    for smoothing = 2:2
        
        % Do 1000 random group comparisons for each smoothing
        for comparison = 1:1000
            
            disp(sprintf('Doing comparison %i ! \n',comparison))
            
            spm('Defaults','fMRI');
            spm_jobman('initcfg');
            clear jobs
            
            spm_file = ['D:\fcon1000\tempgroup\classical2\SPM.mat'];
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
            jobs{1}.util{1}.md.name = 'classical2';
            
            % Setup group 1
            group1 = {};
            for s = 1:groupSize
                subjectString = C{1}(s);
                subjectString = subjectString{1};
                group1{s} = ['D:\fcon1000\' study '\' subjectString '\func\con_' design '_s' num2str(smoothingLevels(smoothing)) '.img,1'];
            end
            
            % Setup group 2
            group2 = {};
            for s = 1:groupSize
                subjectString = C{1}(s+groupSize);
                subjectString = subjectString{1};
                group2{s} = ['D:\fcon1000\' study '\' subjectString '\func\con_' design '_s' num2str(smoothingLevels(smoothing)) '.img,1'];
            end
            
            % Setup statistical analysis
            jobs{2}.stats{1}.factorial_design.dir = {'D:\fcon1000\tempgroup\classical2'};
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
            jobs{2}.stats{2}.fmri_est.spmmat = {'D:\fcon1000\tempgroup\classical2\SPM.mat'};
            jobs{2}.stats{2}.fmri_est.method.classical = 1;
            
            % Setup contrast
            jobs{2}.stats{3}.con.spmmat = {'D:\fcon1000\tempgroup\classical2\SPM.mat'};
            jobs{2}.stats{3}.con.consess{1}.tcon = struct('name','group 1 > group 2','convec', [1 -1],'sessrep','none');
            
            % Look at results
            %jobs{2}.stats{4}.results.spmmat = {'D:\fcon1000\tempgroup\classical2\SPM.mat'};
            %jobs{2}.stats{4}.results.conspec.contrasts = Inf;
            %jobs{2}.stats{4}.results.conspec.threshdesc = 'none';
            %jobs{2}.stats{4}.results.conspec.thresh = clusterDefiningThreshold; % uncorrected voxel threshold
            %jobs{2}.stats{4}.results.conspec.extent = 0;
            %jobs{2}.stats{4}.results.print = false;
            
            try
                spm_jobman('run',jobs);
                
                % Get t-map
                V = spm_vol('D:\fcon1000\tempgroup\classical2\spmT_0001.hdr');
                [tmap,aa] = spm_read_vols(V);
                
                cd classical2
                load SPM.mat
                cd ..
                
                %-------------------
                
                % Calculate cluster extent threshold 1
                [k,Pc] = corrclusth(SPM,clusterDefiningThreshold1,0.05,1:100000);
                
                % Apply cluster defining threshold 1
                STAT = 'T';
                df   = [1 SPM.xX.erdf];
                u = spm_u(clusterDefiningThreshold1,df,STAT);
                indices = find(tmap>u);
                
                % Get size of largest cluster
                max_cluster = max_extent(tmap, indices)
                
                clusterSizes(comparison,1,d) = max_cluster;
                
                if max_cluster >= k
                    significantDifferences(smoothing,1,d) = significantDifferences(smoothing,1,d) + 1;
                    disp('Significant group difference detected!')
                end
                
                FWE1 = significantDifferences(smoothing,1,d) / comparison;
                disp(sprintf('Current FWE 1 is %f for %i mm of smoothing \n',FWE1,smoothingLevels(smoothing)))
                
                %------------
                
                % Calculate cluster extent threshold 2
                [k,Pc] = corrclusth(SPM,clusterDefiningThreshold2,0.05,1:100000);
                
                % Apply cluster defining threshold 2
                STAT = 'T';
                df   = [1 SPM.xX.erdf];
                u = spm_u(clusterDefiningThreshold2,df,STAT);
                indices = find(tmap>u);
                
                % Get size of largest cluster
                max_cluster = max_extent(tmap, indices)
                
                clusterSizes(comparison,2,d) = max_cluster;
                
                if max_cluster >= k
                    significantDifferences(smoothing,2,d) = significantDifferences(smoothing,2,d) + 1;
                    disp('Significant group difference detected!')
                end
                
                FWE2 = significantDifferences(smoothing,2,d) / comparison;
                disp(sprintf('Current FWE 2 is %f for %i mm of smoothing \n',FWE2,smoothingLevels(smoothing)))
                
                %------------
                
                xsmoothness = SPM.xVol.FWHM(1) * abs(SPM.xVol.M(1,1));
                ysmoothness = SPM.xVol.FWHM(2) * abs(SPM.xVol.M(2,2));
                zsmoothness = SPM.xVol.FWHM(3) * abs(SPM.xVol.M(3,3));
                smoothnessEstimates(smoothing,comparison,:,d) = [xsmoothness ysmoothness zsmoothness];
                
            catch
                disp('Error detected!')
                errors(smoothing,d) = errors(smoothing,d) + 1;
                
                FWE1 = significantDifferences(smoothing,1,d) / comparison;
                disp(sprintf('Current FWE 1 is %f for %i mm of smoothing \n',FWE1,smoothingLevels(smoothing)))
                
                FWE2 = significantDifferences(smoothing,2,d) / comparison;
                disp(sprintf('Current FWE 2 is %f for %i mm of smoothing \n',FWE2,smoothingLevels(smoothing)))
            end
            
        end
        
    end
    
end

