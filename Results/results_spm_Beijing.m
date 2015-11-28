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

%-------------------------------------
% Cluster defining threshold 0.01
%-------------------------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,1,2) = 24.6; %OK
results_spm_ols(1,2,1,1,1,2) = 19.1; %OK
results_spm_ols(1,3,1,1,1,2) = 15.0; %OK
results_spm_ols(1,4,1,1,1,2) = 12.1; %OK

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,1,2) = 22.6; %OK
results_spm_ols(1,2,2,1,1,2) = 17.1; %OK
results_spm_ols(1,3,2,1,1,2) = 13.4; %OK
results_spm_ols(1,4,2,1,1,2) = 11.2; %OK

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,1,2) = 20.0; %OK
results_spm_ols(1,2,3,1,1,2) = 21.1; %OK
results_spm_ols(1,3,3,1,1,2) = 20.4; %OK
results_spm_ols(1,4,3,1,1,2) = 21.3; %OK

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,1,2) = 24.3; %OK
results_spm_ols(1,2,4,1,1,2) = 19.7; %OK
results_spm_ols(1,3,4,1,1,2) = 18.0; %OK
results_spm_ols(1,4,4,1,1,2) = 17.4; %OK






% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,2,2) = 23.9; %OK
results_spm_ols(1,2,1,1,2,2) = 19.3; %OK
results_spm_ols(1,3,1,1,2,2) = 14.9; %OK
results_spm_ols(1,4,1,1,2,2) = 11.6; %OK

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,2,2) = 21.3; %OK
results_spm_ols(1,2,2,1,2,2) = 16.0; %OK
results_spm_ols(1,3,2,1,2,2) = 12.8; %OK
results_spm_ols(1,4,2,1,2,2) = 9.7; %OK

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,2,2) = 21.5; %OK
results_spm_ols(1,2,3,1,2,2) = 20.2; %OK
results_spm_ols(1,3,3,1,2,2) = 20.7; %OK
results_spm_ols(1,4,3,1,2,2) = 22.4; %OK

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,2,2) = 24.1; %OK
results_spm_ols(1,2,4,1,2,2) = 19.5; %OK
results_spm_ols(1,3,4,1,2,2) = 17.2; %OK
results_spm_ols(1,4,4,1,2,2) = 16.3; %OK



% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,3,2) = 20.9;
results_spm_ols(1,2,1,1,3,2) = 16.2;
results_spm_ols(1,3,1,1,3,2) = 11.4;
results_spm_ols(1,4,1,1,3,2) = 9.6;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,3,2) = 22.2;
results_spm_ols(1,2,2,1,3,2) = 15.3;
results_spm_ols(1,3,2,1,3,2) = 11.7;
results_spm_ols(1,4,2,1,3,2) = 8.4;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,3,2) = 21.4;
results_spm_ols(1,2,3,1,3,2) = 20.8;
results_spm_ols(1,3,3,1,3,2) = 20.9;
results_spm_ols(1,4,3,1,3,2) = 22.0;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,3,2) = 23.8;
results_spm_ols(1,2,4,1,3,2) = 20.0;
results_spm_ols(1,3,4,1,3,2) = 17.6;
results_spm_ols(1,4,4,1,3,2) = 16.1;









% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,4,2) = 26.3; %OK
results_spm_ols(1,2,1,1,4,2) = 19.8; %OK
results_spm_ols(1,3,1,1,4,2) = 14.8; %OK
results_spm_ols(1,4,1,1,4,2) = 12.1; %OK

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,1,4,2) = 24.4; %OK
results_spm_ols(1,2,2,1,4,2) = 17.9; %OK
results_spm_ols(1,3,2,1,4,2) = 13.7; %OK
results_spm_ols(1,4,2,1,4,2) = 11.5; %OK

% Cluster defining threshold 0.01, event1, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,1,4,2) = 23.0; %OK
results_spm_ols(1,2,3,1,4,2) = 21.4; %OK
results_spm_ols(1,3,3,1,4,2) = 20.6; %OK
results_spm_ols(1,4,3,1,4,2) = 21.7; %OK

% Cluster defining threshold 0.01, event2, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,1,4,2) = 22.6; %OK
results_spm_ols(1,2,4,1,4,2) = 19.6; %OK
results_spm_ols(1,3,4,1,4,2) = 17.4; %OK
results_spm_ols(1,4,4,1,4,2) = 16.1; %OK



