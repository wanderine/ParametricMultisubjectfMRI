close all
clear all
clc

addpath('/home/andek/Research_projects/nifti_matlab')

load FSLOLS_clusterThresholds_1_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects

% Load the anatomical template
brain = load_nii(['/usr/local/fsl/data/standard/MNI152_T1_2mm_brain.nii.gz']);
brain = double(brain.img);  

false_clusters = zeros(size(brain));

significant_clusters = 0;
clusters_per_file = zeros(10000,1);

figure(1)

% Loop over group difference maps
for file = 1:10000
    
    file
    
    % Load a new group difference map
    difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/FSL/FalseClustersCDT23/AllMapsOLS/false_difference_Beijing_6mm_Event2_comparison' num2str(file) '.nii.gz']);
    difference = double(difference.img);
       
    %---------    
    % Apply cluster defining threshold and look at size of each cluster
    
    [labels,N] = bwlabeln(difference > 2.3);
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
        
    clusters_per_file(file) = clusters;
    
    significant_clusters = significant_clusters + significant;
    
    labels(labels==(N+10)) = 1;
        
    % Save map of significant clusters
    false_clusters = false_clusters + labels;
        
end


% Show some results
slice = 51;
figure; imagesc(false_clusters(:,:,slice)); colormap gray; axis image; axis off; colorbar
title('Spatial distribution of false clusters for FSL OLS')
set(gca,'FontSize',15)
%print -dpng FSLOLS_false_clusters.png
%print -deps FSLOLS_false_clusters.eps


