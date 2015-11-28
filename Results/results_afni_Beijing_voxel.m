% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,2) = 2.8; 
results_afni_ols(2,1,1,1,2) = 2.5; 
results_afni_ols(3,1,1,1,2) = 1.7; 
results_afni_ols(4,1,1,1,2) = 1.4; 

% boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,1,1,2) = 1.6; 
results_afni_ols(2,2,1,1,2) = 1.9; 
results_afni_ols(3,2,1,1,2) = 1.0; 
results_afni_ols(4,2,1,1,2) = 0.7; 

%   event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,1,1,2) = 2.0; 
results_afni_ols(2,3,1,1,2) = 2.4; 
results_afni_ols(3,3,1,1,2) = 2.0; 
results_afni_ols(4,3,1,1,2) = 1.8; 

%   event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,1,1,2) = 1.9; 
results_afni_ols(2,4,1,1,2) = 2.2; 
results_afni_ols(3,4,1,1,2) = 1.8; 
results_afni_ols(4,4,1,1,2) = 1.1; 





%   boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,2) = 2.5; 
results_afni_ols(2,1,1,2,2) = 1.4; 
results_afni_ols(3,1,1,2,2) = 1.0; 
results_afni_ols(4,1,1,2,2) = 0.6; 

%   boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,1,2,2) = 1.8; 
results_afni_ols(2,2,1,2,2) = 1.1; 
results_afni_ols(3,2,1,2,2) = 0.4; 
results_afni_ols(4,2,1,2,2) = 0.4; 

%   event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,1,2,2) = 2.7; 
results_afni_ols(2,3,1,2,2) = 1.9; 
results_afni_ols(3,3,1,2,2) = 1.6; 
results_afni_ols(4,3,1,2,2) = 1.0; 

%   event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,1,2,2) = 2.3; 
results_afni_ols(2,4,1,2,2) = 1.0; 
results_afni_ols(3,4,1,2,2) = 0.9; 
results_afni_ols(4,4,1,2,2) = 0.2; 





%-------------------------------------
% One-sample t-tests
%-------------------------------------


%   boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,2) = 2.9;
results_afni_ols(2,1,2,2,2) = 1.9;
results_afni_ols(3,1,2,2,2) = 1.2;
results_afni_ols(4,1,2,2,2) = 0.9;

%   boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,2,2,2) = 1.0;
results_afni_ols(2,2,2,2,2) = 0.9;
results_afni_ols(3,2,2,2,2) = 0.2;
results_afni_ols(4,2,2,2,2) = 0.3;


%   event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,2,2,2) = 3.8;
results_afni_ols(2,3,2,2,2) = 4.2;
results_afni_ols(3,3,2,2,2) = 4.3;
results_afni_ols(4,3,2,2,2) = 2.9;

%   event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,2,2,2) = 2.2;
results_afni_ols(2,4,2,2,2) = 1.6;
results_afni_ols(3,4,2,2,2) = 1.3;
results_afni_ols(4,4,2,2,2) = 0.9;




%   boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,4,2) = 3.1;
results_afni_ols(2,1,2,4,2) = 2.3;
results_afni_ols(3,1,2,4,2) = 1.4;
results_afni_ols(4,1,2,4,2) = 0.9;


%   boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,2,4,2) = 1.4;
results_afni_ols(2,2,2,4,2) = 0.3;
results_afni_ols(3,2,2,4,2) = 0.4;
results_afni_ols(4,2,2,4,2) = 0.5;


%   event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,2,4,2) = 7.1;
results_afni_ols(2,3,2,4,2) = 5.7;
results_afni_ols(3,3,2,4,2) = 5.4;
results_afni_ols(4,3,2,4,2) = 4.0;

%   event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,2,4,2) = 1.9;
results_afni_ols(2,4,2,4,2) = 1.4;
results_afni_ols(3,4,2,4,2) = 0.8;
results_afni_ols(4,4,2,4,2) = 0.9;










