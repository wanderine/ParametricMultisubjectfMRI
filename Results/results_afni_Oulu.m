% Cluster defining threshold, 1 = 0.01; 2 = 0.001
% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing, 3 = Oulu

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

results_afni_ols(1,1,1,1,1,3) = 30.1;
results_afni_ols(1,2,1,1,1,3) = 29.7;
results_afni_ols(1,3,1,1,1,3) = 26.5;
results_afni_ols(1,4,1,1,1,3) = 23.8;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,1,1,3) = 31.0;
results_afni_ols(1,2,2,1,1,3) = 29.4;
results_afni_ols(1,3,2,1,1,3) = 25.9;
results_afni_ols(1,4,2,1,1,3) = 21.8;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,1,1,3) = 15.5;
results_afni_ols(1,2,3,1,1,3) = 17.5;
results_afni_ols(1,3,3,1,1,3) = 19.0;
results_afni_ols(1,4,3,1,1,3) = 18.6;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,1,1,3) = 26.3;
results_afni_ols(1,2,4,1,1,3) = 26.4;
results_afni_ols(1,3,4,1,1,3) = 23.6;
results_afni_ols(1,4,4,1,1,3) = 21.0;



% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,2,3) = 31.4;
results_afni_ols(1,2,1,1,2,3) = 29.6;
results_afni_ols(1,3,1,1,2,3) = 26.4;
results_afni_ols(1,4,1,1,2,3) = 22.9;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,1,2,3) = 31.7;
results_afni_ols(1,2,2,1,2,3) = 29.6;
results_afni_ols(1,3,2,1,2,3) = 26.7;
results_afni_ols(1,4,2,1,2,3) = 23.6;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,1,2,3) = 18.7;
results_afni_ols(1,2,3,1,2,3) = 18.7;
results_afni_ols(1,3,3,1,2,3) = 18.5;
results_afni_ols(1,4,3,1,2,3) = 17.9;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,1,2,3) = 27.6;
results_afni_ols(1,2,4,1,2,3) = 26.1;
results_afni_ols(1,3,4,1,2,3) = 23.7;
results_afni_ols(1,4,4,1,2,3) = 20.5;






%----------------------
% one-sample t-test
%----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,2,3) = 34.1;
results_afni_ols(1,2,1,2,2,3) = 32.4;
results_afni_ols(1,3,1,2,2,3) = 28.8;
results_afni_ols(1,4,1,2,2,3) = 26.6;


% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,2,3) = 21.8;
results_afni_ols(1,2,2,2,2,3) = 18.9;
results_afni_ols(1,3,2,2,2,3) = 16.2;
results_afni_ols(1,4,2,2,2,3) = 14.2;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,2,2,3) = 30.4;
results_afni_ols(1,2,3,2,2,3) = 34.5;
results_afni_ols(1,3,3,2,2,3) = 33.5;
results_afni_ols(1,4,3,2,2,3) = 31.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,2,2,3) = 34.4;
results_afni_ols(1,2,4,2,2,3) = 35.5;
results_afni_ols(1,3,4,2,2,3) = 32.6;
results_afni_ols(1,4,4,2,2,3) = 30.8;





% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,4,3) = 31.5;
results_afni_ols(1,2,1,2,4,3) = 30.3;
results_afni_ols(1,3,1,2,4,3) = 26.4;
results_afni_ols(1,4,1,2,4,3) = 22.8;


% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,4,3) = 25.5;
results_afni_ols(1,2,2,2,4,3) = 22.7;
results_afni_ols(1,3,2,2,4,3) = 18.5;
results_afni_ols(1,4,2,2,4,3) = 14.2;


% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,2,4,3) = 40.9;
results_afni_ols(1,2,3,2,4,3) = 42.6;
results_afni_ols(1,3,3,2,4,3) = 41.4;
results_afni_ols(1,4,3,2,4,3) = 38.7;


% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,2,4,3) = 43.1;
results_afni_ols(1,2,4,2,4,3) = 41.8;
results_afni_ols(1,3,4,2,4,3) = 39.1;
results_afni_ols(1,4,4,2,4,3) = 36.3;



%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,1,1,3) = 8.3;
results_afni_ols(2,2,1,1,1,3) = 9.3;
results_afni_ols(2,3,1,1,1,3) = 9.9;
results_afni_ols(2,4,1,1,1,3) = 9.5;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,1,1,3) = 9.8;
results_afni_ols(2,2,2,1,1,3) = 10.6;
results_afni_ols(2,3,2,1,1,3) = 9.9;
results_afni_ols(2,4,2,1,1,3) = 8.6;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,1,1,3) = 4.3;
results_afni_ols(2,2,3,1,1,3) = 6.2;
results_afni_ols(2,3,3,1,1,3) = 7.8;
results_afni_ols(2,4,3,1,1,3) = 7.4;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,1,1,3) = 8.2;
results_afni_ols(2,2,4,1,1,3) = 10.3;
results_afni_ols(2,3,4,1,1,3) = 10.5;
results_afni_ols(2,4,4,1,1,3) = 9.3;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,1,2,3) = 13.4;
results_afni_ols(2,2,1,1,2,3) = 14.6;
results_afni_ols(2,3,1,1,2,3) = 12.4;
results_afni_ols(2,4,1,1,2,3) = 11.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,1,2,3) = 12.7;
results_afni_ols(2,2,2,1,2,3) = 12.2;
results_afni_ols(2,3,2,1,2,3) = 10.8;
results_afni_ols(2,4,2,1,2,3) = 9.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,1,2,3) = 6.9;
results_afni_ols(2,2,3,1,2,3) = 8.8;
results_afni_ols(2,3,3,1,2,3) = 9.3;
results_afni_ols(2,4,3,1,2,3) = 8.4;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,1,2,3) = 11.5;
results_afni_ols(2,2,4,1,2,3) = 11.8;
results_afni_ols(2,3,4,1,2,3) = 11.5;
results_afni_ols(2,4,4,1,2,3) = 10.0;





%--------------------------
% one-sample t-test
%--------------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,2,2,3) = 14.1;
results_afni_ols(2,2,1,2,2,3) = 15.6;
results_afni_ols(2,3,1,2,2,3) = 15.5;
results_afni_ols(2,4,1,2,2,3) = 14.1;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,2,2,3) = 5.3;
results_afni_ols(2,2,2,2,2,3) = 5.3;
results_afni_ols(2,3,2,2,2,3) = 4.6;
results_afni_ols(2,4,2,2,2,3) = 3.8;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,2,2,3) = 9.6;
results_afni_ols(2,2,3,2,2,3) = 13.0;
results_afni_ols(2,3,3,2,2,3) = 15.9;
results_afni_ols(2,4,3,2,2,3) = 16.1;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,2,2,3) = 10.9;
results_afni_ols(2,2,4,2,2,3) = 12.0;
results_afni_ols(2,3,4,2,2,3) = 12.2;
results_afni_ols(2,4,4,2,2,3) = 11.9;







% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,2,4,3) = 13.6;
results_afni_ols(2,2,1,2,4,3) = 12.6;
results_afni_ols(2,3,1,2,4,3) = 10.8;
results_afni_ols(2,4,1,2,4,3) = 9.5;


% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,2,4,3) = 7.5;
results_afni_ols(2,2,2,2,4,3) = 6.6;
results_afni_ols(2,3,2,2,4,3) = 5.1;
results_afni_ols(2,4,2,2,4,3) = 3.6;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,2,4,3) = 17.6;
results_afni_ols(2,2,3,2,4,3) = 21.4;
results_afni_ols(2,3,3,2,4,3) = 23.4;
results_afni_ols(2,4,3,2,4,3) = 22.0;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,2,4,3) = 16.4;
results_afni_ols(2,2,4,2,4,3) = 17.8;
results_afni_ols(2,3,4,2,4,3) = 17.7;
results_afni_ols(2,4,4,2,4,3) = 15.7;










