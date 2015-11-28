% Cluster defining threshold, 1 = 0.01; 2 = 0.001
% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(cluster defining threshold, smoothing, paradigm, analysis type, group size, study)

%-----------------------
% FLAME1
%-----------------------

%---------------------------------
% Cluster defining threshold 0.01
%---------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,1,2) = 1.6;
results_fsl_flame1(1,2,1,1,1,2) = 3.4;
results_fsl_flame1(1,3,1,1,1,2) = 3.2;
results_fsl_flame1(1,4,1,1,1,2) = 2.8;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,1,2) = 6.1;
results_fsl_flame1(1,2,2,1,1,2) = 7.0;
results_fsl_flame1(1,3,2,1,1,2) = 5.9;
results_fsl_flame1(1,4,2,1,1,2) = 5.0;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,1,2) = 0;
results_fsl_flame1(1,2,3,1,1,2) = 0.3;
results_fsl_flame1(1,3,3,1,1,2) = 0.5;
results_fsl_flame1(1,4,3,1,1,2) = 0.5;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,1,2) = 0.2;
results_fsl_flame1(1,2,4,1,1,2) = 1.2;
results_fsl_flame1(1,3,4,1,1,2) = 1.8;
results_fsl_flame1(1,4,4,1,1,2) = 1.5;






% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,2,2) = 5.0;
results_fsl_flame1(1,2,1,1,2,2) = 8.6;
results_fsl_flame1(1,3,1,1,2,2) = 6.6;
results_fsl_flame1(1,4,1,1,2,2) = 5.9;


% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,2,2) = 14.8;
results_fsl_flame1(1,2,2,1,2,2) = 13.0;
results_fsl_flame1(1,3,2,1,2,2) = 10.0;
results_fsl_flame1(1,4,2,1,2,2) = 7.6;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,2,2) = 0;
results_fsl_flame1(1,2,3,1,2,2) = 1.5;
results_fsl_flame1(1,3,3,1,2,2) = 2.9;
results_fsl_flame1(1,4,3,1,2,2) = 2.5;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,2,2) = 1.2;
results_fsl_flame1(1,2,4,1,2,2) = 4.9;
results_fsl_flame1(1,3,4,1,2,2) = 4.2;
results_fsl_flame1(1,4,4,1,2,2) = 4.0;






% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,4,2) = 8.8;
results_fsl_flame1(1,2,1,1,4,2) = 13.1;
results_fsl_flame1(1,3,1,1,4,2) = 10.3;
results_fsl_flame1(1,4,1,1,4,2) = 8.2;


% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,4,2) = 22.7;
results_fsl_flame1(1,2,2,1,4,2) = 17.7;
results_fsl_flame1(1,3,2,1,4,2) = 12.5;
results_fsl_flame1(1,4,2,1,4,2) = 10.0;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,4,2) = 0.3;
results_fsl_flame1(1,2,3,1,4,2) = 4.2;
results_fsl_flame1(1,3,3,1,4,2) = 5.4;
results_fsl_flame1(1,4,3,1,4,2) = 5.8;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,4,2) = 3.7;
results_fsl_flame1(1,2,4,1,4,2) = 9.5;
results_fsl_flame1(1,3,4,1,4,2) = 8.5;
results_fsl_flame1(1,4,4,1,4,2) = 8.1;


%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,2,2) = 8.2;
results_fsl_flame1(1,2,1,2,2,2) = 14.2;
results_fsl_flame1(1,3,1,2,2,2) = 13.3;
results_fsl_flame1(1,4,1,2,2,2) = 11.6;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,2,2) = 13.9;
results_fsl_flame1(1,2,2,2,2,2) = 13.3;
results_fsl_flame1(1,3,2,2,2,2) = 8.7;
results_fsl_flame1(1,4,2,2,2,2) = 6.2;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,2,2,2) = 0.1;
results_fsl_flame1(1,2,3,2,2,2) = 3.9;
results_fsl_flame1(1,3,3,2,2,2) = 7.3;
results_fsl_flame1(1,4,3,2,2,2) = 7.9;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,2,2,2) = 1.1;
results_fsl_flame1(1,2,4,2,2,2) = 4.9;
results_fsl_flame1(1,3,4,2,2,2) = 5.6;
results_fsl_flame1(1,4,4,2,2,2) = 5.3;




% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,4,2) = 14.8;
results_fsl_flame1(1,2,1,2,4,2) = 21.8;
results_fsl_flame1(1,3,1,2,4,2) = 18.6;	
results_fsl_flame1(1,4,1,2,4,2) = 15.9;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,4,2) = 19.5;
results_fsl_flame1(1,2,2,2,4,2) = 14.3;
results_fsl_flame1(1,3,2,2,4,2) = 9.1;
results_fsl_flame1(1,4,2,2,4,2) = 6.6;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,2,4,2) = 0.1;
results_fsl_flame1(1,2,3,2,4,2) = 7.9;
results_fsl_flame1(1,3,3,2,4,2) = 14.0;
results_fsl_flame1(1,4,3,2,4,2) = 13.6;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,2,4,2) = 1.6;
results_fsl_flame1(1,2,4,2,4,2) = 8.9;
results_fsl_flame1(1,3,4,2,4,2) = 10.1;
results_fsl_flame1(1,4,4,2,4,2) = 8.5;


%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,1,2) = 0;
results_fsl_flame1(2,1,1,1,1,2) = 0;
results_fsl_flame1(2,1,1,1,1,2) = 0;
results_fsl_flame1(2,1,1,1,1,2) = 0.1;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,1,2) = 0.1;
results_fsl_flame1(2,2,2,1,1,2) = 0.2;
results_fsl_flame1(2,3,2,1,1,2) = 0.1;
results_fsl_flame1(2,4,2,1,1,2) = 0.1;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,1,2) = 0; % OK
results_fsl_flame1(2,2,3,1,1,2) = 0; % OK
results_fsl_flame1(2,3,3,1,1,2) = 0; % OK
results_fsl_flame1(2,4,3,1,1,2) = 0; % OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,1,2) = 0; % OK
results_fsl_flame1(2,2,4,1,1,2) = 0; % OK
results_fsl_flame1(2,3,4,1,1,2) = 0; % OK
results_fsl_flame1(2,4,4,1,1,2) = 0; % OK




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,2,2) = 0.0;
results_fsl_flame1(2,1,1,1,2,2) = 0.9;
results_fsl_flame1(2,1,1,1,2,2) = 1.0;
results_fsl_flame1(2,1,1,1,2,2) = 0.9;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,2,2) = 1.5;
results_fsl_flame1(2,2,2,1,2,2) = 1.7;
results_fsl_flame1(2,3,2,1,2,2) = 1.5;
results_fsl_flame1(2,4,2,1,2,2) = 1.4;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,2,2) = 0;
results_fsl_flame1(2,2,3,1,2,2) = 0;
results_fsl_flame1(2,3,3,1,2,2) = 0.1;
results_fsl_flame1(2,4,3,1,2,2) = 0.3;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,2,2) = 0;
results_fsl_flame1(2,2,4,1,2,2) = 0.2;
results_fsl_flame1(2,3,4,1,2,2) = 0.2;
results_fsl_flame1(2,4,4,1,2,2) = 0.5;







% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,4,2) = 0.7;
results_fsl_flame1(2,1,1,1,4,2) = 1.9;
results_fsl_flame1(2,1,1,1,4,2) = 1.5;
results_fsl_flame1(2,1,1,1,4,2) = 1.2;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,4,2) = 4.4;
results_fsl_flame1(2,2,2,1,4,2) = 3.7;
results_fsl_flame1(2,3,2,1,4,2) = 3.0;
results_fsl_flame1(2,4,2,1,4,2) = 2.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,4,2) = 0;
results_fsl_flame1(2,2,3,1,4,2) = 0.6;
results_fsl_flame1(2,3,3,1,4,2) = 1.2;
results_fsl_flame1(2,4,3,1,4,2) = 1.5;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,4,2) = 0.4;
results_fsl_flame1(2,2,4,1,4,2) = 1.9;
results_fsl_flame1(2,3,4,1,4,2) = 2.5;
results_fsl_flame1(2,4,4,1,4,2) = 2.3;


