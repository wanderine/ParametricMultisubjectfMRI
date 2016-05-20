% Smoothing, 1 = 4 mm, 2 = 6 mm, 3 = 8 mm, 4 = 10 mm
% Paradigm, 1 = boxcar10, 2 = boxcar30, 3 = event1, 4 = event randomized
% Analysis type, 1 = two-sample t-test, 2 = one-sample t-test
% Group size, 1 = 10 subjects per group, 2 = 20 subjects per group, 3 = 30 subjects per group, 4 = 40 subjects per group
% Study, 1 = Cambridge, 2 = Beijing, 3 = Oulu

% results(smoothing, paradigm, analysis type, group size, study)

%-------------------------------------
% FLAME1
%-------------------------------------


%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,1,3) = 0; %OK?
results_fsl_flame1(2,1,1,1,3) = 0; %OK?
results_fsl_flame1(3,1,1,1,3) = 0; %OK?
results_fsl_flame1(4,1,1,1,3) = 0; %OK?

% boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,2,1,1,3) = 0; %OK?
results_fsl_flame1(2,2,1,1,3) = 0; %OK?
results_fsl_flame1(3,2,1,1,3) = 0; %OK?
results_fsl_flame1(4,2,1,1,3) = 0; %OK?

%   event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,3,1,1,3) = 0; %OK?
results_fsl_flame1(2,3,1,1,3) = 0; %OK?
results_fsl_flame1(3,3,1,1,3) = 0; %OK?
results_fsl_flame1(4,3,1,1,3) = 0; %OK?

%   event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,4,1,1,3) = 0; %OK?
results_fsl_flame1(2,4,1,1,3) = 0; %OK?
results_fsl_flame1(3,4,1,1,3) = 0; %OK?
results_fsl_flame1(4,4,1,1,3) = 0; %OK?





%   boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,1,2,3) = 0; % OK
results_fsl_flame1(2,1,1,2,3) = 0; % OK
results_fsl_flame1(3,1,1,2,3) = 0; % OK
results_fsl_flame1(4,1,1,2,3) = 0; % OK

%   boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,2,1,2,3) = 0; % OK
results_fsl_flame1(2,2,1,2,3) = 0; % OK
results_fsl_flame1(3,2,1,2,3) = 0; % OK
results_fsl_flame1(4,2,1,2,3) = 0.4; 

%   event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,3,1,2,3) = 0; % OK
results_fsl_flame1(2,3,1,2,3) = 0; % OK
results_fsl_flame1(3,3,1,2,3) = 0; % OK
results_fsl_flame1(4,3,1,2,3) = 0; % OK

%   event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,4,1,2,3) = 0; % OK
results_fsl_flame1(2,4,1,2,3) = 0; % OK
results_fsl_flame1(3,4,1,2,3) = 0; % OK
results_fsl_flame1(4,4,1,2,3) = 0; % OK





%-------------------------------------
% One-sample t-tests
%-------------------------------------


%   boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,2,3) = 0; %OK
results_fsl_flame1(2,1,2,2,3) = 0; %OK
results_fsl_flame1(3,1,2,2,3) = 0; %OK
results_fsl_flame1(4,1,2,2,3) = 0; %OK

%   boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,2,2,2,3) = 0; %OK
results_fsl_flame1(2,2,2,2,3) = 0; %OK
results_fsl_flame1(3,2,2,2,3) = 0; %OK
results_fsl_flame1(4,2,2,2,3) = 0; %OK


%   event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,3,2,2,3) = 0; %OK
results_fsl_flame1(2,3,2,2,3) = 0; %OK
results_fsl_flame1(3,3,2,2,3) = 0; %OK
results_fsl_flame1(4,3,2,2,3) = 0; %OK

%   event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,4,2,2,3) = 0; %OK
results_fsl_flame1(2,4,2,2,3) = 0; %OK
results_fsl_flame1(3,4,2,2,3) = 0; %OK
results_fsl_flame1(4,4,2,2,3) = 0; %OK




%   boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,1,2,4,3) = 0; %OK
results_fsl_flame1(2,1,2,4,3) = 0; %OK
results_fsl_flame1(3,1,2,4,3) = 0.4;
results_fsl_flame1(4,1,2,4,3) = 2.1;


%   boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,2,2,4,3) = 0;  %OK
results_fsl_flame1(2,2,2,4,3) = 0.2;
results_fsl_flame1(3,2,2,4,3) = 0.8;
results_fsl_flame1(4,2,2,4,3) = 1.1;


%   event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,3,2,4,3) = 0;  %OK
results_fsl_flame1(2,3,2,4,3) = 0;  %OK
results_fsl_flame1(3,3,2,4,3) = 0.1;
results_fsl_flame1(4,3,2,4,3) = 0.3;