%-----------------------
% MEMA
%-----------------------




%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,2) = 5.2; 
results_afni_mema(2,1,1,1,2) = 3.9; 
results_afni_mema(3,1,1,1,2) = 2.6; 
results_afni_mema(4,1,1,1,2) = 2.1; 

% boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,1,1,2) = 6.2; 
results_afni_mema(2,2,1,1,2) = 4.8; 
results_afni_mema(3,2,1,1,2) = 3.3; 
results_afni_mema(4,2,1,1,2) = 2.6; 

%   event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,1,1,2) = 5.1; 
results_afni_mema(2,3,1,1,2) = 5.1; 
results_afni_mema(3,3,1,1,2) = 4.6; 
results_afni_mema(4,3,1,1,2) = 5.0; 

%   event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,1,1,2) = 5.5; 
results_afni_mema(2,4,1,1,2) = 5.7; 
results_afni_mema(3,4,1,1,2) = 3.2; 
results_afni_mema(4,4,1,1,2) = 3.8; 

% boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,2) = 4.4; 
results_afni_mema(2,1,1,2,2) = 3.7; 
results_afni_mema(3,1,1,2,2) = 1.9; 
results_afni_mema(4,1,1,2,2) = 1.5; 

% boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,1,2,2) = 6.4; 
results_afni_mema(2,2,1,2,2) = 4.3; 
results_afni_mema(3,2,1,2,2) = 3.0; 
results_afni_mema(4,2,1,2,2) = 2.0; 

%   event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,1,2,2) = 5.1; 
results_afni_mema(2,3,1,2,2) = 4.4; 
results_afni_mema(3,3,1,2,2) = 3.6; 
results_afni_mema(4,3,1,2,2) = 3.4; 

%   event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,1,2,2) = 5.4; 
results_afni_mema(2,4,1,2,2) = 3.9; 
results_afni_mema(3,4,1,2,2) = 2.8; 
results_afni_mema(4,4,1,2,2) = 2.3; 


%-------------------------------------
% One-sample t-tests
%-------------------------------------

% boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,2) = 6.9;
results_afni_mema(2,1,2,2,2) = 5.6;
results_afni_mema(3,1,2,2,2) = 3.5;
results_afni_mema(4,1,2,2,2) = 2.6;

% boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,2,2,2) = 4.5;
results_afni_mema(2,2,2,2,2) = 2.5;
results_afni_mema(3,2,2,2,2) = 1.7;
results_afni_mema(4,2,2,2,2) = 1.7;

% event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,2,2,2) = 7.0;
results_afni_mema(2,3,2,2,2) = 8.0;
results_afni_mema(3,3,2,2,2) = 5.8;
results_afni_mema(4,3,2,2,2) = 4.7;

% event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,2,2,2) = 6.6;
results_afni_mema(2,4,2,2,2) = 4.4;
results_afni_mema(3,4,2,2,2) = 2.4;
results_afni_mema(4,4,2,2,2) = 2.0;


% boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,4,2) = 7.4;
results_afni_mema(2,1,2,4,2) = 5.3;
results_afni_mema(3,1,2,4,2) = 2.6;
results_afni_mema(4,1,2,4,2) = 1.6;

% boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,2,4,2) = 5.2;
results_afni_mema(2,2,2,4,2) = 3.4;
results_afni_mema(3,2,2,4,2) = 2.1;
results_afni_mema(4,2,2,4,2) = 1.0;

% event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,2,4,2) = 9.2;
results_afni_mema(2,3,2,4,2) = 7.6;
results_afni_mema(3,3,2,4,2) = 7.2;
results_afni_mema(4,3,2,4,2) = 5.1;

% event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,2,4,2) = 4.2;
results_afni_mema(2,4,2,4,2) = 3.2;
results_afni_mema(3,4,2,4,2) = 2.7;
results_afni_mema(4,4,2,4,2) = 1.8;







