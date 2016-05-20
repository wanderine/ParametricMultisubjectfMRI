% Cluster defining threshold, 1 = 0.01; 2 = 0.001
% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing, 3 = Oulu

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

results_fsl_flame1(1,1,1,1,1,3) = 1.3;
results_fsl_flame1(1,2,1,1,1,3) = 1.7;
results_fsl_flame1(1,3,1,1,1,3) = 2.1;
results_fsl_flame1(1,4,1,1,1,3) = 2.2;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,1,3) = 7.6;
results_fsl_flame1(1,2,2,1,1,3) = 5.3;
results_fsl_flame1(1,3,2,1,1,3) = 4.1;
results_fsl_flame1(1,4,2,1,1,3) = 3.8;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,1,3) = 0.1;
results_fsl_flame1(1,2,3,1,1,3) = 0.2;
results_fsl_flame1(1,3,3,1,1,3) = 0.5;
results_fsl_flame1(1,4,3,1,1,3) = 0.6;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,1,3) = 0.4;
results_fsl_flame1(1,2,4,1,1,3) = 0.7;
results_fsl_flame1(1,3,4,1,1,3) = 1.6;
results_fsl_flame1(1,4,4,1,1,3) = 1.3;






% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,2,3) = 6.9;
results_fsl_flame1(1,2,1,1,2,3) = 7.2;
results_fsl_flame1(1,3,1,1,2,3) = 6.7;
results_fsl_flame1(1,4,1,1,2,3) = 6.2;


% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,1,2,3) = 12.6;
results_fsl_flame1(1,2,2,1,2,3) = 10.7;
results_fsl_flame1(1,3,2,1,2,3) = 7.5;
results_fsl_flame1(1,4,2,1,2,3) = 6.0;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,1,2,3) = 0.8;
results_fsl_flame1(1,2,3,1,2,3) = 1.6;
results_fsl_flame1(1,3,3,1,2,3) = 3.2;
results_fsl_flame1(1,4,3,1,2,3) = 3.8;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,1,2,3) = 2.8;
results_fsl_flame1(1,2,4,1,2,3) = 3.2;
results_fsl_flame1(1,3,4,1,2,3) = 3.7;
results_fsl_flame1(1,4,4,1,2,3) = 2.9;







%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,2,3) = 16.7;
results_fsl_flame1(1,2,1,2,2,3) = 15.8;
results_fsl_flame1(1,3,1,2,2,3) = 15.8;
results_fsl_flame1(1,4,1,2,2,3) = 14.8;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,2,3) = 10.7;
results_fsl_flame1(1,2,2,2,2,3) = 7.7;
results_fsl_flame1(1,3,2,2,2,3) = 5.9;
results_fsl_flame1(1,4,2,2,2,3) = 4.2;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,2,2,3) = 2.2;
results_fsl_flame1(1,2,3,2,2,3) = 4.2;
results_fsl_flame1(1,3,3,2,2,3) = 5.1;
results_fsl_flame1(1,4,3,2,2,3) = 4.0;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,2,2,3) = 10.0;
results_fsl_flame1(1,2,4,2,2,3) = 15.3;
results_fsl_flame1(1,3,4,2,2,3) = 15.8;
results_fsl_flame1(1,4,4,2,2,3) = 14.1;




% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,4,3) = 25.6;
results_fsl_flame1(1,2,1,2,4,3) = 25.1;
results_fsl_flame1(1,3,1,2,4,3) = 21.4;	
results_fsl_flame1(1,4,1,2,4,3) = 19.0;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,4,3) = 13.1;
results_fsl_flame1(1,2,2,2,4,3) = 9.5;
results_fsl_flame1(1,3,2,2,4,3) = 5.8;
results_fsl_flame1(1,4,2,2,4,3) = 3.2;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,3,2,4,3) = 10.9;
results_fsl_flame1(1,2,3,2,4,3) = 15.2;
results_fsl_flame1(1,3,3,2,4,3) = 13.4;
results_fsl_flame1(1,4,3,2,4,3) = 9.3;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,4,2,4,3) = 29.0;
results_fsl_flame1(1,2,4,2,4,3) = 40.9;
results_fsl_flame1(1,3,4,2,4,3) = 38.5;
results_fsl_flame1(1,4,4,2,4,3) = 33.7;


