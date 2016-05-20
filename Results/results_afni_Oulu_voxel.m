% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing, 3 = Oulu

% results(smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,1,3) = 2.2; 
results_afni_ols(2,1,1,1,3) = 2.2; 
results_afni_ols(3,1,1,1,3) = 1.4; 
results_afni_ols(4,1,1,1,3) = 1.0; 

% boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,1,1,3) = 1.8; 
results_afni_ols(2,2,1,1,3) = 0.5; 
results_afni_ols(3,2,1,1,3) = 0.7; 
results_afni_ols(4,2,1,1,3) = 0.2; 

%   event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,1,1,3) = 2.2; 
results_afni_ols(2,3,1,1,3) = 2.2; 
results_afni_ols(3,3,1,1,3) = 1.6; 
results_afni_ols(4,3,1,1,3) = 1.5; 

%   event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,1,1,3) = 3.6; 
results_afni_ols(2,4,1,1,3) = 2.4; 
results_afni_ols(3,4,1,1,3) = 1.5; 
results_afni_ols(4,4,1,1,3) = 1.2; 





%   boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,1,2,3) = 2.3; 
results_afni_ols(2,1,1,2,3) = 1.6; 
results_afni_ols(3,1,1,2,3) = 1.5; 
results_afni_ols(4,1,1,2,3) = 1.1; 

%   boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,1,2,3) = 1.1; 
results_afni_ols(2,2,1,2,3) = 1.2; 
results_afni_ols(3,2,1,2,3) = 1.1; 
results_afni_ols(4,2,1,2,3) = 0.8; 

%   event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,1,2,3) = 2.5; 
results_afni_ols(2,3,1,2,3) = 1.9; 
results_afni_ols(3,3,1,2,3) = 1.6; 
results_afni_ols(4,3,1,2,3) = 1.0; 

%   event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,1,2,3) = 2.0; 
results_afni_ols(2,4,1,2,3) = 0.3; 
results_afni_ols(3,4,1,2,3) = 0.4; 
results_afni_ols(4,4,1,2,3) = 0.6; 





%-------------------------------------
% One-sample t-tests
%-------------------------------------


%   boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,2,3) = 2.6;
results_afni_ols(2,1,2,2,3) = 2.4;
results_afni_ols(3,1,2,2,3) = 1.2;
results_afni_ols(4,1,2,2,3) = 0.9;

%   boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,2,2,3) = 0.7;
results_afni_ols(2,2,2,2,3) = 0.3;
results_afni_ols(3,2,2,2,3) = 0.3;
results_afni_ols(4,2,2,2,3) = 0;


%   event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,2,2,3) = 4.4;
results_afni_ols(2,3,2,2,3) = 3.4;
results_afni_ols(3,3,2,2,3) = 2.7;
results_afni_ols(4,3,2,2,3) = 2.1;

%   event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,2,2,3) = 1.9;
results_afni_ols(2,4,2,2,3) = 2.1;
results_afni_ols(3,4,2,2,3) = 1.5;
results_afni_ols(4,4,2,2,3) = 0.6;




%   boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,1,2,4,3) = 1.5;
results_afni_ols(2,1,2,4,3) = 1.5;
results_afni_ols(3,1,2,4,3) = 1.1;
results_afni_ols(4,1,2,4,3) = 1.0;


%   boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,2,2,4,3) = 0.1;
results_afni_ols(2,2,2,4,3) = 0.1;
results_afni_ols(3,2,2,4,3) = 0.1;
results_afni_ols(4,2,2,4,3) = 0;


%   event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,3,2,4,3) = 3.7;
results_afni_ols(2,3,2,4,3) = 3.8;
results_afni_ols(3,3,2,4,3) = 3.1;
results_afni_ols(4,3,2,4,3) = 1.7;

%   event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_ols(1,4,2,4,3) = 1.6;
results_afni_ols(2,4,2,4,3) = 1.8;
results_afni_ols(3,4,2,4,3) = 1.2;
results_afni_ols(4,4,2,4,3) = 0.6;










