% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 15 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

results_spm_ols = zeros(4,4,2,4,2);

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,2) = 69.7;
results_spm_ols(2,1,1,1,2) = 68.4;
results_spm_ols(3,1,1,1,2) = 57.7;
results_spm_ols(4,1,1,1,2) = 45.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,2,1,1,2) = 66;
results_spm_ols(2,2,1,1,2) = 63.6;
results_spm_ols(3,2,1,1,2) = 53.2;
results_spm_ols(4,2,1,1,2) = 41.7;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,3,1,1,2) = 82.6;
results_spm_ols(2,3,1,1,2) = 85.8;
results_spm_ols(3,3,1,1,2) = 81.5;
results_spm_ols(4,3,1,1,2) = 72.7;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,4,1,1,2) = 73.8;
results_spm_ols(2,4,1,1,2) = 75.5;
results_spm_ols(3,4,1,1,2) = 66.8;
results_spm_ols(4,4,1,1,2) = 55.4;