%-----------------------
% MEMA (full mask)
%-----------------------

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.01
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,1,3) = 26.3;
results_afni_mema(1,2,1,1,1,3) = 27.9;
results_afni_mema(1,3,1,1,1,3) = 25.9;
results_afni_mema(1,4,1,1,1,3) = 22.9;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,1,1,3) = 30.7;
results_afni_mema(1,2,2,1,1,3) = 29.9;
results_afni_mema(1,3,2,1,1,3) = 26.6;
results_afni_mema(1,4,2,1,1,3) = 22.1;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,1,1,3) = 12.1;
results_afni_mema(1,2,3,1,1,3) = 14.7;
results_afni_mema(1,3,3,1,1,3) = 15.4;
results_afni_mema(1,4,3,1,1,3) = 16.4;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,1,1,3) = 19.7;
results_afni_mema(1,2,4,1,1,3) = 23.0;
results_afni_mema(1,3,4,1,1,3) = 23.0;
results_afni_mema(1,4,4,1,1,3) = 22.7;





% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,2,3) = 30.1;
results_afni_mema(1,2,1,1,2,3) = 28.6;
results_afni_mema(1,3,1,1,2,3) = 26.4;
results_afni_mema(1,4,1,1,2,3) = 25.3;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,1,2,3) = 32.0;
results_afni_mema(1,2,2,1,2,3) = 30.9;
results_afni_mema(1,3,2,1,2,3) = 29.4;
results_afni_mema(1,4,2,1,2,3) = 25.8;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,1,2,3) = 13.9;
results_afni_mema(1,2,3,1,2,3) = 16.6;
results_afni_mema(1,3,3,1,2,3) = 17.6;
results_afni_mema(1,4,3,1,2,3) = 18.0;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,1,2,3) = 20.9;
results_afni_mema(1,2,4,1,2,3) = 22.7;
results_afni_mema(1,3,4,1,2,3) = 22.1;
results_afni_mema(1,4,4,1,2,3) = 21.1;


% one sample t-test


% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,2,3) = 41.4;
results_afni_mema(1,2,1,2,2,3) = 42.9;
results_afni_mema(1,3,1,2,2,3) = 40.1;
results_afni_mema(1,4,1,2,2,3) = 38.2;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,2,3) = 18.8;
results_afni_mema(1,2,2,2,2,3) = 18.4;
results_afni_mema(1,3,2,2,2,3) = 15.6;
results_afni_mema(1,4,2,2,2,3) = 12.8;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,2,2,3) = 19.6;
results_afni_mema(1,2,3,2,2,3) = 22.1;
results_afni_mema(1,3,3,2,2,3) = 21.8;
results_afni_mema(1,4,3,2,2,3) = 21.3;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,2,2,3) = 33.0;
results_afni_mema(1,2,4,2,2,3) = 37.1;
results_afni_mema(1,3,4,2,2,3) = 36.7;
results_afni_mema(1,4,4,2,2,3) = 35.6;




% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,4,3) = 42.6;
results_afni_mema(1,2,1,2,4,3) = 43.9;
results_afni_mema(1,3,1,2,4,3) = 42.8;
results_afni_mema(1,4,1,2,4,3) = 41.1;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,4,3) = 17.2;
results_afni_mema(1,2,2,2,4,3) = 15.2;
results_afni_mema(1,3,2,2,4,3) = 12.9;
results_afni_mema(1,4,2,2,4,3) = 10.6;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,2,4,3) = 24.6;
results_afni_mema(1,2,3,2,4,3) = 27.9;
results_afni_mema(1,3,3,2,4,3) = 28.5;
results_afni_mema(1,4,3,2,4,3) = 26.4;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,2,4,3) = 40.9;
results_afni_mema(1,2,4,2,4,3) = 46.7;
results_afni_mema(1,3,4,2,4,3) = 47.5;
results_afni_mema(1,4,4,2,4,3) = 48.9;


