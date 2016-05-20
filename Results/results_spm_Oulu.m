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

results_spm_ols = zeros(2,4,4,2,4,2);

%-------------------------------------
% Cluster defining threshold 0.01
%-------------------------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,1,3) = 17.7;
results_spm_ols(1,2,1,1,1,3) = 14.3;
results_spm_ols(1,3,1,1,1,3) = 12.6;
results_spm_ols(1,4,1,1,1,3) = 10.7;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,1,3) = 13.8;
results_spm_ols(1,2,2,1,1,3) = 11.6;
results_spm_ols(1,3,2,1,1,3) = 9.1;
results_spm_ols(1,4,2,1,1,3) = 7.4;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,1,3) = 12.7;
results_spm_ols(1,2,3,1,1,3) = 12.6;
results_spm_ols(1,3,3,1,1,3) = 12.5;
results_spm_ols(1,4,3,1,1,3) = 12.3;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,1,3) = 15.9;
results_spm_ols(1,2,4,1,1,3) = 13.4;
results_spm_ols(1,3,4,1,1,3) = 10.9;
results_spm_ols(1,4,4,1,1,3) = 10.1;




 

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,2,3) = 17.5;
results_spm_ols(1,2,1,1,2,3) = 13.5;
results_spm_ols(1,3,1,1,2,3) = 11.4;
results_spm_ols(1,4,1,1,2,3) = 9.4;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,2,3) = 15.3;
results_spm_ols(1,2,2,1,2,3) = 12.2;
results_spm_ols(1,3,2,1,2,3) = 9.6;
results_spm_ols(1,4,2,1,2,3) = 7.6;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,2,3) = 13.3;
results_spm_ols(1,2,3,1,2,3) = 14.4;
results_spm_ols(1,3,3,1,2,3) = 13.8;
results_spm_ols(1,4,3,1,2,3) = 13.3;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,2,3) = 14.8;
results_spm_ols(1,2,4,1,2,3) = 12.6;
results_spm_ols(1,3,4,1,2,3) = 11.2;
results_spm_ols(1,4,4,1,2,3) = 9.7;





 
 
 
%-------------------------------------
% One-sample t-tests
%-------------------------------------
 
% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,1,2,2,3) = 15.1;
results_spm_ols(1,2,1,2,2,3) = 12.9;
results_spm_ols(1,3,1,2,2,3) = 10.6;
results_spm_ols(1,4,1,2,2,3) = 9.1;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,2,2,2,3) = 11.5;
results_spm_ols(1,2,2,2,2,3) = 8.2;
results_spm_ols(1,3,2,2,2,3) = 5.2;
results_spm_ols(1,4,2,2,2,3) = 3.9;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,3,2,2,3) = 20.3;
results_spm_ols(1,2,3,2,2,3) = 17.1;
results_spm_ols(1,3,3,2,2,3) = 14.5;
results_spm_ols(1,4,3,2,2,3) = 12.8;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,4,2,2,3) = 29.2;
results_spm_ols(1,2,4,2,2,3) = 26.1;
results_spm_ols(1,3,4,2,2,3) = 21.6;
results_spm_ols(1,4,4,2,2,3) = 20.2;
 







% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,1,2,4,3) = 10.3;
results_spm_ols(1,2,1,2,4,3) = 8.1;
results_spm_ols(1,3,1,2,4,3) = 6.1;
results_spm_ols(1,4,1,2,4,3) = 5.2;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,2,2,4,3) = 9.6;
results_spm_ols(1,2,2,2,4,3) = 7.3;
results_spm_ols(1,3,2,2,4,3) = 4.7;
results_spm_ols(1,4,2,2,4,3) = 2.7;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,3,2,4,3) = 28.8;
results_spm_ols(1,2,3,2,4,3) = 24.4;
results_spm_ols(1,3,3,2,4,3) = 19.4;
results_spm_ols(1,4,3,2,4,3) = 16.4;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,4,2,4,3) = 41.5;
results_spm_ols(1,2,4,2,4,3) = 35.2;
results_spm_ols(1,3,4,2,4,3) = 30.8;
results_spm_ols(1,4,4,2,4,3) = 28.8;





