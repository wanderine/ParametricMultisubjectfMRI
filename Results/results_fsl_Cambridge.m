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

results_fsl_flame1 = zeros(2,4,4,2,4,2);

%---------------------------------
% Cluster defining threshold 0.01
%---------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,1,1) = 2.1;
results_fsl_flame1(1,2,1,1,1,1) = 3.5;
results_fsl_flame1(1,3,1,1,1,1) = 3.0;
results_fsl_flame1(1,4,1,1,1,1) = 2.3;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,1,1) = 8.3;
results_fsl_flame1(1,2,2,1,1,1) = 7.3;
results_fsl_flame1(1,3,2,1,1,1) = 5.3;
results_fsl_flame1(1,4,2,1,1,1) = 4.3;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,1,1) = 0;
results_fsl_flame1(1,2,3,1,1,1) = 0.5;
results_fsl_flame1(1,3,3,1,1,1) = 0.5;
results_fsl_flame1(1,4,3,1,1,1) = 0.6;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,1,1) = 0.4;
results_fsl_flame1(1,2,4,1,1,1) = 1.6;
results_fsl_flame1(1,3,4,1,1,1) = 2.1;
results_fsl_flame1(1,4,4,1,1,1) = 2.1;




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,2,1) = 8.5;
results_fsl_flame1(1,2,1,1,2,1) = 12.0;
results_fsl_flame1(1,3,1,1,2,1) = 9.1;
results_fsl_flame1(1,4,1,1,2,1) = 7.5;


% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,2,1) = 19.5;
results_fsl_flame1(1,2,2,1,2,1) = 14.3;
results_fsl_flame1(1,3,2,1,2,1) = 10.7;
results_fsl_flame1(1,4,2,1,2,1) = 8.0;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,2,1) = 0.2;
results_fsl_flame1(1,2,3,1,2,1) = 2.4;
results_fsl_flame1(1,3,3,1,2,1) = 3.3;
results_fsl_flame1(1,4,3,1,2,1) = 3.2;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,2,1) = 3.7;
results_fsl_flame1(1,2,4,1,2,1) = 6.3;
results_fsl_flame1(1,3,4,1,2,1) = 6.5;
results_fsl_flame1(1,4,4,1,2,1) = 5.7;






% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,4,1) = 15.6;
results_fsl_flame1(1,2,1,1,4,1) = 19.6;
results_fsl_flame1(1,3,1,1,4,1) = 14.1;
results_fsl_flame1(1,4,1,1,4,1) = 12.1;


% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,4,1) = 26.7;
results_fsl_flame1(1,2,2,1,4,1) = 19.1;
results_fsl_flame1(1,3,2,1,4,1) = 13.6;
results_fsl_flame1(1,4,2,1,4,1) = 10.5;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,4,1) = 0.4;
results_fsl_flame1(1,2,3,1,4,1) = 4.3;
results_fsl_flame1(1,3,3,1,4,1) = 0;
results_fsl_flame1(1,4,3,1,4,1) = 0;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,4,1) = 0;
results_fsl_flame1(1,2,4,1,4,1) = 0;
results_fsl_flame1(1,3,4,1,4,1) = 0;
results_fsl_flame1(1,4,4,1,4,1) = 0;



%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,2,1) = 4.9;
results_fsl_flame1(1,2,1,2,2,1) = 7.3;
results_fsl_flame1(1,3,1,2,2,1) = 5.9;
results_fsl_flame1(1,4,1,2,2,1) = 4.7;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,2,1) = 22.8;
results_fsl_flame1(1,2,2,2,2,1) = 18.5;
results_fsl_flame1(1,3,2,2,2,1) = 12.2;
results_fsl_flame1(1,4,2,2,2,1) = 9.2;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,2,2,1) = 0.6;
results_fsl_flame1(1,2,3,2,2,1) = 3.7;
results_fsl_flame1(1,3,3,2,2,1) = 4.6;
results_fsl_flame1(1,4,3,2,2,1) = 3.6;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,2,2,1) = 3.5;
results_fsl_flame1(1,2,4,2,2,1) = 9.2;
results_fsl_flame1(1,3,4,2,2,1) = 10.3;
results_fsl_flame1(1,4,4,2,2,1) = 8.2;






% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,4,1) = 6.1;
results_fsl_flame1(1,2,1,2,4,1) = 8.0;
results_fsl_flame1(1,3,1,2,4,1) = 4.8;
results_fsl_flame1(1,4,1,2,4,1) = 3.0;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,4,1) = 27.5;
results_fsl_flame1(1,2,2,2,4,1) = 16.6;
results_fsl_flame1(1,3,2,2,4,1) = 9.6;
results_fsl_flame1(1,4,2,2,4,1) = 7.3;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,2,4,1) = 1.6;
results_fsl_flame1(1,2,3,2,4,1) = 8.0;
results_fsl_flame1(1,3,3,2,4,1) = 6.8;
results_fsl_flame1(1,4,3,2,4,1) = 6.4;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,2,4,1) = 7.5;
results_fsl_flame1(1,2,4,2,4,1) = 16.3;
results_fsl_flame1(1,3,4,2,4,1) = 16.7;
results_fsl_flame1(1,4,4,2,4,1) = 13.9;


%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,1,1) = 0; % OK
results_fsl_flame1(2,1,1,1,1,1) = 0; % OK
results_fsl_flame1(2,1,1,1,1,1) = 0; % OK
results_fsl_flame1(2,1,1,1,1,1) = 0; % OK

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,1,1) = 0;
results_fsl_flame1(2,2,2,1,1,1) = 0.2;
results_fsl_flame1(2,3,2,1,1,1) = 0.2;
results_fsl_flame1(2,4,2,1,1,1) = 0.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,1,1) = 0; % OK
results_fsl_flame1(2,2,3,1,1,1) = 0; % OK
results_fsl_flame1(2,3,3,1,1,1) = 0; % OK
results_fsl_flame1(2,4,3,1,1,1) = 0; % OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,1,1) = 0; % OK
results_fsl_flame1(2,2,4,1,1,1) = 0; % OK
results_fsl_flame1(2,3,4,1,1,1) = 0; % OK
results_fsl_flame1(2,4,4,1,1,1) = 0; % OK




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,2,1) = 0.3;
results_fsl_flame1(2,1,1,1,2,1) = 0.6;
results_fsl_flame1(2,1,1,1,2,1) = 0.6;
results_fsl_flame1(2,1,1,1,2,1) = 0.6;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,2,1) = 2.2;
results_fsl_flame1(2,2,2,1,2,1) = 2.6;
results_fsl_flame1(2,3,2,1,2,1) = 2.1;
results_fsl_flame1(2,4,2,1,2,1) = 1.8;


% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,2,1) = 0;
results_fsl_flame1(2,2,3,1,2,1) = 0;
results_fsl_flame1(2,3,3,1,2,1) = 0.2;
results_fsl_flame1(2,4,3,1,2,1) = 0.5;


% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,2,1) = 0.1;
results_fsl_flame1(2,2,4,1,2,1) = 0.4;
results_fsl_flame1(2,3,4,1,2,1) = 0.6;
results_fsl_flame1(2,4,4,1,2,1) = 0.6;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,4,1) = 2.1;
results_fsl_flame1(2,1,1,1,4,1) = 4.7;
results_fsl_flame1(2,1,1,1,4,1) = 4.5;
results_fsl_flame1(2,1,1,1,4,1) = 4.0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,4,1) = 6.1;
results_fsl_flame1(2,2,2,1,4,1) = 4.6;
results_fsl_flame1(2,3,2,1,4,1) = 3.0;
results_fsl_flame1(2,4,2,1,4,1) = 2.9;


% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,4,1) = 0;
results_fsl_flame1(2,2,3,1,4,1) = 0.4;
results_fsl_flame1(2,3,3,1,4,1) = 0;
results_fsl_flame1(2,4,3,1,4,1) = 0;


% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,4,1) = 0;
results_fsl_flame1(2,2,4,1,4,1) = 0;
results_fsl_flame1(2,3,4,1,4,1) = 0;
results_fsl_flame1(2,4,4,1,4,1) = 0;


%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,2,2,1) = 0;
results_fsl_flame1(2,1,1,2,2,1) = 0.6;
results_fsl_flame1(2,1,1,2,2,1) = 0.7;
results_fsl_flame1(2,1,1,2,2,1) = 0.8;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,2,2,1) = 3.6;
results_fsl_flame1(2,2,2,2,2,1) = 4.4;
results_fsl_flame1(2,3,2,2,2,1) = 3.1;
results_fsl_flame1(2,4,2,2,2,1) = 2.5;


% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,2,2,1) = 0;
results_fsl_flame1(2,2,3,2,2,1) = 0;
results_fsl_flame1(2,3,3,2,2,1) = 0.3;
results_fsl_flame1(2,4,3,2,2,1) = 0.5;


% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,2,2,1) = 0.2;
results_fsl_flame1(2,2,4,2,2,1) = 0.8;
results_fsl_flame1(2,3,4,2,2,1) = 0.9;
results_fsl_flame1(2,4,4,2,2,1) = 0.8;






% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,2,4,1) = 0.4;
results_fsl_flame1(2,1,1,2,4,1) = 0.9;
results_fsl_flame1(2,1,1,2,4,1) = 0.7;
results_fsl_flame1(2,1,1,2,4,1) = 0;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,2,4,1) = 5.8;
results_fsl_flame1(2,2,2,2,4,1) = 5.1;
results_fsl_flame1(2,3,2,2,4,1) = 3.3;
results_fsl_flame1(2,4,2,2,4,1) = 2.3;


% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,2,4,1) = 0.1;
results_fsl_flame1(2,2,3,2,4,1) = 0.8;
results_fsl_flame1(2,3,3,2,4,1) = 1.2;
results_fsl_flame1(2,4,3,2,4,1) = 1.3;


% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,2,4,1) = 0.4;
results_fsl_flame1(2,2,4,2,4,1) = 2.7;
results_fsl_flame1(2,3,4,2,4,1) = 3.4;
results_fsl_flame1(2,4,4,2,4,1) = 3.3;



%-----------------------
% OLS
%-----------------------

results_fsl_ols = zeros(2,7,4,2,4,2);

%---------------------------------
% Cluster defining threshold 0.01
%---------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,1,1) = 43.2;
results_fsl_ols(1,2,1,1,1,1) = 26.1;
results_fsl_ols(1,3,1,1,1,1) = 16.8;
results_fsl_ols(1,4,1,1,1,1) = 12.9;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,1,1) = 34.4;
results_fsl_ols(1,2,2,1,1,1) = 19.1;
results_fsl_ols(1,3,2,1,1,1) = 12.3;
results_fsl_ols(1,4,2,1,1,1) = 9.4;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,1,1) = 36.1;
results_fsl_ols(1,2,3,1,1,1) = 25.7;
results_fsl_ols(1,3,3,1,1,1) = 19.2;
results_fsl_ols(1,4,3,1,1,1) = 15.7;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,1,1) = 39.1;
results_fsl_ols(1,2,4,1,1,1) = 25.1;
results_fsl_ols(1,3,4,1,1,1) = 18.0;
results_fsl_ols(1,4,4,1,1,1) = 15.5;




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,2,1) = 39.5;
results_fsl_ols(1,2,1,1,2,1) = 24.8;
results_fsl_ols(1,3,1,1,2,1) = 16.2;
results_fsl_ols(1,4,1,1,2,1) = 12.3;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,2,1) = 33.0;
results_fsl_ols(1,2,2,1,2,1) = 19.6;
results_fsl_ols(1,3,2,1,2,1) = 14.2;
results_fsl_ols(1,4,2,1,2,1) = 10.9;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,2,1) = 39.5;
results_fsl_ols(1,2,3,1,2,1) = 27.3;
results_fsl_ols(1,3,3,1,2,1) = 20.2;
results_fsl_ols(1,4,3,1,2,1) = 15.0;


% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,2,1) = 38.3;
results_fsl_ols(1,2,4,1,2,1) = 26.1;
results_fsl_ols(1,3,4,1,2,1) = 19.6;
results_fsl_ols(1,4,4,1,2,1) = 15.3;




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,4,1) = 43.0;
results_fsl_ols(1,2,1,1,4,1) = 26.0;
results_fsl_ols(1,3,1,1,4,1) = 18.1;
results_fsl_ols(1,4,1,1,4,1) = 13.8;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,4,1) = 35.4;
results_fsl_ols(1,2,2,1,4,1) = 20.0;
results_fsl_ols(1,3,2,1,4,1) = 14.9;
results_fsl_ols(1,4,2,1,4,1) = 11.4;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,4,1) = 42.3;
results_fsl_ols(1,2,3,1,4,1) = 27.0;
results_fsl_ols(1,3,3,1,4,1) = 19.1;
results_fsl_ols(1,4,3,1,4,1) = 13.9;


% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,4,1) = 41.6;
results_fsl_ols(1,2,4,1,4,1) = 28.4;
results_fsl_ols(1,3,4,1,4,1) = 20.6;
results_fsl_ols(1,4,4,1,4,1) = 16.3;


%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,2,1) = 24.2;
results_fsl_ols(1,2,1,2,2,1) = 14.1;
results_fsl_ols(1,3,1,2,2,1) = 9.4;
results_fsl_ols(1,4,1,2,2,1) = 6.7;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,2,1) = 35.2;
results_fsl_ols(1,2,2,2,2,1) = 19.3;
results_fsl_ols(1,3,2,2,2,1) = 12.4;
results_fsl_ols(1,4,2,2,2,1) = 9.4;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,2,2,1) = 41.9;
results_fsl_ols(1,2,3,2,2,1) = 27.5;
results_fsl_ols(1,3,3,2,2,1) = 18.9;
results_fsl_ols(1,4,3,2,2,1) = 14.6;


% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,2,2,1) = 44.6;
results_fsl_ols(1,2,4,2,2,1) = 28.5;
results_fsl_ols(1,3,4,2,2,1) = 22.2;
results_fsl_ols(1,4,4,2,2,1) = 17.5;





% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,4,1) = 20.3;
results_fsl_ols(1,2,1,2,4,1) = 10.1;
results_fsl_ols(1,3,1,2,4,1) = 5.2;
results_fsl_ols(1,4,1,2,4,1) = 3.2;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,4,1) = 32.5;
results_fsl_ols(1,2,2,2,4,1) = 16.9;
results_fsl_ols(1,3,2,2,4,1) = 11.2;
results_fsl_ols(1,4,2,2,4,1) = 8.1;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,2,4,1) = 57.4;
results_fsl_ols(1,2,3,2,4,1) = 32.4;
results_fsl_ols(1,3,3,2,4,1) = 20.5;
results_fsl_ols(1,4,3,2,4,1) = 14.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,2,4,1) = 51.6;
results_fsl_ols(1,2,4,2,4,1) = 34.8;
results_fsl_ols(1,3,4,2,4,1) = 27.4;
results_fsl_ols(1,4,4,2,4,1) = 20.7;