%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,1,3) = 0;
results_fsl_flame1(2,1,1,1,1,3) = 0;
results_fsl_flame1(2,1,1,1,1,3) = 0;
results_fsl_flame1(2,1,1,1,1,3) = 0;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,1,3) = 0.1;
results_fsl_flame1(2,2,2,1,1,3) = 0;
results_fsl_flame1(2,3,2,1,1,3) = 0.2;
results_fsl_flame1(2,4,2,1,1,3) = 0.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,1,3) = 0; % OK
results_fsl_flame1(2,2,3,1,1,3) = 0; % OK
results_fsl_flame1(2,3,3,1,1,3) = 0; % OK
results_fsl_flame1(2,4,3,1,1,3) = 0; % OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,1,3) = 0; % OK
results_fsl_flame1(2,2,4,1,1,3) = 0; % OK
results_fsl_flame1(2,3,4,1,1,3) = 0; % OK
results_fsl_flame1(2,4,4,1,1,3) = 0; % OK




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,1,2,3) = 0.6;
results_fsl_flame1(2,1,1,1,2,3) = 1.3;
results_fsl_flame1(2,1,1,1,2,3) = 1.4;
results_fsl_flame1(2,1,1,1,2,3) = 1.6;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,1,2,3) = 1.8;
results_fsl_flame1(2,2,2,1,2,3) = 1.4;
results_fsl_flame1(2,3,2,1,2,3) = 1.2;
results_fsl_flame1(2,4,2,1,2,3) = 1.1;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,1,2,3) = 0;
results_fsl_flame1(2,2,3,1,2,3) = 0;
results_fsl_flame1(2,3,3,1,2,3) = 0.1;
results_fsl_flame1(2,4,3,1,2,3) = 0.3;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,1,2,3) = 0.2;
results_fsl_flame1(2,2,4,1,2,3) = 0.1;
results_fsl_flame1(2,3,4,1,2,3) = 0.3;
results_fsl_flame1(2,4,4,1,2,3) = 0.4;








%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,2,2,3) = 1.2;
results_fsl_flame1(2,1,1,2,2,3) = 1.8;
results_fsl_flame1(2,1,1,2,2,3) = 2.4;
results_fsl_flame1(2,1,1,2,2,3) = 2.8;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,2,2,3) = 1.5;
results_fsl_flame1(2,2,2,2,2,3) = 1.3;
results_fsl_flame1(2,3,2,2,2,3) = 1.1;
results_fsl_flame1(2,4,2,2,2,3) = 1.2;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,2,2,3) = 0;
results_fsl_flame1(2,2,3,2,2,3) = 0; 
results_fsl_flame1(2,3,3,2,2,3) = 0.4;
results_fsl_flame1(2,4,3,2,2,3) = 0.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,2,2,3) = 0;
results_fsl_flame1(2,2,4,2,2,3) = 0.8;
results_fsl_flame1(2,3,4,2,2,3) = 1.3;	
results_fsl_flame1(2,4,4,2,2,3) = 1.6;





% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,1,2,4,3) = 3.9;
results_fsl_flame1(2,1,1,2,4,3) = 5.3;
results_fsl_flame1(2,1,1,2,4,3) = 5.2;
results_fsl_flame1(2,1,1,2,4,3) = 5.4;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,2,2,4,3) = 1.7;
results_fsl_flame1(2,2,2,2,4,3) = 1.4;
results_fsl_flame1(2,3,2,2,4,3) = 1.5;
results_fsl_flame1(2,4,2,2,4,3) = 0.9;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,3,2,4,3) = 0.5; 
results_fsl_flame1(2,2,3,2,4,3) = 1.6; 
results_fsl_flame1(2,3,3,2,4,3) = 2.2;
results_fsl_flame1(2,4,3,2,4,3) = 1.8;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(2,1,4,2,4,3) = 1.8;
results_fsl_flame1(2,2,4,2,4,3) = 9.5;
results_fsl_flame1(2,3,4,2,4,3) = 13.4;	
results_fsl_flame1(2,4,4,2,4,3) = 13.1;




















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