%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,2,2,2) = 0.3;
results_fsl_flame1(2,1,1,2,2,2) = 0.9;
results_fsl_flame1(2,1,1,2,2,2) = 1.4;
results_fsl_flame1(2,1,1,2,2,2) = 1.6;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,2,2,2) = 1.2;
results_fsl_flame1(2,2,2,2,2,2) = 2.3;
results_fsl_flame1(2,3,2,2,2,2) = 1.6;
results_fsl_flame1(2,4,2,2,2,2) = 1.7;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,2,2,2) = 0;
results_fsl_flame1(2,2,3,2,2,2) = 0.1; 
results_fsl_flame1(2,3,3,2,2,2) = 0.2;
results_fsl_flame1(2,4,3,2,2,2) = 0.5;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,2,2,2) = 0;
results_fsl_flame1(2,2,4,2,2,2) = 0.2;
results_fsl_flame1(2,3,4,2,2,2) = 0.3;	
results_fsl_flame1(2,4,4,2,2,2) = 0.4;





% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,2,4,2) = 1.4;
results_fsl_flame1(2,1,1,2,4,2) = 4.0;
results_fsl_flame1(2,1,1,2,4,2) = 3.9;
results_fsl_flame1(2,1,1,2,4,2) = 3.6;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,2,4,2) = 3.2;
results_fsl_flame1(2,2,2,2,4,2) = 3.7;
results_fsl_flame1(2,3,2,2,4,2) = 2.7;
results_fsl_flame1(2,4,2,2,4,2) = 1.9;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,2,4,2) = 0; %OK
results_fsl_flame1(2,2,3,2,4,2) = 0.9; 
results_fsl_flame1(2,3,3,2,4,2) = 2.7;
results_fsl_flame1(2,4,3,2,4,2) = 3.2;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,2,4,2) = 0;
results_fsl_flame1(2,2,4,2,4,2) = 0.6;
results_fsl_flame1(2,3,4,2,4,2) = 1.5;	
results_fsl_flame1(2,4,4,2,4,2) = 2.0;


%-----------------------
% OLS
%-----------------------


%---------------------------------
% Cluster defining threshold 0.01
%---------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------



% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,1,2) = 38.3;
results_fsl_ols(1,2,1,1,1,2) = 22.6;
results_fsl_ols(1,3,1,1,1,2) = 15.3;
results_fsl_ols(1,4,1,1,1,2) = 11.7;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,1,2) = 30.8;
results_fsl_ols(1,2,2,1,1,2) = 18.6;
results_fsl_ols(1,3,2,1,1,2) = 13.7;
results_fsl_ols(1,4,2,1,1,2) = 10.4;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,1,2) = 33.9;
results_fsl_ols(1,2,3,1,1,2) = 24.4;
results_fsl_ols(1,3,3,1,1,2) = 17.7;
results_fsl_ols(1,4,3,1,1,2) = 13.6;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,1,2) = 35.1;
results_fsl_ols(1,2,4,1,1,2) = 22.5;
results_fsl_ols(1,3,4,1,1,2) = 16.4;
results_fsl_ols(1,4,4,1,1,2) = 12.9;





% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,2,2) = 39.7;
results_fsl_ols(1,2,1,1,2,2) = 23.8;
results_fsl_ols(1,3,1,1,2,2) = 15.8;
results_fsl_ols(1,4,1,1,2,2) = 11.2;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,2,2) = 33.1;
results_fsl_ols(1,2,2,1,2,2) = 19.3;
results_fsl_ols(1,3,2,1,2,2) = 13.2;
results_fsl_ols(1,4,2,1,2,2) = 9.7;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,2,2) = 35.5;
results_fsl_ols(1,2,3,1,2,2) = 25.6;
results_fsl_ols(1,3,3,1,2,2) = 18.8;
results_fsl_ols(1,4,3,1,2,2) = 14.6;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,2,2) = 34.5;
results_fsl_ols(1,2,4,1,2,2) = 22.3;
results_fsl_ols(1,3,4,1,2,2) = 15.6;
results_fsl_ols(1,4,4,1,2,2) = 11.1;





% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,4,2) = 35.5;
results_fsl_ols(1,2,1,1,4,2) = 21.4;
results_fsl_ols(1,3,1,1,4,2) = 14.8;
results_fsl_ols(1,4,1,1,4,2) = 10.1;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,4,2) = 34.3;
results_fsl_ols(1,2,2,1,4,2) = 21.9;
results_fsl_ols(1,3,2,1,4,2) = 14.8;
results_fsl_ols(1,4,2,1,4,2) = 10.5;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,4,2) = 38.0;
results_fsl_ols(1,2,3,1,4,2) = 25.7;
results_fsl_ols(1,3,3,1,4,2) = 19.9;
results_fsl_ols(1,4,3,1,4,2) = 15.5;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,4,2) = 36.5;
results_fsl_ols(1,2,4,1,4,2) = 24.2;
results_fsl_ols(1,3,4,1,4,2) = 16.8;
results_fsl_ols(1,4,4,1,4,2) = 13.2;


%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,2,2) = 50.1;
results_fsl_ols(1,2,1,2,2,2) = 31.7;
results_fsl_ols(1,3,1,2,2,2) = 22.7;
results_fsl_ols(1,4,1,2,2,2) = 17.4;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,2,2) = 30.1;
results_fsl_ols(1,2,2,2,2,2) = 18.2;
results_fsl_ols(1,3,2,2,2,2) = 11.1;
results_fsl_ols(1,4,2,2,2,2) = 7.8;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,2,2,2) = 38.4;
results_fsl_ols(1,2,3,2,2,2) = 28.9;
results_fsl_ols(1,3,3,2,2,2) = 21.2;
results_fsl_ols(1,4,3,2,2,2) = 17.5;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,2,2,2) = 26.6;
results_fsl_ols(1,2,4,2,2,2) = 18.1;
results_fsl_ols(1,3,4,2,2,2) = 12.6;
results_fsl_ols(1,4,4,2,2,2) = 9.1;






% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,4,2) = 52.6;
results_fsl_ols(1,2,1,2,4,2) = 34.6;
results_fsl_ols(1,3,1,2,4,2) = 23.6;
results_fsl_ols(1,4,1,2,4,2) = 17.5;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,4,2) = 31.3;
results_fsl_ols(1,2,2,2,4,2) = 16.1;
results_fsl_ols(1,3,2,2,4,2) = 8.8;
results_fsl_ols(1,4,2,2,4,2) = 6.1;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,2,4,2) = 46.1;
results_fsl_ols(1,2,3,2,4,2) = 34.2;
results_fsl_ols(1,3,3,2,4,2) = 25.5;
results_fsl_ols(1,4,3,2,4,2) = 20.5;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,2,4,2) = 27.3;
results_fsl_ols(1,2,4,2,4,2) = 17.1;
results_fsl_ols(1,3,4,2,4,2) = 10.4;
results_fsl_ols(1,4,4,2,4,2) = 7.1;