%-----------------------
% MEMA
%-----------------------




%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,1,3) = 5.0; 
results_afni_mema(2,1,1,1,3) = 3.7; 
results_afni_mema(3,1,1,1,3) = 2.5; 
results_afni_mema(4,1,1,1,3) = 2.3; 

% boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,1,1,3) = 5.1; 
results_afni_mema(2,2,1,1,3) = 3.9; 
results_afni_mema(3,2,1,1,3) = 2.4; 
results_afni_mema(4,2,1,1,3) = 1.8; 

%   event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,1,1,3) = 3.2; 
results_afni_mema(2,3,1,1,3) = 3.9; 
results_afni_mema(3,3,1,1,3) = 3.4; 
results_afni_mema(4,3,1,1,3) = 3.0; 

%   event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,1,1,3) = 4.7; 
results_afni_mema(2,4,1,1,3) = 4.1; 
results_afni_mema(3,4,1,1,3) = 4.2; 
results_afni_mema(4,4,1,1,3) = 3.5; 






% boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,1,2,3) = 4.6; 
results_afni_mema(2,1,1,2,3) = 3.4; 
results_afni_mema(3,1,1,2,3) = 2.8; 
results_afni_mema(4,1,1,2,3) = 1.9; 

% boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,1,2,3) = 3.6; 
results_afni_mema(2,2,1,2,3) = 2.9; 
results_afni_mema(3,2,1,2,3) = 2.0; 
results_afni_mema(4,2,1,2,3) = 1.6; 

%   event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,1,2,3) = 3.3; 
results_afni_mema(2,3,1,2,3) = 2.6; 
results_afni_mema(3,3,1,2,3) = 2.4; 
results_afni_mema(4,3,1,2,3) = 1.6; 

%   event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,1,2,3) = 4.6; 
results_afni_mema(2,4,1,2,3) = 4.0; 
results_afni_mema(3,4,1,2,3) = 3.1; 
results_afni_mema(4,4,1,2,3) = 2.1; 


%-------------------------------------
% One-sample t-tests
%-------------------------------------

% boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,2,3) = 5.8;
results_afni_mema(2,1,2,2,3) = 6.1;
results_afni_mema(3,1,2,2,3) = 5.2;
results_afni_mema(4,1,2,2,3) = 3.2;

% boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,2,2,3) = 3.4;
results_afni_mema(2,2,2,2,3) = 2.4;
results_afni_mema(3,2,2,2,3) = 1.7;
results_afni_mema(4,2,2,2,3) = 1.3;

% event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,2,2,3) = 6.1;
results_afni_mema(2,3,2,2,3) = 5.4;
results_afni_mema(3,3,2,2,3) = 3.9;
results_afni_mema(4,3,2,2,3) = 3.2;

% event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,2,2,3) = 8.3;
results_afni_mema(2,4,2,2,3) = 6.8;
results_afni_mema(3,4,2,2,3) = 6.2;
results_afni_mema(4,4,2,2,3) = 5.8;






% boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,1,2,4,3) = 5.2;
results_afni_mema(2,1,2,4,3) = 3.7;
results_afni_mema(3,1,2,4,3) = 3.2;
results_afni_mema(4,1,2,4,3) = 2.5;

% boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,2,2,4,3) = 2.2;
results_afni_mema(2,2,2,4,3) = 1.2;
results_afni_mema(3,2,2,4,3) = 0.9;
results_afni_mema(4,2,2,4,3) = 0.1;

% event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,3,2,4,3) = 5.2;
results_afni_mema(2,3,2,4,3) = 4.5;
results_afni_mema(3,3,2,4,3) = 3.3;
results_afni_mema(4,3,2,4,3) = 1.9;

% event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_afni_mema(1,4,2,4,3) = 9.4;
results_afni_mema(2,4,2,4,3) = 8.1;
results_afni_mema(3,4,2,4,3) = 6.6;
results_afni_mema(4,4,2,4,3) = 4.5;







