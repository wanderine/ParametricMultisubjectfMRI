% Cluster defining threshold, 1 = 0.01; 2 = 0.001
% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing, 3 = Oulu

% results(cluster defining threshold, smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------


%---------------------------------
% Cluster defining threshold 0.01
%---------------------------------

%---------------------------------
% Two-sample t-tests
%---------------------------------


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,1,1,3) = 5.2;
results_perm_ols(1,2,1,1,1,3) = 4.9;
results_perm_ols(1,3,1,1,1,3) = 5.0;
results_perm_ols(1,4,1,1,1,3) = 5.3;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,1,1,3) = 4.5;
results_perm_ols(1,2,2,1,1,3) = 4.4;
results_perm_ols(1,3,2,1,1,3) = 4.1;
results_perm_ols(1,4,2,1,1,3) = 4.1;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,1,1,3) = 4.4;
results_perm_ols(1,2,3,1,1,3) = 5.6;
results_perm_ols(1,3,3,1,1,3) = 5.4;
results_perm_ols(1,4,3,1,1,3) = 5.4;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,1,1,3) = 4.9;
results_perm_ols(1,2,4,1,1,3) = 5.1;
results_perm_ols(1,3,4,1,1,3) = 4.6;
results_perm_ols(1,4,4,1,1,3) = 4.9;





% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,1,2,3) = 5.7;
results_perm_ols(1,2,1,1,2,3) = 6.0;
results_perm_ols(1,3,1,1,2,3) = 5.8;
results_perm_ols(1,4,1,1,2,3) = 5.8;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,1,2,3) = 4.3;
results_perm_ols(1,2,2,1,2,3) = 4.0;
results_perm_ols(1,3,2,1,2,3) = 4.2;
results_perm_ols(1,4,2,1,2,3) = 4.1;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,1,2,3) = 4.8;
results_perm_ols(1,2,3,1,2,3) = 4.6;
results_perm_ols(1,3,3,1,2,3) = 4.6;
results_perm_ols(1,4,3,1,2,3) = 4.7;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,1,2,3) = 3.9;
results_perm_ols(1,2,4,1,2,3) = 4.0;
results_perm_ols(1,3,4,1,2,3) = 4.1;
results_perm_ols(1,4,4,1,2,3) = 4.3;





%---------------------------------
% One-sample t-tests
%---------------------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,2,2,3) = 9.5;
results_perm_ols(1,2,1,2,2,3) = 9.6; 
results_perm_ols(1,3,1,2,2,3) = 9.3; 
results_perm_ols(1,4,1,2,2,3) = 8.9; 

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,2,2,3) = 2.2; 
results_perm_ols(1,2,2,2,2,3) = 2.4; 
results_perm_ols(1,3,2,2,2,3) = 2.2; 
results_perm_ols(1,4,2,2,2,3) = 1.9;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,2,2,3) = 9.9; 
results_perm_ols(1,2,3,2,2,3) = 8.1; 
results_perm_ols(1,3,3,2,2,3) = 7.2; 
results_perm_ols(1,4,3,2,2,3) = 6.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,2,2,3) = 19.9; 
results_perm_ols(1,2,4,2,2,3) = 21.9; 
results_perm_ols(1,3,4,2,2,3) = 18.5; 
results_perm_ols(1,4,4,2,2,3) = 17.5;






% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,1,2,4,3) = 6.4;
results_perm_ols(1,2,1,2,4,3) = 6.9; 
results_perm_ols(1,3,1,2,4,3) = 7.7; 
results_perm_ols(1,4,1,2,4,3) = 7.4; 

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,2,2,4,3) = 1.1; 
results_perm_ols(1,2,2,2,4,3) = 0.7; 
results_perm_ols(1,3,2,2,4,3) = 0.7; 
results_perm_ols(1,4,2,2,4,3) = 0.8;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,3,2,4,3) = 14.7; 
results_perm_ols(1,2,3,2,4,3) = 13.3; 
results_perm_ols(1,3,3,2,4,3) = 8.6; 
results_perm_ols(1,4,3,2,4,3) = 6.8;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(1,1,4,2,4,3) = 35.2; 
results_perm_ols(1,2,4,2,4,3) = 39.4; 
results_perm_ols(1,3,4,2,4,3) = 34.1; 
results_perm_ols(1,4,4,2,4,3) = 31.7;


