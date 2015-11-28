% Cluster defining threshold, 1 = 0.01; 2 = 0.001
% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(cluster defining threshold, smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS (full mask)
%-----------------------

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.01
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,1,2) = 33.4;
results_afni_ols(1,2,1,1,1,2) = 32.9;
results_afni_ols(1,3,1,1,1,2) = 29.0;
results_afni_ols(1,4,1,1,1,2) = 26.6;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,1,1,2) = 33.1;
results_afni_ols(1,2,2,1,1,2) = 31.4;
results_afni_ols(1,3,2,1,1,2) = 26.5;
results_afni_ols(1,4,2,1,1,2) = 22.2;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,1,1,2) = 18.6;
results_afni_ols(1,2,3,1,1,2) = 21.7;
results_afni_ols(1,3,3,1,1,2) = 22.9;
results_afni_ols(1,4,3,1,1,2) = 22.2;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,1,1,2) = 31.6;
results_afni_ols(1,2,4,1,1,2) = 31.0;
results_afni_ols(1,3,4,1,1,2) = 26.6;
results_afni_ols(1,4,4,1,1,2) = 25.2;



% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,2,2) = 39.6;
results_afni_ols(1,2,1,1,2,2) = 39.0;
results_afni_ols(1,3,1,1,2,2) = 32.6;
results_afni_ols(1,4,1,1,2,2) = 28.3;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,1,2,2) = 37.2;
results_afni_ols(1,2,2,1,2,2) = 33.9;
results_afni_ols(1,3,2,1,2,2) = 28.2;
results_afni_ols(1,4,2,1,2,2) = 25.2;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,1,2,2) = 23.5;
results_afni_ols(1,2,3,1,2,2) = 26.0;
results_afni_ols(1,3,3,1,2,2) = 24.8;
results_afni_ols(1,4,3,1,2,2) = 22.4;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,1,2,2) = 30.8;
results_afni_ols(1,2,4,1,2,2) = 29.7;
results_afni_ols(1,3,4,1,2,2) = 26.8;
results_afni_ols(1,4,4,1,2,2) = 24.1;






%----------------------
% one-sample t-test
%----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,2,2) = 40.5;
results_afni_ols(1,2,1,2,2,2) = 39.5;
results_afni_ols(1,3,1,2,2,2) = 36.5;
results_afni_ols(1,4,1,2,2,2) = 33.1;


% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,2,2) = 33.1;
results_afni_ols(1,2,2,2,2,2) = 29.1;
results_afni_ols(1,3,2,2,2,2) = 26.1;
results_afni_ols(1,4,2,2,2,2) = 22.3;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,2,2,2) = 27.6;
results_afni_ols(1,2,3,2,2,2) = 35.6;
results_afni_ols(1,3,3,2,2,2) = 36.2;
results_afni_ols(1,4,3,2,2,2) = 36.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,2,2,2) = 24.7;
results_afni_ols(1,2,4,2,2,2) = 25.8;
results_afni_ols(1,3,4,2,2,2) = 23.3;
results_afni_ols(1,4,4,2,2,2) = 20.8;





% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,4,2) = 46.5;
results_afni_ols(1,2,1,2,4,2) = 44.3;
results_afni_ols(1,3,1,2,4,2) = 39.2;
results_afni_ols(1,4,1,2,4,2) = 34.2;


% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,4,2) = 34.3;
results_afni_ols(1,2,2,2,4,2) = 31.0;
results_afni_ols(1,3,2,2,4,2) = 25.0;
results_afni_ols(1,4,2,2,4,2) = 20.2;


% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,2,4,2) = 39.0;
results_afni_ols(1,2,3,2,4,2) = 49.4;
results_afni_ols(1,3,3,2,4,2) = 51.2;
results_afni_ols(1,4,3,2,4,2) = 50.7;


% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,2,4,2) = 24.1;
results_afni_ols(1,2,4,2,4,2) = 24.5;
results_afni_ols(1,3,4,2,4,2) = 22.5;
results_afni_ols(1,4,4,2,4,2) = 19.0;



%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,1,1,2) = 8.4;
results_afni_ols(2,2,1,1,1,2) = 10.9;
results_afni_ols(2,3,1,1,1,2) = 10.5;
results_afni_ols(2,4,1,1,1,2) = 10.3;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,1,1,2) = 10.9;
results_afni_ols(2,2,2,1,1,2) = 11.3;
results_afni_ols(2,3,2,1,1,2) = 8.5;
results_afni_ols(2,4,2,1,1,2) = 8.7;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,1,1,2) = 3.9;
results_afni_ols(2,2,3,1,1,2) = 7.4;
results_afni_ols(2,3,3,1,1,2) = 7.8;
results_afni_ols(2,4,3,1,1,2) = 9.1;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,1,1,2) = 9.1;
results_afni_ols(2,2,4,1,1,2) = 11.4;
results_afni_ols(2,3,4,1,1,2) = 11.1;
results_afni_ols(2,4,4,1,1,2) = 11.1;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,1,2,2) = 13.5;
results_afni_ols(2,2,1,1,2,2) = 14.0;
results_afni_ols(2,3,1,1,2,2) = 13.0;
results_afni_ols(2,4,1,1,2,2) = 11.6;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,1,2,2) = 14.5;
results_afni_ols(2,2,2,1,2,2) = 14.5;
results_afni_ols(2,3,2,1,2,2) = 12.8;
results_afni_ols(2,4,2,1,2,2) = 10.9;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,1,2,2) = 7.0;
results_afni_ols(2,2,3,1,2,2) = 10.1;
results_afni_ols(2,3,3,1,2,2) = 11.0;
results_afni_ols(2,4,3,1,2,2) = 9.8;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,1,2,2) = 10.7;
results_afni_ols(2,2,4,1,2,2) = 13.0;
results_afni_ols(2,3,4,1,2,2) = 12.4;
results_afni_ols(2,4,4,1,2,2) = 11.1;





%--------------------------
% one-sample t-test
%--------------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,2,2,2) = 13.3;
results_afni_ols(2,2,1,2,2,2) = 14.4;
results_afni_ols(2,3,1,2,2,2) = 14.3;
results_afni_ols(2,4,1,2,2,2) = 12.8;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,2,2,2) = 7.6;
results_afni_ols(2,2,2,2,2,2) = 9.8;
results_afni_ols(2,3,2,2,2,2) = 9.3;
results_afni_ols(2,4,2,2,2,2) = 8.0;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,2,2,2) = 6.6;
results_afni_ols(2,2,3,2,2,2) = 13.6;
results_afni_ols(2,3,3,2,2,2) = 16.5;
results_afni_ols(2,4,3,2,2,2) = 16.9;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,2,2,2) = 5.7;
results_afni_ols(2,2,4,2,2,2) = 8.1;
results_afni_ols(2,3,4,2,2,2) = 10.0;
results_afni_ols(2,4,4,2,2,2) = 8.7;







% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,2,4,2) = 16.8;
results_afni_ols(2,2,1,2,4,2) = 19.1;
results_afni_ols(2,3,1,2,4,2) = 16.7;
results_afni_ols(2,4,1,2,4,2) = 15.2;


% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,2,4,2) = 10.3;
results_afni_ols(2,2,2,2,4,2) = 10.2;
results_afni_ols(2,3,2,2,4,2) = 8.7;
results_afni_ols(2,4,2,2,4,2) = 7.7;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,2,4,2) = 12.8;
results_afni_ols(2,2,3,2,4,2) = 22.4;
results_afni_ols(2,3,3,2,4,2) = 25.6;
results_afni_ols(2,4,3,2,4,2) = 25.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,2,4,2) = 7.5;
results_afni_ols(2,2,4,2,4,2) = 9.6;
results_afni_ols(2,3,4,2,4,2) = 9.6;
results_afni_ols(2,4,4,2,4,2) = 8.0;










