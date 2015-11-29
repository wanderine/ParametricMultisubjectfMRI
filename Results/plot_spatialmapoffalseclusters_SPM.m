close all
clear all
clc

addpath('/home/andek/Research_projects/spm8')

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

file = 1;
v = spm_vol(['/home/andek/Research_projects/RandomGroupAnalyses/Results/SPM/AllMaps/spm_event2_s6_comparison' num2str(file) '.img']);  
[tmap,aa] = spm_read_vols(v);

false_clusters = zeros(size(tmap));

significant_clusters = 0;
clusters_per_file = zeros(10000,1);

images = zeros(79,95,10000);

% Loop over group difference maps
for file = 1:10000
    
    file
    
    % Load a new group difference map
    v = spm_vol(['/home/andek/Research_projects/RandomGroupAnalyses/Results/SPM/AllMaps/spm_event2_s6_comparison' num2str(file) '.img']);      
    [difference,aa] = spm_read_vols(v);
                  
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


% Load the anatomical template and put the results to match the location
v = spm_vol('/home/andek/Research_projects/spm8/templates/T1.nii');
[brain,aa] = spm_read_vols(v);
difference_brainsize = zeros(size(brain)); 
false_clusters_brainsize = zeros(size(brain)); 
difference_brainsize(7:end-6,7:end-8,11:end-13) = difference;
false_clusters_brainsize(7:end-6,7:end-8,11:end-13) = false_clusters;

% Remove some unnecessary voxels
brain = brain(5:end-5,5:end-5,:);
difference_brainsize = difference_brainsize(5:end-5,5:end-5,:);
false_clusters_brainsize = false_clusters_brainsize(5:end-5,5:end-5,:);

% Show some results
slice = 50;
figure; imagesc(false_clusters_brainsize(:,:,slice)); colormap gray; axis image; axis off; colorbar
title('Spatial distribution of false clusters for SPM')
set(gca,'FontSize',15)





