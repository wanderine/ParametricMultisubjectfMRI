close all
clear all
clc

addpath('D:\spm8')
%addpath('/home/andek/spm8')

allClusterThresholds = zeros(10000,1);
load SPM_clusterThresholds_1_1000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_1001_2000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_2001_3000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_3001_4000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_4001_5000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_5001_6000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_6001_7000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_7001_8000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_8001_9000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;
load SPM_clusterThresholds_9001_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects
allClusterThresholds = allClusterThresholds + clusterThresholds;

% Setup gradient filters
x_gradient_filter = zeros(3,3,3);
x_gradient_filter(:,:,1) = [-1 0 1; -3 0 3; -1 0 1];
x_gradient_filter(:,:,2) = [-3 0 3; -6 0 6; -3 0 3];
x_gradient_filter(:,:,3) = [-1 0 1; -3 0 3; -1 0 1];


y_gradient_filter = zeros(3,3,3);
y_gradient_filter(:,:,1) = [1 3 1; 0 0 0; -1 -3 -1];
y_gradient_filter(:,:,2) = [3 6 3; 0 0 0; -3 -6 -3];
y_gradient_filter(:,:,3) = [1 3 1; 0 0 0; -1 -3 -1];


z_gradient_filter = zeros(3,3,3);
z_gradient_filter(:,:,1) = [-1 -3 -1; -3 -6 -3; -1 -3 -1];
z_gradient_filter(:,:,2) = [0 0 0; 0 0 0; 0 0 0];
z_gradient_filter(:,:,3) = [1 3 1; 3 6 3; 1 3 1];

file = 1;
v = spm_vol(['D:\fcon1000\Beijing\FalseClusters\spm_event2_s6_comparison' num2str(file) '.img']);
%v = spm_vol(['/home/andek/Research_projects/RandomGroupAnalyses/Results/SPM/Beijing/FalseClusters/spm_event2_s6_comparison' num2str(file) '.img']);  
[tmap,aa] = spm_read_vols(v);

false_clusters = zeros(size(tmap));

average_gradient_magnitude = zeros(size(tmap));

significant_clusters = 0;
clusters_per_file = zeros(10000,1);

images = zeros(79,95,10000);

% Loop over group difference maps
for file = 1:10000
    
    file
    
    % Load a new group difference map
    v = spm_vol(['D:\fcon1000\Beijing\FalseClusters\spm_event2_s6_comparison' num2str(file) '.img']);    
    %v = spm_vol(['/home/andek/Research_projects/RandomGroupAnalyses/Results/SPM/Beijing/FalseClusters/spm_event2_s6_comparison' num2str(file) '.img']);      
    [difference,aa] = spm_read_vols(v);
              
    %---------    
    % Apply gradient filters 
    % (to look at smoothness of group difference map)
    
    gradient_x = convn(difference,x_gradient_filter,'same');
    gradient_y = convn(difference,y_gradient_filter,'same');
    gradient_z = convn(difference,z_gradient_filter,'same');
    gradient_magnitude = sqrt(gradient_x.^2 + gradient_y.^2 + gradient_z.^2);
    
    average_gradient_magnitude = average_gradient_magnitude + gradient_magnitude/sum(abs(difference(:)));
    
    %---------    
    % Apply cluster defining threshold and look at size of each cluster
    
    [labels,N] = bwlabeln(difference > 2.5524);
    cluster_extents = zeros(N,1);
    significant = 0;
    clusters = 0;
    for i = 1:N
        cluster_size = sum(labels(:) == i);
        
        if cluster_size < allClusterThresholds(file)
            labels(labels==i) = 0; 
        else
            significant = 1;
            clusters = clusters + 1;
            labels(labels==i) = N+10; 
        end
    end
    
    allClusterThresholds(file)
    
    clusters_per_file(file) = clusters;
    
    significant_clusters = significant_clusters + significant;
    
    labels(labels==(N+10)) = 1;
        
    % Save map of significant clusters
    false_clusters = false_clusters + labels;
    
    images(:,:,file) = false_clusters(:,:,50);        
    
end

%false_clusters = false_clusters / significant_clusters;
average_gradient_magnitude = average_gradient_magnitude / 10000;

% Load the anatomical template and put the results to match the location
v = spm_vol('D:\spm8\templates\T1.nii');
%v = spm_vol('/home/andek/spm8/templates/T1.nii');
[brain,aa] = spm_read_vols(v);
difference_brainsize = zeros(size(brain)); 
false_clusters_brainsize = zeros(size(brain)); 
average_gradient_magnitude_brainsize = zeros(size(brain)); 
difference_brainsize(7:end-6,7:end-8,11:end-13) = difference;
false_clusters_brainsize(7:end-6,7:end-8,11:end-13) = false_clusters;
average_gradient_magnitude_brainsize(7:end-6,7:end-8,11:end-13) = average_gradient_magnitude;

% Remove some unnecessary voxels
brain = brain(5:end-5,5:end-5,:);
difference_brainsize = difference_brainsize(5:end-5,5:end-5,:);
false_clusters_brainsize = false_clusters_brainsize(5:end-5,5:end-5,:);
average_gradient_magnitude_brainsize = average_gradient_magnitude_brainsize(5:end-5,5:end-5,:);

mask = double(difference_brainsize ~= 0);
%mask = double(brain ~= 0);
average_gradient_magnitude_ = average_gradient_magnitude_brainsize .* mask;
average_gradient_magnitude_(average_gradient_magnitude_ == 0) = 1000;
average_gradient_magnitude_ = 1/(average_gradient_magnitude_);

% Show some results
slice = 50;
figure; imagesc(false_clusters_brainsize(:,:,slice)); colormap gray; axis image; axis off; colorbar
title('Spatial distribution of false clusters for SPM')
set(gca,'FontSize',15)
print -dpng SPM_false_clusters.png
print -deps SPM_false_clusters.eps
figure; imagesc(average_gradient_magnitude_brainsize(:,:,slice)); colormap gray; axis image; axis off
title('Average gradient magnitude for SPM')
set(gca,'FontSize',15)
figure; image(average_gradient_magnitude_(:,:,slice)*0.004); colormap gray; axis image; axis off
title('Average smoothness for SPM')
set(gca,'FontSize',15)
print -dpng SPM_smoothness.png
print -deps SPM_smoothness.eps
figure; imagesc(brain(:,:,slice)); colormap gray; axis image