%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,1,1,3) = 9.4;
results_afni_mema(2,2,1,1,1,3) = 10.8;
results_afni_mema(2,3,1,1,1,3) = 10.9;
results_afni_mema(2,4,1,1,1,3) = 10.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,1,1,3) = 11.8;
results_afni_mema(2,2,2,1,1,3) = 12.8;
results_afni_mema(2,3,2,1,1,3) = 12.0;
results_afni_mema(2,4,2,1,1,3) = 11.0;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,1,1,3) = 4.4;
results_afni_mema(2,2,3,1,1,3) = 5.7;
results_afni_mema(2,3,3,1,1,3) = 7.7;
results_afni_mema(2,4,3,1,1,3) = 7.4;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,1,1,3) = 6.8;
results_afni_mema(2,2,4,1,1,3) = 9.9;
results_afni_mema(2,3,4,1,1,3) = 11.7;
results_afni_mema(2,4,4,1,1,3) = 11.2;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,1,2,3) = 13.6;
results_afni_mema(2,2,1,1,2,3) = 13.4;
results_afni_mema(2,3,1,1,2,3) = 14.2;
results_afni_mema(2,4,1,1,2,3) = 11.8;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,1,2,3) = 16.5;
results_afni_mema(2,2,2,1,2,3) = 16.4;
results_afni_mema(2,3,2,1,2,3) = 16.0;
results_afni_mema(2,4,2,1,2,3) = 13.5;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,1,2,3) = 5.9;
results_afni_mema(2,2,3,1,2,3) = 7.9;
results_afni_mema(2,3,3,1,2,3) = 10.3;
results_afni_mema(2,4,3,1,2,3) = 9.2;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,1,2,3) = 8.4;
results_afni_mema(2,2,4,1,2,3) = 10.0;
results_afni_mema(2,3,4,1,2,3) = 10.6;
results_afni_mema(2,4,4,1,2,3) = 11.1;



% one sample t-test



% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,2,2,3) = 18.0;
results_afni_mema(2,2,1,2,2,3) = 22.5;
results_afni_mema(2,3,1,2,2,3) = 21.8;
results_afni_mema(2,4,1,2,2,3) = 21.5;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,2,2,3) = 5.3;
results_afni_mema(2,2,2,2,2,3) = 6.1;
results_afni_mema(2,3,2,2,2,3) = 5.8;
results_afni_mema(2,4,2,2,2,3) = 5.8;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,2,2,3) = 6.3;
results_afni_mema(2,2,3,2,2,3) = 8.9;
results_afni_mema(2,3,3,2,2,3) = 11.7;
results_afni_mema(2,4,3,2,2,3) = 10.9;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,2,2,3) = 14.0;
results_afni_mema(2,2,4,2,2,3) = 18.4;
results_afni_mema(2,3,4,2,2,3) = 18.5;
results_afni_mema(2,4,4,2,2,3) = 18.9;







% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,2,4,3) = 20.7;
results_afni_mema(2,2,1,2,4,3) = 23.2;
results_afni_mema(2,3,1,2,4,3) = 22.0;
results_afni_mema(2,4,1,2,4,3) = 19.9;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,2,4,3) = 6.0;
results_afni_mema(2,2,2,2,4,3) = 5.9;
results_afni_mema(2,3,2,2,4,3) = 5.6;
results_afni_mema(2,4,2,2,4,3) = 5.0;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,2,4,3) = 11.2;
results_afni_mema(2,2,3,2,4,3) = 15.0;
results_afni_mema(2,3,3,2,4,3) = 15.2;
results_afni_mema(2,4,3,2,4,3) = 14.1;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,2,4,3) = 19.4;
results_afni_mema(2,2,4,2,4,3) = 23.4;
results_afni_mema(2,3,4,2,4,3) = 25.9;
results_afni_mema(2,4,4,2,4,3) = 27.5;



