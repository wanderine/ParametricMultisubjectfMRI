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

results_spm_ols = zeros(2,4,4,2,4,2);

%-------------------------------------
% Cluster defining threshold 0.01
%-------------------------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,1,1) = 28.2; %OK
results_spm_ols(1,2,1,1,1,1) = 23.3; %OK
results_spm_ols(1,3,1,1,1,1) = 19.3; %OK
results_spm_ols(1,4,1,1,1,1) = 17.0; %OK

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,1,1) = 23.8; %OK
results_spm_ols(1,2,2,1,1,1) = 18.0; %OK
results_spm_ols(1,3,2,1,1,1) = 13.7; %OK
results_spm_ols(1,4,2,1,1,1) = 11.4; %OK

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,1,1) = 23.5; %OK
results_spm_ols(1,2,3,1,1,1) = 22.6; %OK
results_spm_ols(1,3,3,1,1,1) = 22.8; %OK
results_spm_ols(1,4,3,1,1,1) = 25.2; %OK

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,1,1) = 27.0; %OK
results_spm_ols(1,2,4,1,1,1) = 25.0; %OK
results_spm_ols(1,3,4,1,1,1) = 23.0; %OK
results_spm_ols(1,4,4,1,1,1) = 21.7; %OK



% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,2,1) = 29.6; %OK
results_spm_ols(1,2,1,1,2,1) = 21.0; %OK
results_spm_ols(1,3,1,1,2,1) = 17.4; %OK
results_spm_ols(1,4,1,1,2,1) = 15.5; %OK

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,2,1) = 25.5; %OK
results_spm_ols(1,2,2,1,2,1) = 19.4; %OK
results_spm_ols(1,3,2,1,2,1) = 15.1; %OK
results_spm_ols(1,4,2,1,2,1) = 12.6; %OK

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,2,1) = 23.9; %OK
results_spm_ols(1,2,3,1,2,1) = 23.8; %OK
results_spm_ols(1,3,3,1,2,1) = 23.1; %OK
results_spm_ols(1,4,3,1,2,1) = 24.1; %OK

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,2,1) = 26.2; %OK
results_spm_ols(1,2,4,1,2,1) = 22.7; %OK
results_spm_ols(1,3,4,1,2,1) = 21.4; %OK
results_spm_ols(1,4,4,1,2,1) = 21.1; %OK




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,4,1) = 26.1; %OK
results_spm_ols(1,2,1,1,4,1) = 21.3; %OK
results_spm_ols(1,3,1,1,4,1) = 18.4; %OK
results_spm_ols(1,4,1,1,4,1) = 15.3; %OK


% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,2,1,4,1) = 21.7; %OK
results_spm_ols(1,2,2,1,4,1) = 15.8; %OK
results_spm_ols(1,3,2,1,4,1) = 12.1; %OK
results_spm_ols(1,4,2,1,4,1) = 10.0; %OK

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,4,1) = 23.6; %OK
results_spm_ols(1,2,3,1,4,1) = 22.8; %OK
results_spm_ols(1,3,3,1,4,1) = 21.0; %OK
results_spm_ols(1,4,3,1,4,1) = 22.6; %OK

% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,4,1) = 26.8; %OK
results_spm_ols(1,2,4,1,4,1) = 24.1; %OK
results_spm_ols(1,3,4,1,4,1) = 21.3; %OK
results_spm_ols(1,4,4,1,4,1) = 21.3; %OK

 


 
 
 
%-------------------------------------
% One-sample t-tests
%-------------------------------------
 
% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,1,2,2,1) = 21.5;
results_spm_ols(1,2,1,2,2,1) = 18.9;
results_spm_ols(1,3,1,2,2,1) = 15.2;
results_spm_ols(1,4,1,2,2,1) = 13.2;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,2,2,2,1) = 32.6;
results_spm_ols(1,2,2,2,2,1) = 25.8;
results_spm_ols(1,3,2,2,2,1) = 20.4;
results_spm_ols(1,4,2,2,2,1) = 18.4;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,3,2,2,1) = 23.7;
results_spm_ols(1,2,3,2,2,1) = 24.0;
results_spm_ols(1,3,3,2,2,1) = 23.3;
results_spm_ols(1,4,3,2,2,1) = 24.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,4,2,2,1) = 21.6;
results_spm_ols(1,2,4,2,2,1) = 17.1;
results_spm_ols(1,3,4,2,2,1) = 14.9;
results_spm_ols(1,4,4,2,2,1) = 15.0;
 




% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,1,2,4,1) = 21.5; %OK
results_spm_ols(1,2,1,2,4,1) = 16.3; %OK
results_spm_ols(1,3,1,2,4,1) = 11.3; %OK
results_spm_ols(1,4,1,2,4,1) = 9.6; %OK

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,2,2,4,1) = 37.5; %OK
results_spm_ols(1,2,2,2,4,1) = 30.8; %OK
results_spm_ols(1,3,2,2,4,1) = 24.9; %OK
results_spm_ols(1,4,2,2,4,1) = 22.5; %OK

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,3,2,4,1) = 25.8; %OK
results_spm_ols(1,2,3,2,4,1) = 22.8; %OK
results_spm_ols(1,3,3,2,4,1) = 20.9; %OK
results_spm_ols(1,4,3,2,4,1) = 20.0; %OK

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(1,1,4,2,4,1) = 18.7; %OK
results_spm_ols(1,2,4,2,4,1) = 13.4; %OK
results_spm_ols(1,3,4,2,4,1) = 10.6; %OK
results_spm_ols(1,4,4,2,4,1) = 9.6; %OK



%-------------------------------------
% Cluster defining threshold 0.001
%-------------------------------------
 
