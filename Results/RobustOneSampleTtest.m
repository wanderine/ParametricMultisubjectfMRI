
clear all
close all
clc

addpath('/home/andek/Research_projects/nifti_matlab')


P={
    'sub00440'
    'sub01018'
    'sub01244'
    'sub02403'
    'sub04050'
    'sub04191'
    'sub05267'
    'sub06880'
    'sub06899'
    'sub07144'
    'sub07716'
    'sub07717'
    'sub08001'
    'sub08251'
    'sub08455'
    'sub08816'
    'sub08992'
    'sub10186'
    'sub10277'
    'sub10869'
    'sub10973'
    'sub11072'
    'sub11344'
    'sub12220'
    'sub14238'
    'sub15441'
    'sub16091'
    'sub16943'
    'sub17093'
    'sub17159'
    'sub17315'
    'sub17586'
    'sub17603'
    'sub17642'
    'sub17688'
    'sub18326'
    'sub18758'
    'sub18960'
    'sub19642'
    'sub19974'
    'sub20127'
    'sub20246'
    'sub20765'
    'sub20948'
    'sub21115'
    'sub22201'
    'sub22595'
    'sub22661'
    'sub22715'
    'sub22890'
    'sub26713'
    'sub28206'
    'sub28403'
    'sub28698'
    'sub28792'
    'sub28801'
    'sub28907'
    'sub28965'
    'sub29590'
    'sub29785'
    'sub30272'
    'sub30310'
    'sub30556'
    'sub30616'
    'sub30988'
    'sub31058'
    'sub31729'
    'sub32517'
    'sub32587'
    'sub33747'
    'sub33943'
    'sub33991'
    'sub34895'
    'sub34943'
    'sub35309'
    'sub35776'
    'sub35806'
    'sub36580'
    'sub36942'
    'sub37602'
    'sub38602'
    'sub39725'
    'sub40037'
    'sub40427'
    'sub41170'
    'sub41621'
    'sub42512'
    'sub42555'
    'sub42843'
    'sub43290'
    'sub44573'
    'sub45552'
    'sub46058'
    'sub46259'
    'sub46541'
    'sub48501'
    'sub48563'
    'sub48676'
    'sub49782'
    'sub50498'
    'sub50873'
    'sub50972'
    'sub50985'
    'sub51015'
    'sub51586'
    'sub52044'
    'sub52259'
    'sub53572'
    'sub53998'
    'sub54890'
    'sub55301'
    'sub55541'
    'sub55736'
    'sub55856'
    'sub56136'
    'sub56659'
    'sub56703'
    'sub56757'
    'sub58029'
    'sub58332'
    'sub58614'
    'sub59347'
    'sub59448'
    'sub61961'
    'sub62083'
    'sub62438'
    'sub62843'
    'sub62966'
    'sub64923'
    'sub65467'
    'sub65659'
    'sub66158'
    'sub66528'
    'sub66781'
    'sub66889'
    'sub67435'
    'sub67844'
    'sub68012'
    'sub68597'
    'sub69518'
    'sub69696'
    'sub71693'
    'sub72654'
    'sub72678'
    'sub73098'
    'sub73245'
    'sub73279'
    'sub73421'
    'sub74386'
    'sub74587'
    'sub75878'
    'sub76377'
    'sub77440'
    'sub80163'
    'sub80551'
    'sub80569'
    'sub80927'
    'sub81062'
    'sub81074'
    'sub82352'
    'sub82426'
    'sub82714'
    'sub82826'
    'sub82980'
    'sub83430'
    'sub83624'
    'sub83728'
    'sub85030'
    'sub85543'
    'sub85818'
    'sub86114'
    'sub87089'
    'sub87776'
    'sub88306'
    'sub88947'
    'sub89088'
    'sub89238'
    'sub89592'
    'sub89742'
    'sub89941'
    'sub91145'
    'sub91399'
    'sub91952'
    'sub92430'
    'sub92490'
    'sub92544'
    'sub92602'
    'sub92799'
    'sub92859'
    'sub93689'
    'sub93856'
    'sub94536'
    'sub95575'
    'sub95755'
    'sub96163'
    'sub97442'
    'sub98353'
    'sub98617'
    
    };


nSubjects = length(P);

nSubj = 20;

sx = 109; sy = 91; sz = 91;

nPerm = 1;

nGroupAnalyses = 1;

% Designmatrix
X = ones(nSubj,1);

significant = 0;

slice = 50;

