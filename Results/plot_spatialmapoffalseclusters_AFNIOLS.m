close all
clear all
clc

addpath('/home/andek/Research_projects/nifti_matlab')

load AFNI_clusterThresholds_1_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects

false_clusters = zeros(54,64,50);

for file = 1:10000
    file
    
    difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/Results/AFNI/AllMapsOLS/Beijing_6mm_randomEvent_REML_' num2str(file) '.nii']);
    difference = double(difference.img);
    
    % Get z-score for Group 1 - Group 2, for OLS sub-brick 2 represents
    % the z-score for the group difference
    difference = squeeze(difference(:,:,:,1,2));
       
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



% Show some results
slice = 32;
figure; imagesc(false_clusters(:,:,slice)); colormap gray; axis image; axis off; colorbar
title('Spatial distribution of false clusters for AFNI OLS')
set(gca,'FontSize',15)


