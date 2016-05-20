% Cluster defining threshold, 1 = 0.01; 2 = 0.001
% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(cluster defining threshold, smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

results_perm_ols = zeros(2,4,4,2,4,2);

%---------------------------------
% Cluster defining threshold 0.01
%---------------------------------

%---------------------------------
% Two-sample t-tests
%---------------------------------


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,1,1,1) = 5.1;
results_perm_ols(1,2,1,1,1,1) = 5.2;
results_perm_ols(1,3,1,1,1,1) = 4.8;
results_perm_ols(1,4,1,1,1,1) = 4.5;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,1,1,1) = 4.5;
results_perm_ols(1,2,2,1,1,1) = 4.3;
results_perm_ols(1,3,2,1,1,1) = 4.2;
results_perm_ols(1,4,2,1,1,1) = 4.3;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,1,1,1) = 5.0;
results_perm_ols(1,2,3,1,1,1) = 5.2;
results_perm_ols(1,3,3,1,1,1) = 5.1;
results_perm_ols(1,4,3,1,1,1) = 4.6;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,1,1,1) = 4.7;
results_perm_ols(1,2,4,1,1,1) = 5.0;
results_perm_ols(1,3,4,1,1,1) = 4.7;
results_perm_ols(1,4,4,1,1,1) = 4.9;




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,1,2,1) = 5.0;
results_perm_ols(1,2,1,1,2,1) = 5.0;
results_perm_ols(1,3,1,1,2,1) = 4.7;
results_perm_ols(1,4,1,1,2,1) = 4.7;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,1,2,1) = 5.0;
results_perm_ols(1,2,2,1,2,1) = 5.6;
results_perm_ols(1,3,2,1,2,1) = 5.3;
results_perm_ols(1,4,2,1,2,1) = 5.7;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,1,2,1) = 4.8;
results_perm_ols(1,2,3,1,2,1) = 4.9;
results_perm_ols(1,3,3,1,2,1) = 4.9;
results_perm_ols(1,4,3,1,2,1) = 4.7;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,1,2,1) = 5.1;
results_perm_ols(1,2,4,1,2,1) = 5.1;
results_perm_ols(1,3,4,1,2,1) = 5.1;
results_perm_ols(1,4,4,1,2,1) = 5.0;




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,1,4,1) = 6.4;
results_perm_ols(1,2,1,1,4,1) = 5.6;
results_perm_ols(1,3,1,1,4,1) = 5.6;
results_perm_ols(1,4,1,1,4,1) = 6.1;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,1,4,1) = 5.9;
results_perm_ols(1,2,2,1,4,1) = 5.6;
results_perm_ols(1,3,2,1,4,1) = 5.8;
results_perm_ols(1,4,2,1,4,1) = 5.5;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,1,4,1) = 3.6;
results_perm_ols(1,2,3,1,4,1) = 3.8;
results_perm_ols(1,3,3,1,4,1) = 3.9;
results_perm_ols(1,4,3,1,4,1) = 4.3;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,1,4,1) = 5.8;
results_perm_ols(1,2,4,1,4,1) = 5.5;
results_perm_ols(1,3,4,1,4,1) = 6.6;
results_perm_ols(1,4,4,1,4,1) = 6.3;



%---------------------------------
% One-sample t-tests
%---------------------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,2,2,1) = 2.1;
results_perm_ols(1,2,1,2,2,1) = 1.7;
results_perm_ols(1,3,1,2,2,1) = 2.1;
results_perm_ols(1,4,1,2,2,1) = 2.0;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,2,2,1) = 3.7; 
results_perm_ols(1,2,2,2,2,1) = 4.0; 
results_perm_ols(1,3,2,2,2,1) = 4.2; 
results_perm_ols(1,4,2,2,2,1) = 4.5;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,2,2,1) = 5.8; 
results_perm_ols(1,2,3,2,2,1) = 5.3; 
results_perm_ols(1,3,3,2,2,1) = 4.0; 
results_perm_ols(1,4,3,2,2,1) = 3.6;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,2,2,1) = 4.9; 
results_perm_ols(1,2,4,2,2,1) = 5.7; 
results_perm_ols(1,3,4,2,2,1) = 5.5; 
results_perm_ols(1,4,4,2,2,1) = 5.1;





% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,2,4,1) = 0.8;
results_perm_ols(1,2,1,2,4,1) = 0.7;
results_perm_ols(1,3,1,2,4,1) = 0.8;
results_perm_ols(1,4,1,2,4,1) = 0.8;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,2,4,1) = 3.4; 
results_perm_ols(1,2,2,2,4,1) = 3.1; 
results_perm_ols(1,3,2,2,4,1) = 3.0; 
results_perm_ols(1,4,2,2,4,1) = 3.3;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,2,4,1) = 8.5; 
results_perm_ols(1,2,3,2,4,1) = 4.6; 
results_perm_ols(1,3,3,2,4,1) = 3.8; 
results_perm_ols(1,4,3,2,4,1) = 3.3;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,2,4,1) = 5.3; 
results_perm_ols(1,2,4,2,4,1) = 5.1; 
results_perm_ols(1,3,4,2,4,1) = 4.9; 
results_perm_ols(1,4,4,2,4,1) = 4.9;