results_fsl_ols(1,1,1,1,1,3) = 36.7;
results_fsl_ols(1,2,1,1,1,3) = 21.6;
results_fsl_ols(1,3,1,1,1,3) = 15.6;
results_fsl_ols(1,4,1,1,1,3) = 11.1;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,1,3) = 30.8;
results_fsl_ols(1,2,2,1,1,3) = 19.1;
results_fsl_ols(1,3,2,1,1,3) = 13.5;
results_fsl_ols(1,4,2,1,1,3) = 9.9;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,1,3) = 38.8;
results_fsl_ols(1,2,3,1,1,3) = 21.2;
results_fsl_ols(1,3,3,1,1,3) = 15.3;
results_fsl_ols(1,4,3,1,1,3) = 12.9;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,1,3) = 37.6;
results_fsl_ols(1,2,4,1,1,3) = 20.9;
results_fsl_ols(1,3,4,1,1,3) = 16.1;
results_fsl_ols(1,4,4,1,1,3) = 11.7;





% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,2,3) = 36.1;
results_fsl_ols(1,2,1,1,2,3) = 22.5;
results_fsl_ols(1,3,1,1,2,3) = 14.6;
results_fsl_ols(1,4,1,1,2,3) = 11.0;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,1,2,3) = 28.5;
results_fsl_ols(1,2,2,1,2,3) = 18.4;
results_fsl_ols(1,3,2,1,2,3) = 11.5;
results_fsl_ols(1,4,2,1,2,3) = 9.0;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,1,2,3) = 36.2;
results_fsl_ols(1,2,3,1,2,3) = 21.1;
results_fsl_ols(1,3,3,1,2,3) = 15.8;
results_fsl_ols(1,4,3,1,2,3) = 12.7;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,1,2,3) = 34.6;
results_fsl_ols(1,2,4,1,2,3) = 21.0;
results_fsl_ols(1,3,4,1,2,3) = 13.7;
results_fsl_ols(1,4,4,1,2,3) = 10.2;







%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,2,3) = 51.8;
results_fsl_ols(1,2,1,2,2,3) = 34.9;
results_fsl_ols(1,3,1,2,2,3) = 25.0;
results_fsl_ols(1,4,1,2,2,3) = 19.6;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,2,3) = 22.4;
results_fsl_ols(1,2,2,2,2,3) = 13.1;
results_fsl_ols(1,3,2,2,2,3) = 7.9;
results_fsl_ols(1,4,2,2,2,3) = 5.4;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,2,2,3) = 51.1;
results_fsl_ols(1,2,3,2,2,3) = 30.5;
results_fsl_ols(1,3,3,2,2,3) = 21.0;
results_fsl_ols(1,4,3,2,2,3) = 15.1;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,2,2,3) = 60.9;
results_fsl_ols(1,2,4,2,2,3) = 44.4;
results_fsl_ols(1,3,4,2,2,3) = 34.6;
results_fsl_ols(1,4,4,2,2,3) = 29.1;






% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,4,3) = 56.0;
results_fsl_ols(1,2,1,2,4,3) = 36.5;
results_fsl_ols(1,3,1,2,4,3) = 23.7;
results_fsl_ols(1,4,1,2,4,3) = 17.2;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,4,3) = 20.4;
results_fsl_ols(1,2,2,2,4,3) = 12.5;
results_fsl_ols(1,3,2,2,4,3) = 6.4;
results_fsl_ols(1,4,2,2,4,3) = 4.2;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,3,2,4,3) = 72.8;
results_fsl_ols(1,2,3,2,4,3) = 43.2;
results_fsl_ols(1,3,3,2,4,3) = 26.1;
results_fsl_ols(1,4,3,2,4,3) = 18.3;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,4,2,4,3) = 48.5;
results_fsl_ols(1,2,4,2,4,3) = 63.3;
results_fsl_ols(1,3,4,2,4,3) = 53.3;
results_fsl_ols(1,4,4,2,4,3) = 48.4;