%   event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_flame1(1,4,2,4,3) = 0;  %OK
results_fsl_flame1(2,4,2,4,3) = 0;  %OK
results_fsl_flame1(3,4,2,4,3) = 0.5; 
results_fsl_flame1(4,4,2,4,3) = 1.3;






%-----------------------
% OLS
%-----------------------

%-------------------------------------
% Two-sample t-tests
%-------------------------------------

% boxcar10, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,1,3) = 3.3; 
results_fsl_ols(2,1,1,1,3) = 3.2; 
results_fsl_ols(3,1,1,1,3) = 4.4; 
results_fsl_ols(4,1,1,1,3) = 5.2; 

% boxcar30, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,2,1,1,3) = 2.9; 
results_fsl_ols(2,2,1,1,3) = 4.6; 
results_fsl_ols(3,2,1,1,3) = 4.7; 
results_fsl_ols(4,2,1,1,3) = 4.0; 

%   event1, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,3,1,1,3) = 2.2; 
results_fsl_ols(2,3,1,1,3) = 4.0; 
results_fsl_ols(3,3,1,1,3) = 5.4; 
results_fsl_ols(4,3,1,1,3) = 6.0; 

%   event2, two sample t-test, group size 10, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,4,1,1,3) = 2.5; 
results_fsl_ols(2,4,1,1,3) = 3.7; 
results_fsl_ols(3,4,1,1,3) = 5.3; 
results_fsl_ols(4,4,1,1,3) = 5.6; 





%   boxcar10, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,1,2,3) = 2.3; 
results_fsl_ols(2,1,1,2,3) = 3.2; 
results_fsl_ols(3,1,1,2,3) = 3.8; 
results_fsl_ols(4,1,1,2,3) = 4.2; 

%   boxcar30, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,2,1,2,3) = 1.9; 
results_fsl_ols(2,2,1,2,3) = 2.9; 
results_fsl_ols(3,2,1,2,3) = 3.0; 
results_fsl_ols(4,2,1,2,3) = 3.5; 

%   event1, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,3,1,2,3) = 2.0; 
results_fsl_ols(2,3,1,2,3) = 3.1; 
results_fsl_ols(3,3,1,2,3) = 3.8; 
results_fsl_ols(4,3,1,2,3) = 4.2; 

%   event2, two sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,4,1,2,3) = 1.7; 
results_fsl_ols(2,4,1,2,3) = 3.1; 
results_fsl_ols(3,4,1,2,3) = 3.7; 
results_fsl_ols(4,4,1,2,3) = 3.6; 





%-------------------------------------
% One-sample t-tests
%-------------------------------------


%   boxcar10, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,2,3) = 4.4;
results_fsl_ols(2,1,2,2,3) = 7.4;
results_fsl_ols(3,1,2,2,3) = 8.5;
results_fsl_ols(4,1,2,2,3) = 8.3;

%   boxcar30, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,2,2,2,3) = 1.1;
results_fsl_ols(2,2,2,2,3) = 1.8;
results_fsl_ols(3,2,2,2,3) = 2.4;
results_fsl_ols(4,2,2,2,3) = 1.9;


%   event1, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,3,2,2,3) = 3.4;
results_fsl_ols(2,3,2,2,3) = 4.6;
results_fsl_ols(3,3,2,2,3) = 5.9;
results_fsl_ols(4,3,2,2,3) = 5.2;

%   event2, one sample t-test, group size 20, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,4,2,2,3) = 4.4;
results_fsl_ols(2,4,2,2,3) = 6.0;
results_fsl_ols(3,4,2,2,3) = 7.8;
results_fsl_ols(4,4,2,2,3) = 7.8;




%   boxcar10, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,1,2,4,3) = 4.5;
results_fsl_ols(2,1,2,4,3) = 6.6;
results_fsl_ols(3,1,2,4,3) = 8.4;
results_fsl_ols(4,1,2,4,3) = 7.5;


%   boxcar30, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,2,2,4,3) = 0.6;
results_fsl_ols(2,2,2,4,3) = 1.4;
results_fsl_ols(3,2,2,4,3) = 1.2;
results_fsl_ols(4,2,2,4,3) = 1.3;


%   event1, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,3,2,4,3) = 7.2;
results_fsl_ols(2,3,2,4,3) = 5.6;
results_fsl_ols(3,3,2,4,3) = 5.5;
results_fsl_ols(4,3,2,4,3) = 4.9;

%   event2, one sample t-test, group size 40, Beijing
% Smoothing 4 - 10 mm

results_fsl_ols(1,4,2,4,3) = 3.9;
results_fsl_ols(2,4,2,4,3) = 9.4;
results_fsl_ols(3,4,2,4,3) = 10.3;
results_fsl_ols(4,4,2,4,3) = 10.1;

















