close all
clear all
clc

addpath('/home/andek/Research_projects/nifti_matlab')
%addpath('/home/andek/nifti_matlab')

load AFNI_clusterThresholds_1_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects

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

brain = load_nii('/home/andek/Research_projects/RandomGroupAnalyses/FalseSignificantClusters/TT_N27.nii');
%brain = load_nii('/home/andek/AFNI/TT_N27.nii');
brain = double(brain.img);
brain = brain(1:3:end,1:3:end,1:3:end);
brain = brain(:,:,1:end-1);

false_clusters = zeros(size(brain));
average_gradient_magnitude = zeros(size(brain));


for file = 1:10000
    file
    
    difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/FalseClusters/DifferenceMapsOLS/Beijing_6mm_randomEvent_REML_' num2str(file) '.nii']);
    difference = double(difference.img);
    
    % Get z-score for Group 1 - Group 2, for OLS sub-brick 2 represents
    % the z-score for the group difference
    difference = squeeze(difference(:,:,:,1,2));
    
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
    
    [labels,N] = bwlabeln(difference > 2.326);
    cluster_extents = zeros(N,1);
    significant = 0;
    clusters = 0;
    for i = 1:N
        cluster_size = sum(labels(:) == i);
        
        if cluster_size < clusterThresholds(file)
            labels(labels==i) = 0;
        else
            significant = 1;
            clusters = clusters + 1;
            labels(labels==i) = N+10;
        end
    end
    
    labels(labels==(N+10)) = 1;
    
    % Save map of significant clusters
    false_clusters = false_clusters + labels;
    
end


average_gradient_magnitude = average_gradient_magnitude / 10000;

mask = double(difference ~= 0);
%mask = double(brain ~= 0);
average_gradient_magnitude_ = average_gradient_magnitude .* mask;
average_gradient_magnitude_(average_gradient_magnitude_ == 0) = 1000;
average_gradient_magnitude_ = 1/(average_gradient_magnitude_);

% Show some results
slice = 32;
figure; imagesc(false_clusters(:,:,slice)); colormap gray; axis image; axis off; colorbar
title('Spatial distribution of false clusters for AFNI OLS')
set(gca,'FontSize',15)
%print -dpng AFNIOLS_false_clusters.png
%print -deps AFNIOLS_false_clusters.eps
figure; imagesc(average_gradient_magnitude(:,:,slice)); colormap gray; axis image; axis off
title('Average gradient magnitude for AFNI OLS')
set(gca,'FontSize',15)
figure; image(average_gradient_magnitude_(:,:,slice)*0.015); colormap gray; axis image; axis off
title('Average smoothness for AFNI OLS')
set(gca,'FontSize',15)
%print -dpng AFNIOLS_smoothness.png
%print -deps AFNIOLS_smoothness.eps
figure; imagesc(brain(:,:,slice)); colormap gray; axis image