%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm
% 
results_spm_ols(2,1,1,1,1,1) = 9.7; %OK
results_spm_ols(2,2,1,1,1,1) = 9.3; %OK
results_spm_ols(2,3,1,1,1,1) = 8.0; %OK
results_spm_ols(2,4,1,1,1,1) = 7.4; %OK
 
% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,1,1,1) = 7.3; %OK
results_spm_ols(2,2,2,1,1,1) = 5.2; %OK
results_spm_ols(2,3,2,1,1,1) = 4.5; %OK
results_spm_ols(2,4,2,1,1,1) = 4.2; %OK
 
% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,1,1,1) = 7.6; %OK
results_spm_ols(2,2,3,1,1,1) = 8.9; %OK
results_spm_ols(2,3,3,1,1,1) = 9.8; %OK
results_spm_ols(2,4,3,1,1,1) = 11.7; %OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,1,1,1) = 10.0; %OK
results_spm_ols(2,2,4,1,1,1) = 9.9; %OK
results_spm_ols(2,3,4,1,1,1) = 10.2; %OK
results_spm_ols(2,4,4,1,1,1) = 10.4; %OK



% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
% 
results_spm_ols(2,1,1,1,2,1) = 8.7; %OK
results_spm_ols(2,2,1,1,2,1) = 8.4; %OK
results_spm_ols(2,3,1,1,2,1) = 7.1; %OK
results_spm_ols(2,4,1,1,2,1) = 6.8; %OK
 
 
% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,1,2,1) = 9.0; %OK
results_spm_ols(2,2,2,1,2,1) = 7.3; %OK
results_spm_ols(2,3,2,1,2,1) = 6.6; %OK
results_spm_ols(2,4,2,1,2,1) = 5.9; %OK
 
% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,1,2,1) = 8.1; %OK
results_spm_ols(2,2,3,1,2,1) = 7.8; %OK
results_spm_ols(2,3,3,1,2,1) = 9.0; %OK
results_spm_ols(2,4,3,1,2,1) = 10.6; %OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,1,2,1) = 9.3; %OK
results_spm_ols(2,2,4,1,2,1) = 8.8; %OK
results_spm_ols(2,3,4,1,2,1) = 8.3; %OK
results_spm_ols(2,4,4,1,2,1) = 8.5; %OK

 







% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,1,1,4,1) = 8.4; %OK
results_spm_ols(2,2,1,1,4,1) = 8.0; %OK
results_spm_ols(2,3,1,1,4,1) = 6.9; %OK
results_spm_ols(2,4,1,1,4,1) = 6.8; %OK


% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,1,4,1) = 7.7; %OK
results_spm_ols(2,2,2,1,4,1) = 6.2; %OK
results_spm_ols(2,3,2,1,4,1) = 4.8; %OK
results_spm_ols(2,4,2,1,4,1) = 4.3; %OK
 
% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,1,4,1) = 7.3; %OK
results_spm_ols(2,2,3,1,4,1) = 9.1; %OK
results_spm_ols(2,3,3,1,4,1) = 10.2; %OK
results_spm_ols(2,4,3,1,4,1) = 11.0; %OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,1,4,1) = 8.6; %OK
results_spm_ols(2,2,4,1,4,1) = 8.4; %OK
results_spm_ols(2,3,4,1,4,1) = 7.8; %OK
results_spm_ols(2,4,4,1,4,1) = 8.2; %OK


%-------------------------------------
% One-sample t-tests
%-------------------------------------
 
% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,1,2,2,1) = 7.2;
results_spm_ols(2,2,1,2,2,1) = 7.3;
results_spm_ols(2,3,1,2,2,1) = 6.2;
results_spm_ols(2,4,1,2,2,1) = 5.9;
 
% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,2,2,1) = 9.9;
results_spm_ols(2,2,2,2,2,1) = 8.9;
results_spm_ols(2,3,2,2,2,1) = 8.4;
results_spm_ols(2,4,2,2,2,1) = 7.3;
 
% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,2,2,1) = 7.3;
results_spm_ols(2,2,3,2,2,1) = 8.5;
results_spm_ols(2,3,3,2,2,1) = 9.0;
results_spm_ols(2,4,3,2,2,1) = 10.8;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,2,2,1) = 6.0;
results_spm_ols(2,2,4,2,2,1) = 6.8;
results_spm_ols(2,3,4,2,2,1) = 6.0;
results_spm_ols(2,4,4,2,2,1) = 6.1;




% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,1,2,4,1) = 5.5; %OK
results_spm_ols(2,2,1,2,4,1) = 5.1; %OK
results_spm_ols(2,3,1,2,4,1) = 3.9; %OK
results_spm_ols(2,4,1,2,4,1) = 3.6; %OK
 
% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,2,2,4,1) = 10.7; %OK
results_spm_ols(2,2,2,2,4,1) = 10.9; %OK
results_spm_ols(2,3,2,2,4,1) = 9.2; %OK
results_spm_ols(2,4,2,2,4,1) = 7.8; %OK
 
% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,3,2,4,1) = 8.9; %OK
results_spm_ols(2,2,3,2,4,1) = 10.3; %OK
results_spm_ols(2,3,3,2,4,1) = 10.6; %OK
results_spm_ols(2,4,3,2,4,1) = 10.3; %OK

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm
 
results_spm_ols(2,1,4,2,4,1) = 4.7; %OK
results_spm_ols(2,2,4,2,4,1) = 4.4; %OK
results_spm_ols(2,3,4,2,4,1) = 4.3; %OK
results_spm_ols(2,4,4,2,4,1) = 3.9; %OK