%----------------------------------
% Cluster defining threshold 0.001
%----------------------------------

%-----------------------
% Two-sample t-tests
%-----------------------


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,1,3) = 10.4;
results_fsl_ols(2,2,1,1,1,3) = 5.2;
results_fsl_ols(2,3,1,1,1,3) = 3.6;
results_fsl_ols(2,4,1,1,1,3) = 3.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,1,3) = 7.8;
results_fsl_ols(2,2,2,1,1,3) = 4.6;
results_fsl_ols(2,3,2,1,1,3) = 3.4;
results_fsl_ols(2,4,2,1,1,3) = 2.6;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,1,3) = 11.9;
results_fsl_ols(2,2,3,1,1,3) = 5.4;
results_fsl_ols(2,3,3,1,1,3) = 4.9;
results_fsl_ols(2,4,3,1,1,3) = 4.4;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,1,3) = 12.0;
results_fsl_ols(2,2,4,1,1,3) = 6.4;
results_fsl_ols(2,3,4,1,1,3) = 5.7;
results_fsl_ols(2,4,4,1,1,3) = 4.5;




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,1,2,3) = 12.6;
results_fsl_ols(2,2,1,1,2,3) = 7.9;
results_fsl_ols(2,3,1,1,2,3) = 5.9;
results_fsl_ols(2,4,1,1,2,3) = 5.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,1,2,3) = 8.0;
results_fsl_ols(2,2,2,1,2,3) = 4.5;
results_fsl_ols(2,3,2,1,2,3) = 3.1;
results_fsl_ols(2,4,2,1,2,3) = 2.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,1,2,3) = 12.6;
results_fsl_ols(2,2,3,1,2,3) = 6.3;
results_fsl_ols(2,3,3,1,2,3) = 5.5;
results_fsl_ols(2,4,3,1,2,3) = 4.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,1,2,3) = 12.4;
results_fsl_ols(2,2,4,1,2,3) = 6.8;
results_fsl_ols(2,3,4,1,2,3) = 4.5;
results_fsl_ols(2,4,4,1,2,3) = 3.5;








%-----------------------
% One-sample t-tests
%-----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,2,2,3) = 21.4;
results_fsl_ols(2,2,1,2,2,3) = 12.8;
results_fsl_ols(2,3,1,2,2,3) = 10.1;
results_fsl_ols(2,4,1,2,2,3) = 8.2;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,2,2,3) = 4.7;
results_fsl_ols(2,2,2,2,2,3) = 2.4;
results_fsl_ols(2,3,2,2,2,3) = 1.6;
results_fsl_ols(2,4,2,2,2,3) = 1.4;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,2,2,3) = 21.4;
results_fsl_ols(2,2,3,2,2,3) = 9.3;
results_fsl_ols(2,3,3,2,2,3) = 7.5;
results_fsl_ols(2,4,3,2,2,3) = 5.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,2,2,3) = 27.3;
results_fsl_ols(2,2,4,2,2,3) = 17.8;
results_fsl_ols(2,3,4,2,2,3) = 13.6;
results_fsl_ols(2,4,4,2,2,3) = 12.8;








% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,1,2,4,3) = 21.7;
results_fsl_ols(2,2,1,2,4,3) = 12.5;
results_fsl_ols(2,3,1,2,4,3) = 8.5;
results_fsl_ols(2,4,1,2,4,3) = 6.8;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,2,2,4,3) = 3.5;
results_fsl_ols(2,2,2,2,4,3) = 1.7;
results_fsl_ols(2,3,2,2,4,3) = 1.3;
results_fsl_ols(2,4,2,2,4,3) = 0.8;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,3,2,4,3) = 44.1;
results_fsl_ols(2,2,3,2,4,3) = 18.9;
results_fsl_ols(2,3,3,2,4,3) = 11.2;
results_fsl_ols(2,4,3,2,4,3) = 8.0;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(2,1,4,2,4,3) = 28.1;
results_fsl_ols(2,2,4,2,4,3) = 34.2;
results_fsl_ols(2,3,4,2,4,3) = 26.1;
results_fsl_ols(2,4,4,2,4,3) = 20.7;