%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%---------------------------------
% Two-sample t-tests
%---------------------------------


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,1,1,1) = 4.4;
results_perm_ols(2,2,1,1,1,1) = 5.1;
results_perm_ols(2,3,1,1,1,1) = 4.6;
results_perm_ols(2,4,1,1,1,1) = 4.7;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,1,1,1) = 5.0;
results_perm_ols(2,2,2,1,1,1) = 4.1;
results_perm_ols(2,3,2,1,1,1) = 4.0;
results_perm_ols(2,4,2,1,1,1) = 4.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,1,1,1) = 5.0;
results_perm_ols(2,2,3,1,1,1) = 5.2;
results_perm_ols(2,3,3,1,1,1) = 5.1;
results_perm_ols(2,4,3,1,1,1) = 4.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,1,1,1) = 4.7;
results_perm_ols(2,2,4,1,1,1) = 5.0;
results_perm_ols(2,3,4,1,1,1) = 4.7;
results_perm_ols(2,4,4,1,1,1) = 4.9;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,1,2,1) = 4.6;
results_perm_ols(2,2,1,1,2,1) = 4.9;
results_perm_ols(2,3,1,1,2,1) = 5.0;
results_perm_ols(2,4,1,1,2,1) = 4.7;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,1,2,1) = 4.7;
results_perm_ols(2,2,2,1,2,1) = 5.2;
results_perm_ols(2,3,2,1,2,1) = 5.5;
results_perm_ols(2,4,2,1,2,1) = 5.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,1,2,1) = 5.4;
results_perm_ols(2,2,3,1,2,1) = 4.9;
results_perm_ols(2,3,3,1,2,1) = 5.5;
results_perm_ols(2,4,3,1,2,1) = 5.1;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,1,2,1) = 5.1;
results_perm_ols(2,2,4,1,2,1) = 4.6;
results_perm_ols(2,3,4,1,2,1) = 5.2;
results_perm_ols(2,4,4,1,2,1) = 5.2;




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,1,4,1) = 6.3;
results_perm_ols(2,2,1,1,4,1) = 6.3;
results_perm_ols(2,3,1,1,4,1) = 6.4;
results_perm_ols(2,4,1,1,4,1) = 6.0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,1,4,1) = 5.8;
results_perm_ols(2,2,2,1,4,1) = 5.1;
results_perm_ols(2,3,2,1,4,1) = 5.5;
results_perm_ols(2,4,2,1,4,1) = 5.5;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,1,4,1) = 4.3;
results_perm_ols(2,2,3,1,4,1) = 4.0;
results_perm_ols(2,3,3,1,4,1) = 4.3;
results_perm_ols(2,4,3,1,4,1) = 4.0;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,1,4,1) = 6.7;
results_perm_ols(2,2,4,1,4,1) = 5.7;
results_perm_ols(2,3,4,1,4,1) = 4.8;
results_perm_ols(2,4,4,1,4,1) = 5.3;





%---------------------------------
% One-sample t-tests
%---------------------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,2,2,1) = 2.5;
results_perm_ols(2,2,1,2,2,1) = 2.3;
results_perm_ols(2,3,1,2,2,1) = 2.5;
results_perm_ols(2,4,1,2,2,1) = 2.4;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,2,2,1) = 3.8; 
results_perm_ols(2,2,2,2,2,1) = 4.6; 
results_perm_ols(2,3,2,2,2,1) = 4.2; 
results_perm_ols(2,4,2,2,2,1) = 4.0;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,2,2,1) = 5.4; 
results_perm_ols(2,2,3,2,2,1) = 5.3; 
results_perm_ols(2,3,3,2,2,1) = 5.2; 
results_perm_ols(2,4,3,2,2,1) = 4.8;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,2,2,1) = 5.6; 
results_perm_ols(2,2,4,2,2,1) = 5.5; 
results_perm_ols(2,3,4,2,2,1) = 5.7; 
results_perm_ols(2,4,4,2,2,1) = 6.0;




% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,2,4,1) = 1.2;
results_perm_ols(2,2,1,2,4,1) = 1.3;
results_perm_ols(2,3,1,2,4,1) = 1.0;
results_perm_ols(2,4,1,2,4,1) = 1.1;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,2,4,1) = 3.4; 
results_perm_ols(2,2,2,2,4,1) = 3.6; 
results_perm_ols(2,3,2,2,4,1) = 3.2; 
results_perm_ols(2,4,2,2,4,1) = 2.9;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,2,4,1) = 11.5; 
results_perm_ols(2,2,3,2,4,1) = 6.7; 
results_perm_ols(2,3,3,2,4,1) = 5.0; 
results_perm_ols(2,4,3,2,4,1) = 4.8;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,2,4,1) = 6.4; 
results_perm_ols(2,2,4,2,4,1) = 6.8; 
results_perm_ols(2,3,4,2,4,1) = 6.1; 
results_perm_ols(2,4,4,2,4,1) = 5.8;