%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,1,2) = 7.4;
results_fsl_ols(2,2,1,1,1,2) = 6.0;
results_fsl_ols(2,3,1,1,1,2) = 4.8;
results_fsl_ols(2,4,1,1,1,2) = 4.1;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,1,2) = 6.1;
results_fsl_ols(2,2,2,1,1,2) = 4.1;
results_fsl_ols(2,3,2,1,1,2) = 3.1;
results_fsl_ols(2,4,2,1,1,2) = 2.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,1,2) = 5.6;
results_fsl_ols(2,2,3,1,1,2) = 5.9;
results_fsl_ols(2,3,3,1,1,2) = 5.5;
results_fsl_ols(2,4,3,1,1,2) = 4.5;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,1,2) = 7.7;
results_fsl_ols(2,2,4,1,1,2) = 6.2;
results_fsl_ols(2,3,4,1,1,2) = 4.8;
results_fsl_ols(2,4,4,1,1,2) = 4.0;




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,2,2) = 11.3;
results_fsl_ols(2,2,1,1,2,2) = 7.1;
results_fsl_ols(2,3,1,1,2,2) = 5.1;
results_fsl_ols(2,4,1,1,2,2) = 4.6;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,2,2) = 10.0;
results_fsl_ols(2,2,2,1,2,2) = 5.6;
results_fsl_ols(2,3,2,1,2,2) = 3.9;
results_fsl_ols(2,4,2,1,2,2) = 3.1;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,2,2) = 10.4;
results_fsl_ols(2,2,3,1,2,2) = 9.1;
results_fsl_ols(2,3,3,1,2,2) = 7.5;
results_fsl_ols(2,4,3,1,2,2) = 6.3;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,2,2) = 9.9;
results_fsl_ols(2,2,4,1,2,2) = 6.5;
results_fsl_ols(2,3,4,1,2,2) = 4.5;
results_fsl_ols(2,4,4,1,2,2) = 3.8;






% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,4,2) = 11.1;
results_fsl_ols(2,2,1,1,4,2) = 6.4;
results_fsl_ols(2,3,1,1,4,2) = 4.5;
results_fsl_ols(2,4,1,1,4,2) = 3.3;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,4,2) = 9.9;
results_fsl_ols(2,2,2,1,4,2) = 6.5;
results_fsl_ols(2,3,2,1,4,2) = 4.4;
results_fsl_ols(2,4,2,1,4,2) = 3.4;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,4,2) = 12.1;
results_fsl_ols(2,2,3,1,4,2) = 10.0;
results_fsl_ols(2,3,3,1,4,2) = 8.1;
results_fsl_ols(2,4,3,1,4,2) = 7.7;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,4,2) = 11.6;
results_fsl_ols(2,2,4,1,4,2) = 8.9;
results_fsl_ols(2,3,4,1,4,2) = 6.8;
results_fsl_ols(2,4,4,1,4,2) = 5.7;



%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,2,2,2) = 10.2;
results_fsl_ols(2,2,1,2,2,2) = 7.3;
results_fsl_ols(2,3,1,2,2,2) = 4.9;
results_fsl_ols(2,4,1,2,2,2) = 4.6;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,2,2,2) = 5.8;
results_fsl_ols(2,2,2,2,2,2) = 3.7;
results_fsl_ols(2,3,2,2,2,2) = 2.6;
results_fsl_ols(2,4,2,2,2,2) = 1.8;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,2,2,2) = 6.1;
results_fsl_ols(2,2,3,2,2,2) = 6.9;
results_fsl_ols(2,3,3,2,2,2) = 6.6;
results_fsl_ols(2,4,3,2,2,2) = 6.0;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,2,2,2) = 5.9;
results_fsl_ols(2,2,4,2,2,2) = 4.7;
results_fsl_ols(2,3,4,2,2,2) = 3.6;
results_fsl_ols(2,4,4,2,2,2) = 2.6;








% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,2,4,2) = 16.9;
results_fsl_ols(2,2,1,2,4,2) = 9.8;
results_fsl_ols(2,3,1,2,4,2) = 6.5;
results_fsl_ols(2,4,1,2,4,2) = 5.3;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,2,4,2) = 7.5;
results_fsl_ols(2,2,2,2,4,2) = 4.5;
results_fsl_ols(2,3,2,2,4,2) = 2.6;
results_fsl_ols(2,4,2,2,4,2) = 1.7;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,2,4,2) = 12.1;
results_fsl_ols(2,2,3,2,4,2) = 11.7;
results_fsl_ols(2,3,3,2,4,2) = 9.2;
results_fsl_ols(2,4,3,2,4,2) = 7.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,2,4,2) = 5.4;
results_fsl_ols(2,2,4,2,4,2) = 4.0;
results_fsl_ols(2,3,4,2,4,2) = 3.0;
results_fsl_ols(2,4,4,2,4,2) = 2.1;