%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%---------------------------------
% Two-sample t-tests
%---------------------------------


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,1,1,3) = 4.8;
results_perm_ols(2,2,1,1,1,3) = 5.1;
results_perm_ols(2,3,1,1,1,3) = 5.1;
results_perm_ols(2,4,1,1,1,3) = 4.6;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,1,1,3) = 3.7;
results_perm_ols(2,2,2,1,1,3) = 4.2;
results_perm_ols(2,3,2,1,1,3) = 4.3;
results_perm_ols(2,4,2,1,1,3) = 4.5;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,1,1,3) = 5.7;
results_perm_ols(2,2,3,1,1,3) = 4.6;
results_perm_ols(2,3,3,1,1,3) = 4.7;
results_perm_ols(2,4,3,1,1,3) = 4.8;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,1,1,3) = 5.5;
results_perm_ols(2,2,4,1,1,3) = 5.6;
results_perm_ols(2,3,4,1,1,3) = 5.8;
results_perm_ols(2,4,4,1,1,3) = 5.9;




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,1,2,3) = 6.5;
results_perm_ols(2,2,1,1,2,3) = 6.0;
results_perm_ols(2,3,1,1,2,3) = 6.0;
results_perm_ols(2,4,1,1,2,3) = 6.5;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,1,2,3) = 4.1;
results_perm_ols(2,2,2,1,2,3) = 3.4;
results_perm_ols(2,3,2,1,2,3) = 3.5;
results_perm_ols(2,4,2,1,2,3) = 3.4;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,1,2,3) = 5.5;
results_perm_ols(2,2,3,1,2,3) = 4.8;
results_perm_ols(2,3,3,1,2,3) = 4.8;
results_perm_ols(2,4,3,1,2,3) = 4.5;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,1,2,3) = 4.6;
results_perm_ols(2,2,4,1,2,3) = 4.4;
results_perm_ols(2,3,4,1,2,3) = 4.2;
results_perm_ols(2,4,4,1,2,3) = 3.8;


%---------------------------------
% One-sample t-tests
%---------------------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,2,2,3) = 10.8;
results_perm_ols(2,2,1,2,2,3) = 10.9;
results_perm_ols(2,3,1,2,2,3) = 10.5;
results_perm_ols(2,4,1,2,2,3) = 10.3;


% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,2,2,3) = 2.9; 
results_perm_ols(2,2,2,2,2,3) = 2.6; 
results_perm_ols(2,3,2,2,2,3) = 2.5; 
results_perm_ols(2,4,2,2,2,3) = 2.5;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,2,2,3) = 11.1; 
results_perm_ols(2,2,3,2,2,3) = 9.6; 
results_perm_ols(2,3,3,2,2,3) = 8.0; 
results_perm_ols(2,4,3,2,2,3) = 6.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,2,2,3) = 17.1; 
results_perm_ols(2,2,4,2,2,3) = 17.1; 
results_perm_ols(2,3,4,2,2,3) = 15.5; 
results_perm_ols(2,4,4,2,2,3) = 14.4;





% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,1,2,4,3) = 10.3;
results_perm_ols(2,2,1,2,4,3) = 9.0;
results_perm_ols(2,3,1,2,4,3) = 9.0;
results_perm_ols(2,4,1,2,4,3) = 8.4;


% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,2,2,4,3) = 1.9; 
results_perm_ols(2,2,2,2,4,3) = 1.5; 
results_perm_ols(2,3,2,2,4,3) = 1.7; 
results_perm_ols(2,4,2,2,4,3) = 1.2;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,3,2,4,3) = 21.6; 
results_perm_ols(2,2,3,2,4,3) = 14.9; 
results_perm_ols(2,3,3,2,4,3) = 10.5; 
results_perm_ols(2,4,3,2,4,3) = 8.0;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_perm_ols(2,1,4,2,4,3) = 27.9; 
results_perm_ols(2,2,4,2,4,3) = 30.6; 
results_perm_ols(2,3,4,2,4,3) = 26.1; 
results_perm_ols(2,4,4,2,4,3) = 23.4;