for groupanalysis = 1:nGroupAnalyses
    
    groupanalysis
    
    % Get subjects for group analysis
    fileID = fopen(['/home/andek/Research_projects/RandomGroupAnalyses/Beijing_permutations/permutation' num2str(groupanalysis) '.txt']);
    C = textscan(fileID,'%s');
    fclose(fileID);
    
    for s = 1:nSubj
        subjectString = C{1}(s);
        subjectString = subjectString{1};
        Subjects{s} = subjectString;
    end
    
    data = zeros(91,109,91,nSubj);
    
    % Load data
    for s = 1:nSubj
        temp = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/Results/Beijing/6mm/boxcar10/' Subjects{s} '.feat/reg_standard/stats/cope1.nii.gz']);
        data(:,:,:,s) = double(temp.img);
    end
    
    % Load masks
    mask = ones(sy,sx,sz);
    
    % Make sure that the mask is 1 for all subjects
    for s = 1:nSubj
        temp = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/Results/Beijing/6mm/boxcar10/' Subjects{s} '.feat/reg_standard/mask.nii.gz']);
        mask = mask .* double(temp.img);
    end
    
    maxdist = zeros(nPerm,1);
    
    originaltscoresnoweight = zeros(sy,sx,sz);
    
    for z = slice:slice
        for x = 1:sx
            for y = 1:sy
                
                if mask(y,x,z) == 1
                    
                    Y = squeeze(data(y,x,z,:));
                    
                    % Initial OLS
                    W = diag(ones(nSubj,1));
                    beta = inv(X'*W*X)*X'*W*Y;
                    residuals = Y - X*beta;
                    originaltscoresnoweight(y,x,z) = beta / (sqrt(var(residuals) * inv(X'*X)));
                    
                end
            end
        end
    end
    
    
    H = X*inv(X'*X)*X';
    h = diag(H);
    adjustment = 1./(sqrt(1 - h));
    
    originaltscores = zeros(sy,sx,sz);
    
    % Robust regression in each voxel
    for z = slice:slice
        for x = 1:sx
            for y = 1:sy
                
                if mask(y,x,z) == 1
                    
                    Y = squeeze(data(y,x,z,:));
                    
                    % Initial OLS
                    W = diag(ones(nSubj,1));
                    beta = inv(X'*W*X)*X'*W*Y;
                    residuals = Y - X*beta;
                    
                    for it = 1:5
                        
                        % Median absolute deviation
                        m = median(residuals);
                        MAD = median(abs(residuals - m));
                        
                        % Standardize
                        residuals = residuals / MAD;
                        %residuals = residuals .* adjustment;
                        
                        % Apply weight function
                        %m = median(residuals);
                        %MAD = median(abs(residuals - m));
                        %w = residuals .* (1 - (residuals/(9*MAD)).^2).^2;
                        w = (1 - (residuals/(9*MAD)).^2).^2;
                                                
                        %w = abs(residuals).^(-1);
                        W = diag(w);
                        
                        beta = inv(X'*W*X)*X'*W*Y;
                        residuals = Y - X*beta;
                        
                    end
                    
                    originaltscores(y,x,z) = beta / (sqrt(var(residuals) * inv(X'*X)));
                end
            end
        end
    end        
    
    % Calculate null distribution for robust regression
    for perm = 1:nPerm
       
        permutedtscores = zeros(sy,sx,sz);
        
        perm        
        
        if perm > 1
            
            newdata = data;
            
            % Random sign flip
            for s = 1:nSubj
                flip = randi(2);
                if flip == 1
                    f = -1;
                elseif flip == 2
                    f = 1;
                end
                newdata(:,:,:,s) = f * newdata(:,:,:,s);
            end
            % Unpermuted data
        else
            newdata = data;
        end
        
        
        % Robust regression in each voxel
        for z = 40:40
            for x = 1:sx
                for y = 1:sy
                    
                    if mask(y,x,z) == 1
                        
                        Y = squeeze(newdata(y,x,z,:));
                        
                        % Initial OLS
                        W = diag(ones(nSubj,1));
                        beta = inv(X'*W*X)*X'*W*Y;
                        residuals = Y - X*beta;
                        
                        for it = 1:10
                            
                            % Median absolute deviation
                            m = median(residuals);
                            MAD = median(abs(residuals - m));
                            
                            % Standardize
                            residuals = residuals / MAD;
                            residuals = residuals .* adjustment;
                            
                            % Apply weight function
                            %m = median(residuals);
                            %MAD = median(abs(residuals - m));
                            %w = residuals .* (1 - (residuals/(6*MAD)).^2).^2;
                            w = (1 - (residuals/(12*MAD)).^2).^2;
                            W = diag(w);
                            
                            beta = inv(X'*W*X)*X'*W*Y;
                            residuals = Y - X*beta;
                            
                        end
                        
                        permutedtscores(y,x,z) = beta / (sqrt(var(residuals) * inv(X'*X)));
                    end
                end
            end
        end
                        
        % Save max
        maxdist(perm) = max(permutedtscores(:));
        
    end
    
    
    
    % Calculate FWE-corrected p-values for each voxel
    corrpvalues = zeros(sy,sx,sz);
    
    for x = 1:sx
        for y = 1:sy
            for z = 1:sz
                if mask(y,x,z) == 1
                    corrpvalues(y,x,z) = sum(maxdist >= originaltscores(y,x,z)) / nPerm;
                else
                    corrpvalues(y,x,z) = 2;
                end
            end
        end
    end
    
    % Check if smallest p-value is smaller than 0.05
    if min(corrpvalues(:) <= 0.05)
        significant = significant + 1;
    end
    
    
end

FWE = significant / nGroupAnalyses