%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,1,1) = 9.6;
results_fsl_ols(2,2,1,1,1,1) = 6.2;
results_fsl_ols(2,3,1,1,1,1) = 4.7;
results_fsl_ols(2,4,1,1,1,1) = 4.0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,1,1) = 7.3;
results_fsl_ols(2,2,2,1,1,1) = 5.2;
results_fsl_ols(2,3,2,1,1,1) = 3.6;
results_fsl_ols(2,4,2,1,1,1) = 2.8;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,1,1) = 6.5;
results_fsl_ols(2,2,3,1,1,1) = 6.8;
results_fsl_ols(2,3,3,1,1,1) = 6.4;
results_fsl_ols(2,4,3,1,1,1) = 4.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,1,1) = 10.0;
results_fsl_ols(2,2,4,1,1,1) = 7.7;
results_fsl_ols(2,3,4,1,1,1) = 6.0;
results_fsl_ols(2,4,4,1,1,1) = 5.3;




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,2,1) = 10.8;
results_fsl_ols(2,2,1,1,2,1) = 7.1;
results_fsl_ols(2,3,1,1,2,1) = 5.0;
results_fsl_ols(2,4,1,1,2,1) = 4.0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,2,1) = 9.9;
results_fsl_ols(2,2,2,1,2,1) = 5.6;
results_fsl_ols(2,3,2,1,2,1) = 4.8;
results_fsl_ols(2,4,2,1,2,1) = 4.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,2,1) = 8.6;
results_fsl_ols(2,2,3,1,2,1) = 7.1;
results_fsl_ols(2,3,3,1,2,1) = 5.4;
results_fsl_ols(2,4,3,1,2,1) = 5.1;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,2,1) = 10.1;
results_fsl_ols(2,2,4,1,2,1) = 7.2;
results_fsl_ols(2,3,4,1,2,1) = 6.3;
results_fsl_ols(2,4,4,1,2,1) = 5.5;






% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,4,1) = 13.7;
results_fsl_ols(2,2,1,1,4,1) = 8.6;
results_fsl_ols(2,3,1,1,4,1) = 6.7;
results_fsl_ols(2,4,1,1,4,1) = 5.0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,4,1) = 10.4;
results_fsl_ols(2,2,2,1,4,1) = 6.5;
results_fsl_ols(2,3,2,1,4,1) = 4.9;
results_fsl_ols(2,4,2,1,4,1) = 4.0;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,4,1) = 10.4;
results_fsl_ols(2,2,3,1,4,1) = 7.6;
results_fsl_ols(2,3,3,1,4,1) = 5.9;
results_fsl_ols(2,4,3,1,4,1) = 4.7;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,4,1) = 14.4;
results_fsl_ols(2,2,4,1,4,1) = 9.6;
results_fsl_ols(2,3,4,1,4,1) = 6.6;
results_fsl_ols(2,4,4,1,4,1) = 5.3;



%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,2,2,1) = 4.0;
results_fsl_ols(2,2,1,2,2,1) = 3.3;
results_fsl_ols(2,3,1,2,2,1) = 2.9;
results_fsl_ols(2,4,1,2,2,1) = 2.4;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,2,2,1) = 6.5;
results_fsl_ols(2,2,2,2,2,1) = 4.0;
results_fsl_ols(2,3,2,2,2,1) = 2.5;
results_fsl_ols(2,4,2,2,2,1) = 2.0;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,2,2,1) = 7.8;
results_fsl_ols(2,2,3,2,2,1) = 5.6;
results_fsl_ols(2,3,3,2,2,1) = 4.8;
results_fsl_ols(2,4,3,2,2,1) = 3.8;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,2,2,1) = 9.2;
results_fsl_ols(2,2,4,2,2,1) = 8.5;
results_fsl_ols(2,3,4,2,2,1) = 5.7;
results_fsl_ols(2,4,4,2,2,1) = 4.1;




% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,2,4,1) = 3.5;
results_fsl_ols(2,2,1,2,4,1) = 2.2;
results_fsl_ols(2,3,1,2,4,1) = 1.4;
results_fsl_ols(2,4,1,2,4,1) = 0.9;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,2,4,1) = 8.4;
results_fsl_ols(2,2,2,2,4,1) = 4.3;
results_fsl_ols(2,3,2,2,4,1) = 3.0;
results_fsl_ols(2,4,2,2,4,1) = 2.2;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,2,4,1) = 17.3;
results_fsl_ols(2,2,3,2,4,1) = 9.0;
results_fsl_ols(2,3,3,2,4,1) = 6.6;
results_fsl_ols(2,4,3,2,4,1) = 4.4;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,2,4,1) = 13.5;
results_fsl_ols(2,2,4,2,4,1) = 9.3;
results_fsl_ols(2,3,4,2,4,1) = 6.8;
results_fsl_ols(2,4,4,2,4,1) = 5.8;




