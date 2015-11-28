% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 15 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

results_afni_ols = zeros(4,4,2,4,2);

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,2) = 74.4;
results_afni_ols(2,1,1,1,2) = 74.3;
results_afni_ols(3,1,1,1,2) = 65.9;
results_afni_ols(4,1,1,1,2) = 56.0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,1,1,2) = 65.1;
results_afni_ols(2,2,1,1,2) = 64.9;
results_afni_ols(3,2,1,1,2) = 54.1;
results_afni_ols(4,2,1,1,2) = 43.5;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,1,1,2) = 77.3;
results_afni_ols(2,3,1,1,2) = 82.3;
results_afni_ols(3,3,1,1,2) = 77.6;
results_afni_ols(4,3,1,1,2) = 66.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,1,1,2) = 70.8;
results_afni_ols(2,4,1,1,2) = 74.3;
results_afni_ols(3,4,1,1,2) = 62.8;
results_afni_ols(4,4,1,1,2) = 52.2;







%-----------------------
% MEMA
%-----------------------

results_afni_mema = zeros(4,4,2,4,2);

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,2) = 81.9;
results_afni_mema(2,1,1,1,2) = 85.0;
results_afni_mema(3,1,1,1,2) = 77.7;
results_afni_mema(4,1,1,1,2) = 66.8;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,1,1,2) = 79.5;
results_afni_mema(2,2,1,1,2) = 78.9;
results_afni_mema(3,2,1,1,2) = 71.0;
results_afni_mema(4,2,1,1,2) = 61.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,1,1,2) = 87.9;
results_afni_mema(2,3,1,1,2) = 94.3;
results_afni_mema(3,3,1,1,2) = 91.8;
results_afni_mema(4,3,1,1,2) = 85.4;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,1,1,2) = 82.8;
results_afni_mema(2,4,1,1,2) = 87.0;
results_afni_mema(3,4,1,1,2) = 84.2;
results_afni_mema(4,4,1,1,2) = 77.7;




