
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

nPerm = 100;

nGroupAnalyses = 100;
uncorrectedpvaluesposbelowfivepercent = zeros(nGroupAnalyses,1);
uncorrectedpvaluesnegbelowfivepercent = zeros(nGroupAnalyses,1);

correctedpvaluesposbelowfivepercent = zeros(nGroupAnalyses,1);
correctedpvaluesnegbelowfivepercent = zeros(nGroupAnalyses,1);

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
    
    mask = ones(sy,sx,sz);
    
    % Make sure that the mask is 1 for all subjects
    for s = 1:nSubj
        temp = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/Results/Beijing/6mm/boxcar10/' Subjects{s} '.feat/reg_standard/mask.nii.gz']);
        mask = mask .* double(temp.img);
    end
    
    % Calculate skewness for original data
    newdata = data;
    m_ = mean(newdata,4);
    m3_ = sum((newdata - repmat(m_,[1,1,1,nSubj])).^3,4) / nSubj;
    s_ = std(newdata,0,4);
    skewness_ = m3_ ./ (s_.^3 + eps);
    skewness_ = skewness_ .* mask;
    originalskewness = skewness_;
    
    uncorrpvaluespos = zeros(sy,sx,sz);
    uncorrpvaluesneg = zeros(sy,sx,sz);
    
    %maxdist = zeros(nPerm,1);
    
    maxdistpos = zeros(nPerm,1);
    maxdistneg = zeros(nPerm,1);
    
    % Calculate skewness null distribution and p-values
    for perm = 1:nPerm
        
        %perm
        
        newdata = zeros(size(data));
        
        if perm > 1
            
            newdata = data;
            
            % Remove mean
            newdata = newdata - repmat(mean(newdata,4),[1 1 1 nSubj]);
            
            for s = 1:nSubj
                flip = randi(2);
                if flip == 1
                    f = -1;
                elseif flip == 2
                    f = 1;
                end
                newdata(:,:,:,s) = f * newdata(:,:,:,s);
            end

        else
            newdata = data;
        end
        
        skewness = zeros(size(mask));
        
        m_ = mean(newdata,4);
        m3_ = sum((newdata - repmat(m_,[1,1,1,nSubj])).^3,4) / nSubj;
        s_ = std(newdata,0,4);
        skewness_ = m3_ ./ (s_.^3 + eps);
        skewness_ = skewness_ .* mask;
        
        % Calculate "skewness"
        %     for x = 1:sx
        %         for y = 1:sy
        %             for z = 1:sz
        %                 if mask(y,x,z) == 1
        %                     m = mean(newdata(y,x,z,:));
        %                     m3 = sum((newdata(y,x,z,:) - m).^3) / nSubj;
        %                     s = std(newdata(y,x,z,:));
        %                     skewness(y,x,z) = m3 / s^3;
        %                 end
        %             end
        %         end
        %     end
        
                
        uncorrpvaluespos = uncorrpvaluespos + (skewness_ > originalskewness);
        uncorrpvaluesneg = uncorrpvaluesneg + (skewness_ < originalskewness);
        
        maxdistpos(perm) = max(skewness_(:));
        maxdistneg(perm) = min(skewness_(:));
        
    end
    
    uncorrpvaluespos = uncorrpvaluespos / nPerm;
    uncorrpvaluesneg = uncorrpvaluesneg / nPerm;
    
    
    % Calculate FWE-corrected p-values for each voxel
    corrpvaluespos = zeros(sy,sx,sz);
    corrpvaluesneg = zeros(sy,sx,sz);
    
    for x = 1:sx
        for y = 1:sy
            for z = 1:sz
                if mask(y,x,z) == 1
                    corrpvaluespos(y,x,z) = sum(maxdistpos >= originalskewness(y,x,z)) / nPerm;
                    corrpvaluesneg(y,x,z) = sum(maxdistneg <= originalskewness(y,x,z)) / nPerm;
                else
                    corrpvaluespos(y,x,z) = 2;
                    corrpvaluesneg(y,x,z) = 2;
                end                
            end
        end
    end
    
    uncorrectedpvaluesposbelowfivepercent(groupanalysis) = sum(uncorrpvaluespos(mask==1) < 0.05) / sum(mask(:));
    uncorrectedpvaluesnegbelowfivepercent(groupanalysis) = sum(uncorrpvaluesneg(mask==1) < 0.05) / sum(mask(:));
    
    correctedpvaluesposbelowfivepercent(groupanalysis) = (min(corrpvaluespos(:)) < 0.05);    
    correctedpvaluesnegbelowfivepercent(groupanalysis) = (min(corrpvaluesneg(:)) < 0.05);    
    
    min(corrpvaluespos(:))
    min(corrpvaluesneg(:))
    
    sum(correctedpvaluesposbelowfivepercent)
    sum(correctedpvaluesnegbelowfivepercent)
    
end



