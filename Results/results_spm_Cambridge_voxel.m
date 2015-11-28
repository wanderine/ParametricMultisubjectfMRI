% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing

% results(smoothing, paradigm, analysis type, group size, study)

%-----------------------
% OLS
%-----------------------

results_spm_ols = zeros(4,4,2,4,2);

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,1,1) = 2.1;
results_spm_ols(2,1,1,1,1) = 1.3;
results_spm_ols(3,1,1,1,1) = 2.2;
results_spm_ols(4,1,1,1,1) = 2.5;

% boxcar30, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,2,1,1,1) = 1.2;
results_spm_ols(2,2,1,1,1) = 0.8;
results_spm_ols(3,2,1,1,1) = 1.3;
results_spm_ols(4,2,1,1,1) = 2.0;

%   event1, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,3,1,1,1) = 2.7;
results_spm_ols(2,3,1,1,1) = 1.9;
results_spm_ols(3,3,1,1,1) = 1.7;
results_spm_ols(4,3,1,1,1) = 1.9;

%   event2, two sample t-test, group size 10, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,4,1,1,1) = 2.3;
results_spm_ols(2,4,1,1,1) = 1.7;
results_spm_ols(3,4,1,1,1) = 2.1;
results_spm_ols(4,4,1,1,1) = 2.4;





%   boxcar10, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,1,2,1) = 1.3;
results_spm_ols(2,1,1,2,1) = 1.9;
results_spm_ols(3,1,1,2,1) = 1.7;
results_spm_ols(4,1,1,2,1) = 2.1;

%   boxcar30, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,2,1,2,1) = 1.7;
results_spm_ols(2,2,1,2,1) = 2.0;
results_spm_ols(3,2,1,2,1) = 2.0;
results_spm_ols(4,2,1,2,1) = 2.3;

%   event1, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,3,1,2,1) = 2.0;
results_spm_ols(2,3,1,2,1) = 2.0; 
results_spm_ols(3,3,1,2,1) = 1.8; 
results_spm_ols(4,3,1,2,1) = 2.4; 

%   event2, two sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,4,1,2,1) = 1.1; 
results_spm_ols(2,4,1,2,1) = 2.1; 
results_spm_ols(3,4,1,2,1) = 1.9; 
results_spm_ols(4,4,1,2,1) = 1.8; 





%-------------------------------------
% One-sample t-tests
%-------------------------------------


%   boxcar10, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,2,1) = 1.4;
results_spm_ols(2,1,2,2,1) = 0.6;
results_spm_ols(3,1,2,2,1) = 1.3;
results_spm_ols(4,1,2,2,1) = 1.3;

%   boxcar30, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,2,2,2,1) = 2.6;
results_spm_ols(2,2,2,2,1) = 2.6;
results_spm_ols(3,2,2,2,1) = 2.8;
results_spm_ols(4,2,2,2,1) = 2.7;


%   event1, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,3,2,2,1) = 2.6;
results_spm_ols(2,3,2,2,1) = 2.1;
results_spm_ols(3,3,2,2,1) = 1.2;
results_spm_ols(4,3,2,2,1) = 2.0;

%   event2, one sample t-test, group size 20, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,4,2,2,1) = 2.3;
results_spm_ols(2,4,2,2,1) = 1.2;
results_spm_ols(3,4,2,2,1) = 1.2;
results_spm_ols(4,4,2,2,1) = 1.5;




%   boxcar10, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,1,2,4,1) = 1.1;
results_spm_ols(2,1,2,4,1) = 1.2;
results_spm_ols(3,1,2,4,1) = 1.0;
results_spm_ols(4,1,2,4,1) = 1.4;


%   boxcar30, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,2,2,4,1) = 2.8;
results_spm_ols(2,2,2,4,1) = 3.1;
results_spm_ols(3,2,2,4,1) = 3.3;
results_spm_ols(4,2,2,4,1) = 3.4;


%   event1, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,3,2,4,1) = 2.0;
results_spm_ols(2,3,2,4,1) = 2.8;
results_spm_ols(3,3,2,4,1) = 2.5;
results_spm_ols(4,3,2,4,1) = 2.1;

%   event2, one sample t-test, group size 40, Cambridge
% Smoothing 4 - 10 mm

results_spm_ols(1,4,2,4,1) = 0.9;
results_spm_ols(2,4,2,4,1) = 0.2;
results_spm_ols(3,4,2,4,1) = 0.8;
results_spm_ols(4,4,2,4,1) = 0.7;

















