
clear all
clc
close all

addpath('D:\spm8')
addpath('C:\Users\wande\Documents\GitHub\ParametricMultisubjectfMRI\SPM')

study = 'Beijing'

cd D:\fcon1000\Beijing\
subjects = dir;

smoothnessEstimates = zeros(198,4);
    
analyses = 0;

for subject = 1:198

    analyses = analyses + 1;   
    subjectString = subjects(subject+3).name;
            
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% CLASSICAL STATISTICAL ANALYSIS
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
    for experiment = 1:1
        for smoothing = 4
            
            subjectString
                                              
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
                                                            
            % Load SPM file
            clear SPM
            load(['D:\fcon1000\' study '\' subjectString '\func\SPM_' experimentString '_s' num2str(smoothing) '.mat']);
            
            FWHM = SPM.xVol.FWHM;
            M    = SPM.xVol.M;
            FWHM(1) = FWHM(1) * abs(M(1,1));
            FWHM(2) = FWHM(2) * abs(M(2,2));
            FWHM(3) = FWHM(3) * abs(M(3,3));
            smoothnessEstimates(subject,experiment) = FWHM(1);           
            
        end
    end   
end