%-----------------------
% MEMA (full mask)
%-----------------------

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.01
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,1,2) = 29.9;
results_afni_mema(1,2,1,1,1,2) = 32.7;
results_afni_mema(1,3,1,1,1,2) = 28.3;
results_afni_mema(1,4,1,1,1,2) = 25.8;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,1,1,2) = 33.9;
results_afni_mema(1,2,2,1,1,2) = 33.0;
results_afni_mema(1,3,2,1,1,2) = 31.0;
results_afni_mema(1,4,2,1,1,2) = 26.9;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,1,1,2) = 13.4;
results_afni_mema(1,2,3,1,1,2) = 20.0;
results_afni_mema(1,3,3,1,1,2) = 22.6;
results_afni_mema(1,4,3,1,1,2) = 24.2;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,1,1,2) = 22.0;
results_afni_mema(1,2,4,1,1,2) = 25.6;
results_afni_mema(1,3,4,1,1,2) = 24.0;
results_afni_mema(1,4,4,1,1,2) = 23.7;





% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,2,2) = 30.9;
results_afni_mema(1,2,1,1,2,2) = 30.7;
results_afni_mema(1,3,1,1,2,2) = 27.2;
results_afni_mema(1,4,1,1,2,2) = 24.1;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,1,2,2) = 33.7;
results_afni_mema(1,2,2,1,2,2) = 34.3;
results_afni_mema(1,3,2,1,2,2) = 30.1;
results_afni_mema(1,4,2,1,2,2) = 25.8;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,1,2,2) = 15.4;
results_afni_mema(1,2,3,1,2,2) = 21.3;
results_afni_mema(1,3,3,1,2,2) = 22.1;
results_afni_mema(1,4,3,1,2,2) = 22.5;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,1,2,2) = 20.3;
results_afni_mema(1,2,4,1,2,2) = 24.3;
results_afni_mema(1,3,4,1,2,2) = 23.6;
results_afni_mema(1,4,4,1,2,2) = 23.7;


% one sample t-test


% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,2,2) = 42.3;
results_afni_mema(1,2,1,2,2,2) = 44.0;
results_afni_mema(1,3,1,2,2,2) = 40.8;
results_afni_mema(1,4,1,2,2,2) = 36.0;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,2,2) = 32.1;
results_afni_mema(1,2,2,2,2,2) = 30.1;
results_afni_mema(1,3,2,2,2,2) = 26.3;
results_afni_mema(1,4,2,2,2,2) = 23.1;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,2,2,2) = 21.9;
results_afni_mema(1,2,3,2,2,2) = 32.9;
results_afni_mema(1,3,3,2,2,2) = 35.9;
results_afni_mema(1,4,3,2,2,2) = 34.1;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,2,2,2) = 17.5;
results_afni_mema(1,2,4,2,2,2) = 21.1;
results_afni_mema(1,3,4,2,2,2) = 22.0;
results_afni_mema(1,4,4,2,2,2) = 20.5;




% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,4,2) = 47.4;
results_afni_mema(1,2,1,2,4,2) = 45.6;
results_afni_mema(1,3,1,2,4,2) = 41.3;
results_afni_mema(1,4,1,2,4,2) = 36.2;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,4,2) = 31.0;
results_afni_mema(1,2,2,2,4,2) = 28.4;
results_afni_mema(1,3,2,2,4,2) = 24.0;
results_afni_mema(1,4,2,2,4,2) = 20.4;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,2,4,2) = 34.9;
results_afni_mema(1,2,3,2,4,2) = 46.2;
results_afni_mema(1,3,3,2,4,2) = 49.5;
results_afni_mema(1,4,3,2,4,2) = 50.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,2,4,2) = 19.3;
results_afni_mema(1,2,4,2,4,2) = 24.0;
results_afni_mema(1,3,4,2,4,2) = 20.7;
results_afni_mema(1,4,4,2,4,2) = 18.0;