%-------------------------------------
% Cluster defining threshold 0.001
%-------------------------------------
 
%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm
% 
results_spm_ols(2,1,1,1,1,3) = 7.6;
results_spm_ols(2,2,1,1,1,3) = 6.6;
results_spm_ols(2,3,1,1,1,3) = 5.5;
results_spm_ols(2,4,1,1,1,3) = 5.5;
 
% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,1,1,3) = 4.5;
results_spm_ols(2,2,2,1,1,3) = 3.9;
results_spm_ols(2,3,2,1,1,3) = 3.6;
results_spm_ols(2,4,2,1,1,3) = 2.9;
 
% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,1,1,3) = 4.5;
results_spm_ols(2,2,3,1,1,3) = 5.2;
results_spm_ols(2,3,3,1,1,3) = 5.0;
results_spm_ols(2,4,3,1,1,3) = 5.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,1,1,3) = 4.9;
results_spm_ols(2,2,4,1,1,3) = 5.0;
results_spm_ols(2,3,4,1,1,3) = 5.4;
results_spm_ols(2,4,4,1,1,3) = 4.9;










% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
% 
results_spm_ols(2,1,1,1,2,3) = 5.7;
results_spm_ols(2,2,1,1,2,3) = 5.5;
results_spm_ols(2,3,1,1,2,3) = 4.8;
results_spm_ols(2,4,1,1,2,3) = 4.6;
 
% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,1,2,3) = 4.6;
results_spm_ols(2,2,2,1,2,3) = 3.4;
results_spm_ols(2,3,2,1,2,3) = 2.8;
results_spm_ols(2,4,2,1,2,3) = 2.4;
 
% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,1,2,3) = 5.1;
results_spm_ols(2,2,3,1,2,3) = 6.0;
results_spm_ols(2,3,3,1,2,3) = 6.0;
results_spm_ols(2,4,3,1,2,3) = 6.3;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,1,2,3) = 5.0;
results_spm_ols(2,2,4,1,2,3) = 4.5;
results_spm_ols(2,3,4,1,2,3) = 4.8;
results_spm_ols(2,4,4,1,2,3) = 4.8;



%-------------------------------------
% One-sample t-tests
%-------------------------------------
 
% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,1,2,2,3) = 7.0;
results_spm_ols(2,2,1,2,2,3) = 6.7;
results_spm_ols(2,3,1,2,2,3) = 6.1;
results_spm_ols(2,4,1,2,2,3) = 5.8;
 
% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,2,2,3) = 2.5;
results_spm_ols(2,2,2,2,2,3) = 1.6;
results_spm_ols(2,3,2,2,2,3) = 1.3;
results_spm_ols(2,4,2,2,2,3) = 1.2;
 
% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,2,2,3) = 8.0;
results_spm_ols(2,2,3,2,2,3) = 7.7;
results_spm_ols(2,3,3,2,2,3) = 7.4;
results_spm_ols(2,4,3,2,2,3) = 5.5;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,2,2,3) = 11.7;
results_spm_ols(2,2,4,2,2,3) = 11.0;
results_spm_ols(2,3,4,2,2,3) = 9.5;
results_spm_ols(2,4,4,2,2,3) = 9.4;








% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,1,2,4,3) = 4.8;
results_spm_ols(2,2,1,2,4,3) = 3.4;
results_spm_ols(2,3,1,2,4,3) = 2.5;
results_spm_ols(2,4,1,2,4,3) = 2.6;
 
% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,2,4,3) = 2.2;
results_spm_ols(2,2,2,2,4,3) = 1.6;
results_spm_ols(2,3,2,2,4,3) = 1.0;
results_spm_ols(2,4,2,2,4,3) = 0.6;
 
% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,2,4,3) = 12.6;
results_spm_ols(2,2,3,2,4,3) = 10.7;
results_spm_ols(2,3,3,2,4,3) = 8.5;
results_spm_ols(2,4,3,2,4,3) = 6.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Oulu
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,2,4,3) = 19.9;
results_spm_ols(2,2,4,2,4,3) = 16.9;
results_spm_ols(2,3,4,2,4,3) = 15.1;
results_spm_ols(2,4,4,2,4,3) = 13.6;