%-------------------------------------
% One-sample t-tests
%-------------------------------------


% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,2,2,2) = 35.5;
results_spm_ols(1,2,1,2,2,2) = 28.6;
results_spm_ols(1,3,1,2,2,2) = 23.9;
results_spm_ols(1,4,1,2,2,2) = 21.5;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,2,2,2) = 20.3;
results_spm_ols(1,2,2,2,2,2) = 16.1;
results_spm_ols(1,3,2,2,2,2) = 11.6;
results_spm_ols(1,4,2,2,2,2) = 9.0;


% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,2,2,2) = 46.9;
results_spm_ols(1,2,3,2,2,2) = 49.7;
results_spm_ols(1,3,3,2,2,2) = 51.6;
results_spm_ols(1,4,3,2,2,2) = 54.5;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,2,2,2) = 28.5;
results_spm_ols(1,2,4,2,2,2) = 26.7;
results_spm_ols(1,3,4,2,2,2) = 25.0;
results_spm_ols(1,4,4,2,2,2) = 23.7;




% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,2,4,2) = 37.1;
results_spm_ols(1,2,1,2,4,2) = 29.9;
results_spm_ols(1,3,1,2,4,2) = 24.4;
results_spm_ols(1,4,1,2,4,2) = 20.3;


% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,2,4,2) = 19.5;
results_spm_ols(1,2,2,2,4,2) = 14.1;
results_spm_ols(1,3,2,2,4,2) = 9.3;
results_spm_ols(1,4,2,2,4,2) = 6.3;


% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,3,2,4,2) = 59.1;
results_spm_ols(1,2,3,2,4,2) = 62.5;
results_spm_ols(1,3,3,2,4,2) = 63.6;
results_spm_ols(1,4,3,2,4,2) = 66.9;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(1,1,4,2,4,2) = 32.6;
results_spm_ols(1,2,4,2,4,2) = 31.9;
results_spm_ols(1,3,4,2,4,2) = 30.5;
results_spm_ols(1,4,4,2,4,2) = 29.3;












%-------------------------------------
% Cluster defining threshold 0.001
%-------------------------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,1,1,1,2) = 8.4; %OK
results_spm_ols(2,2,1,1,1,2) = 7.5; %OK
results_spm_ols(2,3,1,1,1,2) = 6.6; %OK
results_spm_ols(2,4,1,1,1,2) = 5.2; %OK

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,2,1,1,2) = 7.8; %OK
results_spm_ols(2,2,2,1,1,2) = 6.7; %OK
results_spm_ols(2,3,2,1,1,2) = 5.9; %OK
results_spm_ols(2,4,2,1,1,2) = 5.3; %OK

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,3,1,1,2) = 6.3; %OK
results_spm_ols(2,2,3,1,1,2) = 7.7; %OK
results_spm_ols(2,3,3,1,1,2) = 8.4; %OK
results_spm_ols(2,4,3,1,1,2) = 10.3; %OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,4,1,1,2) = 7.5; %OK
results_spm_ols(2,2,4,1,1,2) = 7.9; %OK
results_spm_ols(2,3,4,1,1,2) = 7.5; %OK
results_spm_ols(2,4,4,1,1,2) = 7.2; %OK






% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,1,1,2,2) = 7.4; %OK
results_spm_ols(2,2,1,1,2,2) = 6.4; %OK
results_spm_ols(2,3,1,1,2,2) = 5.8; %OK
results_spm_ols(2,4,1,1,2,2) = 5.5; %OK


% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,2,1,2,2) = 6.4; %OK
results_spm_ols(2,2,2,1,2,2) = 6.1; %OK
results_spm_ols(2,3,2,1,2,2) = 4.7; %OK
results_spm_ols(2,4,2,1,2,2) = 3.9; %OK

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,3,1,2,2) = 7.0; %OK
results_spm_ols(2,2,3,1,2,2) = 8.0; %OK
results_spm_ols(2,3,3,1,2,2) = 8.6; %OK
results_spm_ols(2,4,3,1,2,2) = 10.0; %OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,4,1,2,2) = 8.3; %OK
results_spm_ols(2,2,4,1,2,2) = 7.3; %OK
results_spm_ols(2,3,4,1,2,2) = 7.0; %OK
results_spm_ols(2,4,4,1,2,2) = 7.0; %OK




% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,1,1,3,2) = 7.5;
results_spm_ols(2,2,1,1,3,2) = 6.1;
results_spm_ols(2,3,1,1,3,2) = 4.7;
results_spm_ols(2,4,1,1,3,2) = 3.9;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,2,1,3,2) = 7.1;
results_spm_ols(2,2,2,1,3,2) = 5.4;
results_spm_ols(2,3,2,1,3,2) = 4.7;
results_spm_ols(2,4,2,1,3,2) = 3.3;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,3,1,3,2) = 6.8;
results_spm_ols(2,2,3,1,3,2) = 7.8;
results_spm_ols(2,3,3,1,3,2) = 9.5;
results_spm_ols(2,4,3,1,3,2) = 10.3;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 30, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,4,1,3,2) = 7.5;
results_spm_ols(2,2,4,1,3,2) = 6.5;
results_spm_ols(2,3,4,1,3,2) = 5.8;
results_spm_ols(2,4,4,1,3,2) = 5.9;



% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,1,1,4,2) = 9.5; % OK
results_spm_ols(2,2,1,1,4,2) = 7.7; % OK
results_spm_ols(2,3,1,1,4,2) = 6.0; % OK
results_spm_ols(2,4,1,1,4,2) = 4.7; % OK


% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,2,1,4,2) = 9.1; % OK
results_spm_ols(2,2,2,1,4,2) = 6.9; % OK
results_spm_ols(2,3,2,1,4,2) = 5.9; % OK
results_spm_ols(2,4,2,1,4,2) = 5.1; % OK

% Cluster defining threshold 0.001, event1, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,3,1,4,2) = 6.8; %OK
results_spm_ols(2,2,3,1,4,2) = 8.8; %OK
results_spm_ols(2,3,3,1,4,2) = 9.5; %OK
results_spm_ols(2,4,3,1,4,2) = 9.9; %OK

% Cluster defining threshold 0.001, event2, two sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,4,1,4,2) = 8.4; %OK
results_spm_ols(2,2,4,1,4,2) = 8.1; %OK
results_spm_ols(2,3,4,1,4,2) = 6.5; %OK
results_spm_ols(2,4,4,1,4,2) = 6.3; %OK


%-------------------------------------
% One-sample t-tests
%-------------------------------------



% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,1,2,2,2) = 11.8;
results_spm_ols(2,2,1,2,2,2) = 10.2;
results_spm_ols(2,3,1,2,2,2) = 9.2;
results_spm_ols(2,4,1,2,2,2) = 8.3;



% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,2,2,2,2) = 5.2;
results_spm_ols(2,2,2,2,2,2) = 4.0;
results_spm_ols(2,3,2,2,2,2) = 3.5;
results_spm_ols(2,4,2,2,2,2) = 2.8;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,3,2,2,2) = 19.2;
results_spm_ols(2,2,3,2,2,2) = 22.8;
results_spm_ols(2,3,3,2,2,2) = 27.5;
results_spm_ols(2,4,3,2,2,2) = 31.2;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,4,2,2,2) = 9.2;
results_spm_ols(2,2,4,2,2,2) = 10.0;
results_spm_ols(2,3,4,2,2,2) = 10.4;
results_spm_ols(2,4,4,2,2,2) = 10.8;





% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,1,2,4,2) = 12.3;
results_spm_ols(2,2,1,2,4,2) = 10.4;
results_spm_ols(2,3,1,2,4,2) = 7.7;
results_spm_ols(2,4,1,2,4,2) = 6.0;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,2,2,4,2) = 5.0;
results_spm_ols(2,2,2,2,4,2) = 3.6;
results_spm_ols(2,3,2,2,4,2) = 2.6;
results_spm_ols(2,4,2,2,4,2) = 2.1;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,3,2,4,2) = 25.6;
results_spm_ols(2,2,3,2,4,2) = 31.7;
results_spm_ols(2,3,3,2,4,2) = 38.5;
results_spm_ols(2,4,3,2,4,2) = 42.2;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_spm_ols(2,1,4,2,4,2) = 10.9;
results_spm_ols(2,2,4,2,4,2) = 12.7;
results_spm_ols(2,3,4,2,4,2) = 14.7;
results_spm_ols(2,4,4,2,4,2) = 15.4;
