%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,1,1,2) = 9.7;
results_afni_mema(2,2,1,1,1,2) = 10.9;
results_afni_mema(2,3,1,1,1,2) = 11.4;
results_afni_mema(2,4,1,1,1,2) = 12.1;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,1,1,2) = 12.5;
results_afni_mema(2,2,2,1,1,2) = 14.1;
results_afni_mema(2,3,2,1,1,2) = 13.4;
results_afni_mema(2,4,2,1,1,2) = 12.5;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,1,1,2) = 2.4;
results_afni_mema(2,2,3,1,1,2) = 6.0;
results_afni_mema(2,3,3,1,1,2) = 8.1;
results_afni_mema(2,4,3,1,1,2) = 11.1;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,1,1,2) = 5.5;
results_afni_mema(2,2,4,1,1,2) = 9.7;
results_afni_mema(2,3,4,1,1,2) = 11.1;
results_afni_mema(2,4,4,1,1,2) = 11.5;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,1,2,2) = 11.8;
results_afni_mema(2,2,1,1,2,2) = 13.8;
results_afni_mema(2,3,1,1,2,2) = 12.4;
results_afni_mema(2,4,1,1,2,2) = 11.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,1,2,2) = 14.0;
results_afni_mema(2,2,2,1,2,2) = 14.9;
results_afni_mema(2,3,2,1,2,2) = 15.3;
results_afni_mema(2,4,2,1,2,2) = 13.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,1,2,2) = 5.1;
results_afni_mema(2,2,3,1,2,2) = 8.7;
results_afni_mema(2,3,3,1,2,2) = 11.5;
results_afni_mema(2,4,3,1,2,2) = 11.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,1,2,2) = 7.4;
results_afni_mema(2,2,4,1,2,2) = 8.7;
results_afni_mema(2,3,4,1,2,2) = 10.6;
results_afni_mema(2,4,4,1,2,2) = 11.3;



% one sample t-test



% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,2,2,2) = 15.5;
results_afni_mema(2,2,1,2,2,2) = 17.8;
results_afni_mema(2,3,1,2,2,2) = 18.0;
results_afni_mema(2,4,1,2,2,2) = 16.5;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,2,2,2) = 10.2;
results_afni_mema(2,2,2,2,2,2) = 13.0;
results_afni_mema(2,3,2,2,2,2) = 12.0;
results_afni_mema(2,4,2,2,2,2) = 10.4;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,2,2,2) = 4.4;
results_afni_mema(2,2,3,2,2,2) = 10.8;
results_afni_mema(2,3,3,2,2,2) = 15.0;
results_afni_mema(2,4,3,2,2,2) = 16.1;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,2,2,2) = 5.1;
results_afni_mema(2,2,4,2,2,2) = 7.5;
results_afni_mema(2,3,4,2,2,2) = 9.3;
results_afni_mema(2,4,4,2,2,2) = 9.6;



% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,2,4,2) = 19.7;
results_afni_mema(2,2,1,2,4,2) = 20.0;
results_afni_mema(2,3,1,2,4,2) = 18.9;
results_afni_mema(2,4,1,2,4,2) = 16.7;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,2,4,2) = 11.3;
results_afni_mema(2,2,2,2,4,2) = 13.1;
results_afni_mema(2,3,2,2,4,2) = 11.6;
results_afni_mema(2,4,2,2,4,2) = 9.7;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,2,4,2) = 11.2;
results_afni_mema(2,2,3,2,4,2) = 20.3;
results_afni_mema(2,3,3,2,4,2) = 24.1;
results_afni_mema(2,4,3,2,4,2) = 25.2;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,2,4,2) = 5.2;
results_afni_mema(2,2,4,2,4,2) = 8.7;
results_afni_mema(2,3,4,2,4,2) = 9.0;
results_afni_mema(2,4,4,2,4,2) = 8.5;



