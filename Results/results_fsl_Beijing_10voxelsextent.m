% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 15 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

results_fsl_ols = zeros(4,4,2,4,2);

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,2) = 70;
results_fsl_ols(2,1,1,1,2) = 74.5;
results_fsl_ols(3,1,1,1,2) = 66.8;
results_fsl_ols(4,1,1,1,2) = 54.9;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,2,1,1,2) = 60.9;
results_fsl_ols(2,2,1,1,2) = 66.3;
results_fsl_ols(3,2,1,1,2) = 55.3;
results_fsl_ols(4,2,1,1,2) = 45;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,3,1,1,2) = 76.5;
results_fsl_ols(2,3,1,1,2) = 90.2;
results_fsl_ols(3,3,1,1,2) = 86.4;
results_fsl_ols(4,3,1,1,2) = 81;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,4,1,1,2) = 69.6;
results_fsl_ols(2,4,1,1,2) = 78.1;
results_fsl_ols(3,4,1,1,2) = 74.7;
results_fsl_ols(4,4,1,1,2) = 66.4;











%-----------------------
% FLAME
%-----------------------

results_fsl_flame1 = zeros(4,4,2,4,2);

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,2) = 0.1;
results_fsl_flame1(2,1,1,1,2) = 2.0;
results_fsl_flame1(3,1,1,1,2) = 4.1;
results_fsl_flame1(4,1,1,1,2) = 4.9;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,2,1,1,2) = 1.5;
results_fsl_flame1(2,2,1,1,2) = 9.9;
results_fsl_flame1(3,2,1,1,2) = 11.4;
results_fsl_flame1(4,2,1,1,2) = 11.4;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,3,1,1,2) = 0; %OK
results_fsl_flame1(2,3,1,1,2) = 0.2;
results_fsl_flame1(3,3,1,1,2) = 0.6;
results_fsl_flame1(4,3,1,1,2) = 0.8;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,4,1,1,2) = 0;
results_fsl_flame1(2,4,1,1,2) = 0.6;
results_fsl_flame1(3,4,1,1,2) = 1.5;
results_fsl_flame1(4,4,1,1,2) = 2.1;


