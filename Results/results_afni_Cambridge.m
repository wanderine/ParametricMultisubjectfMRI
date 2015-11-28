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

results_afni_ols = zeros(2,4,4,2,4,2);

%-------------------------------------------------------------------------------------
% cluster defining threshold 0.01
%-------------------------------------------------------------------------------------

% two-sample t-test

% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,1,1) = 34.2;
results_afni_ols(1,2,1,1,1,1) = 33.5;
results_afni_ols(1,3,1,1,1,1) = 29.8;
results_afni_ols(1,4,1,1,1,1) = 27.4;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,1,1,1) = 35.6;
results_afni_ols(1,2,2,1,1,1) = 32.5;
results_afni_ols(1,3,2,1,1,1) = 26.7;
results_afni_ols(1,4,2,1,1,1) = 23.8;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,1,1,1) = 16.6;
results_afni_ols(1,2,3,1,1,1) = 22.0;
results_afni_ols(1,3,3,1,1,1) = 22.8;
results_afni_ols(1,4,3,1,1,1) = 21.9;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,1,1,1) = 31.0;
results_afni_ols(1,2,4,1,1,1) = 31.7;
results_afni_ols(1,3,4,1,1,1) = 28.1;
results_afni_ols(1,4,4,1,1,1) = 25.6;




% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,2,1) = 34.8;
results_afni_ols(1,2,1,1,2,1) = 34.6;
results_afni_ols(1,3,1,1,2,1) = 28.7;
results_afni_ols(1,4,1,1,2,1) = 25.7;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,1,2,1) = 35.7;
results_afni_ols(1,2,2,1,2,1) = 30.4;
results_afni_ols(1,3,2,1,2,1) = 27.3;
results_afni_ols(1,4,2,1,2,1) = 23.3;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,1,2,1) = 21.7;
results_afni_ols(1,2,3,1,2,1) = 24.1;
results_afni_ols(1,3,3,1,2,1) = 22.4;
results_afni_ols(1,4,3,1,2,1) = 22.0;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,1,2,1) = 31.0;
results_afni_ols(1,2,4,1,2,1) = 31.2;
results_afni_ols(1,3,4,1,2,1) = 27.0;
results_afni_ols(1,4,4,1,2,1) = 24.4;





%----------------------
% one-sample t-test
%----------------------

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,2,1) = 25.0;
results_afni_ols(1,2,1,2,2,1) = 23.1;
results_afni_ols(1,3,1,2,2,1) = 19.0;
results_afni_ols(1,4,1,2,2,1) = 17.1;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,2,1) = 30.0;
results_afni_ols(1,2,2,2,2,1) = 25.3;
results_afni_ols(1,3,2,2,2,1) = 19.8;
results_afni_ols(1,4,2,2,2,1) = 16.8;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,2,2,1) = 15.4;
results_afni_ols(1,2,3,2,2,1) = 19.4;
results_afni_ols(1,3,3,2,2,1) = 18.2;
results_afni_ols(1,4,3,2,2,1) = 16.9;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,2,2,1) = 24.5;
results_afni_ols(1,2,4,2,2,1) = 25.0;
results_afni_ols(1,3,4,2,2,1) = 21.7;
results_afni_ols(1,4,4,2,2,1) = 19.8;







% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,4,1) = 24.2;
results_afni_ols(1,2,1,2,4,1) = 22.0;
results_afni_ols(1,3,1,2,4,1) = 18.7;
results_afni_ols(1,4,1,2,4,1) = 15.3;


% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,4,1) = 27.1;
results_afni_ols(1,2,2,2,4,1) = 21.5;
results_afni_ols(1,3,2,2,4,1) = 15.6;
results_afni_ols(1,4,2,2,4,1) = 13.0;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,3,2,4,1) = 22.0;
results_afni_ols(1,2,3,2,4,1) = 25.2;
results_afni_ols(1,3,3,2,4,1) = 22.7;
results_afni_ols(1,4,3,2,4,1) = 20.8;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(1,1,4,2,4,1) = 27.1;
results_afni_ols(1,2,4,2,4,1) = 23.9;
results_afni_ols(1,3,4,2,4,1) = 21.1;
results_afni_ols(1,4,4,2,4,1) = 18.5;





%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test

% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,1,1,1) = 9.2;
results_afni_ols(2,2,1,1,1,1) = 11.9;
results_afni_ols(2,3,1,1,1,1) = 11.9;
results_afni_ols(2,4,1,1,1,1) = 11.8;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,1,1,1) = 10.6;
results_afni_ols(2,2,2,1,1,1) = 11.8;
results_afni_ols(2,3,2,1,1,1) = 10.7;
results_afni_ols(2,4,2,1,1,1) = 9.4;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,1,1,1) = 2.5;
results_afni_ols(2,2,3,1,1,1) = 6.5;
results_afni_ols(2,3,3,1,1,1) = 7.9;
results_afni_ols(2,4,3,1,1,1) = 8.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,1,1,1) = 8.2;
results_afni_ols(2,2,4,1,1,1) = 10.2;
results_afni_ols(2,3,4,1,1,1) = 11.6;
results_afni_ols(2,4,4,1,1,1) = 11.5;





% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,1,2,1) = 11.8;
results_afni_ols(2,2,1,1,2,1) = 13.6;
results_afni_ols(2,3,1,1,2,1) = 10.9;
results_afni_ols(2,4,1,1,2,1) = 9.9;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,1,2,1) = 12.5;
results_afni_ols(2,2,2,1,2,1) = 12.3;
results_afni_ols(2,3,2,1,2,1) = 10.9;
results_afni_ols(2,4,2,1,2,1) = 10.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,1,2,1) = 5.9;
results_afni_ols(2,2,3,1,2,1) = 8.5;
results_afni_ols(2,3,3,1,2,1) = 9.8;
results_afni_ols(2,4,3,1,2,1) = 9.6;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,1,2,1) = 10.3;
results_afni_ols(2,2,4,1,2,1) = 12.0;
results_afni_ols(2,3,4,1,2,1) = 11.7;
results_afni_ols(2,4,4,1,2,1) = 10.6;





%----------------------
% one-sample t-test
%----------------------

% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,2,2,1) = 4.8;
results_afni_ols(2,2,1,2,2,1) = 7.3;
results_afni_ols(2,3,1,2,2,1) = 6.8;
results_afni_ols(2,4,1,2,2,1) = 6.8;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,2,2,1) = 6.8;
results_afni_ols(2,2,2,2,2,1) = 6.5;
results_afni_ols(2,3,2,2,2,1) = 5.4;
results_afni_ols(2,4,2,2,2,1) = 4.3;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,2,2,1) = 2.3;
results_afni_ols(2,2,3,2,2,1) = 5.2;
results_afni_ols(2,3,3,2,2,1) = 6.2;
results_afni_ols(2,4,3,2,2,1) = 6.9;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,2,2,1) = 5.6;
results_afni_ols(2,2,4,2,2,1) = 7.7;
results_afni_ols(2,3,4,2,2,1) = 7.7;
results_afni_ols(2,4,4,2,2,1) = 6.8;






% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,1,2,4,1) = 6.2;
results_afni_ols(2,2,1,2,4,1) = 7.3;
results_afni_ols(2,3,1,2,4,1) = 6.5;
results_afni_ols(2,4,1,2,4,1) = 4.6;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,2,2,4,1) = 7.0;
results_afni_ols(2,2,2,2,4,1) = 6.3;
results_afni_ols(2,3,2,2,4,1) = 4.8;
results_afni_ols(2,4,2,2,4,1) = 3.9;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,3,2,4,1) = 5.9;
results_afni_ols(2,2,3,2,4,1) = 10.0;
results_afni_ols(2,3,3,2,4,1) = 9.5;
results_afni_ols(2,4,3,2,4,1) = 8.3;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_ols(2,1,4,2,4,1) = 6.7;
results_afni_ols(2,2,4,2,4,1) = 8.6;
results_afni_ols(2,3,4,2,4,1) = 8.2;
results_afni_ols(2,4,4,2,4,1) = 7.7;









%-----------------------
% MEMA (full mask)
%-----------------------

results_afni_mema = zeros(2,4,4,2,4,2);


%-------------------------------------------------------------------------------------
% cluster defining threshold 0.01
%-------------------------------------------------------------------------------------

% two-sample t-test


% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,1,1) = 31.5;
results_afni_mema(1,2,1,1,1,1) = 33.5;
results_afni_mema(1,3,1,1,1,1) = 29.6;
results_afni_mema(1,4,1,1,1,1) = 28.3;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,1,1,1) = 36.6;
results_afni_mema(1,2,2,1,1,1) = 35.2;
results_afni_mema(1,3,2,1,1,1) = 30.5;
results_afni_mema(1,4,2,1,1,1) = 27.1;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,1,1,1) = 10.8;
results_afni_mema(1,2,3,1,1,1) = 19.4;
results_afni_mema(1,3,3,1,1,1) = 21.8;
results_afni_mema(1,4,3,1,1,1) = 22.8;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,1,1,1) = 18.4;
results_afni_mema(1,2,4,1,1,1) = 21.2;
results_afni_mema(1,3,4,1,1,1) = 23.4;
results_afni_mema(1,4,4,1,1,1) = 21.6;






% Cluster defining threshold 0.01, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,2,1) = 32.0;
results_afni_mema(1,2,1,1,2,1) = 33.9;
results_afni_mema(1,3,1,1,2,1) = 30.3;
results_afni_mema(1,4,1,1,2,1) = 28.7;

% Cluster defining threshold 0.01, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,1,2,1) = 32.8;
results_afni_mema(1,2,2,1,2,1) = 31.2;
results_afni_mema(1,3,2,1,2,1) = 26.0;
results_afni_mema(1,4,2,1,2,1) = 23.4;

% Cluster defining threshold 0.01, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,1,2,1) = 14.1;
results_afni_mema(1,2,3,1,2,1) = 21.6;
results_afni_mema(1,3,3,1,2,1) = 21.2;
results_afni_mema(1,4,3,1,2,1) = 21.8;

% Cluster defining threshold 0.01, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,1,2,1) = 20.6;
results_afni_mema(1,2,4,1,2,1) = 24.6;
results_afni_mema(1,3,4,1,2,1) = 22.7;
results_afni_mema(1,4,4,1,2,1) = 23.2;





% one sample t-test

% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,2,1) = 21.9;
results_afni_mema(1,2,1,2,2,1) = 22.7;
results_afni_mema(1,3,1,2,2,1) = 19.6;
results_afni_mema(1,4,1,2,2,1) = 17.3;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,2,1) = 32.5;
results_afni_mema(1,2,2,2,2,1) = 29.5;
results_afni_mema(1,3,2,2,2,1) = 24.8;
results_afni_mema(1,4,2,2,2,1) = 22.5;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,2,2,1) = 11.5;
results_afni_mema(1,2,3,2,2,1) = 18.6;
results_afni_mema(1,3,3,2,2,1) = 20.1;
results_afni_mema(1,4,3,2,2,1) = 20.2;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,2,2,1) = 13.9;
results_afni_mema(1,2,4,2,2,1) = 16.5;
results_afni_mema(1,3,4,2,2,1) = 14.3;
results_afni_mema(1,4,4,2,2,1) = 13.3;



% Cluster defining threshold 0.01, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,4,1) = 19.8;
results_afni_mema(1,2,1,2,4,1) = 19.5;
results_afni_mema(1,3,1,2,4,1) = 14.8;
results_afni_mema(1,4,1,2,4,1) = 13.9;

% Cluster defining threshold 0.01, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,4,1) = 28.3;
results_afni_mema(1,2,2,2,4,1) = 25.8;
results_afni_mema(1,3,2,2,4,1) = 20.5;
results_afni_mema(1,4,2,2,4,1) = 18.0;

% Cluster defining threshold 0.01, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,3,2,4,1) = 13.6;
results_afni_mema(1,2,3,2,4,1) = 16.3;
results_afni_mema(1,3,3,2,4,1) = 14.1;
results_afni_mema(1,4,3,2,4,1) = 12.4;

% Cluster defining threshold 0.01, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(1,1,4,2,4,1) = 14.9;
results_afni_mema(1,2,4,2,4,1) = 21.1;
results_afni_mema(1,3,4,2,4,1) = 23.1;
results_afni_mema(1,4,4,2,4,1) = 22.1;



%-------------------------------------------------------------------------------------
% cluster defining threshold 0.001
%-------------------------------------------------------------------------------------

% two-sample t-test



% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,1,1,1) = 9.6;
results_afni_mema(2,2,1,1,1,1) = 13.9;
results_afni_mema(2,3,1,1,1,1) = 14.5;
results_afni_mema(2,4,1,1,1,1) = 13.4;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,1,1,1) = 13.1;
results_afni_mema(2,2,2,1,1,1) = 15.1;
results_afni_mema(2,3,2,1,1,1) = 15.4;
results_afni_mema(2,4,2,1,1,1) = 14.2;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,1,1,1) = 2.8;
results_afni_mema(2,2,3,1,1,1) = 5.7;
results_afni_mema(2,3,3,1,1,1) = 9.0;
results_afni_mema(2,4,3,1,1,1) = 9.8;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,1,1,1) = 4.9;
results_afni_mema(2,2,4,1,1,1) = 7.3;
results_afni_mema(2,3,4,1,1,1) = 8.2;
results_afni_mema(2,4,4,1,1,1) = 9.5;






% Cluster defining threshold 0.001, boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,1,2,1) = 11.5;
results_afni_mema(2,2,1,1,2,1) = 15.3;
results_afni_mema(2,3,1,1,2,1) = 14.9;
results_afni_mema(2,4,1,1,2,1) = 14.3;

% Cluster defining threshold 0.001, boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,1,2,1) = 12.5;
results_afni_mema(2,2,2,1,2,1) = 14.2;
results_afni_mema(2,3,2,1,2,1) = 13.7;
results_afni_mema(2,4,2,1,2,1) = 11.9;

% Cluster defining threshold 0.001, event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,1,2,1) = 3.3;
results_afni_mema(2,2,3,1,2,1) = 7.5;
results_afni_mema(2,3,3,1,2,1) = 9.4;
results_afni_mema(2,4,3,1,2,1) = 11.4;

% Cluster defining threshold 0.001, event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,1,2,1) = 4.9;
results_afni_mema(2,2,4,1,2,1) = 8.1;
results_afni_mema(2,3,4,1,2,1) = 9.2;
results_afni_mema(2,4,4,1,2,1) = 9.6;



% one sample t-test




% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,2,2,1) = 5.5;
results_afni_mema(2,2,1,2,2,1) = 8.4;
results_afni_mema(2,3,1,2,2,1) = 8.7;
results_afni_mema(2,4,1,2,2,1) = 7.4;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,2,2,1) = 12.2;
results_afni_mema(2,2,2,2,2,1) = 12.4;
results_afni_mema(2,3,2,2,2,1) = 11.2;
results_afni_mema(2,4,2,2,2,1) = 10.5;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,2,2,1) = 2.7;
results_afni_mema(2,2,3,2,2,1) = 5.1;
results_afni_mema(2,3,3,2,2,1) = 7.8;
results_afni_mema(2,4,3,2,2,1) = 8.7;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,2,2,1) = 2.6;
results_afni_mema(2,2,4,2,2,1) = 5.5;
results_afni_mema(2,3,4,2,2,1) = 6.1;
results_afni_mema(2,4,4,2,2,1) = 5.1;




% Cluster defining threshold 0.001, boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,1,2,4,1) = 5.2;
results_afni_mema(2,2,1,2,4,1) = 7.3;
results_afni_mema(2,3,1,2,4,1) = 6.6;
results_afni_mema(2,4,1,2,4,1) = 5.1;

% Cluster defining threshold 0.001, boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,2,2,4,1) = 8.6;
results_afni_mema(2,2,2,2,4,1) = 9.7;
results_afni_mema(2,3,2,2,4,1) = 9.0;
results_afni_mema(2,4,2,2,4,1) = 7.3;

% Cluster defining threshold 0.001, event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,3,2,4,1) = 3.2;
results_afni_mema(2,2,3,2,4,1) = 7.5;
results_afni_mema(2,3,3,2,4,1) = 8.8;
results_afni_mema(2,4,3,2,4,1) = 9.1;

% Cluster defining threshold 0.001, event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_afni_mema(2,1,4,2,4,1) = 3.4;
results_afni_mema(2,2,4,2,4,1) = 6.0;
results_afni_mema(2,3,4,2,4,1) = 6.1;
results_afni_mema(2,4,4,2,4,1) = 5.7;



