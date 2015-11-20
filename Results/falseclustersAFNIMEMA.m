close all
clear all
clc

%addpath('/home/andek/Research_projects/nifti_matlab')
addpath('/home/andek/nifti_matlab')

load AFNI_clusterThresholds_1_10000_Beijing_event2_smoothing6mm_twosamplettest_20subjects

%brain = load_nii('/home/andek/Research_projects/RandomGroupAnalyses/FalseSignificantClusters/TT_N27.nii');
brain = load_nii('/home/andek/AFNI/TT_N27.nii');
brain = double(brain.img);
brain = brain(1:3:end,1:3:end,1:3:end);
brain = brain(:,:,1:end-1);

false_clusters = zeros(size(brain));

for file = 1:10000
    file
    
    % MEMA results
    %difference = load_nii(['/home/andek/Research_projects/RandomGroupAnalyses/FalseClusters/DifferenceMapsMEMA/Beijing_6mm_randomEvent_REML_' num2str(file) '.nii']);
    difference = load_nii(['/flush/andek/AFNI/FalseClusters/DifferenceMapsMEMA/Beijing_6mm_randomEvent_REML_' num2str(file) '.nii']);
    difference = double(difference.img);
    
    % Get t-score for Group 1 - Group 2, for MEMA sub-brick 6 represents
    % the t-score for the group difference
    difference = squeeze(difference(:,:,:,1,6));
        
    %---------
    % Apply cluster defining threshold and look at size of each cluster
    
    [labels,N] = bwlabeln(difference > 2.552);
    significant = 0;
    clusters = 0;
    for i = 1:N
        cluster_size = sum(labels(:) == i);
        
        if cluster_size < clusterThresholds(file)
            labels(labels==i) = 0;
        else
            clusters = clusters + 1;
            labels(labels==i) = N+10;
        end
    end
    
    labels(labels==(N+10)) = 1;
    
    % Save map of significant clusters
    false_clusters = false_clusters + labels;
    
end

slice = 32;
figure; imagesc(false_clusters(:,:,slice)); colormap gray; axis image; axis off; colorbar
title('Spatial distribution of false clusters for AFNI MEMA')
set(gca,'FontSize',15)
%print -dpng AFNIMEMA_false_clusters.png
%print -deps AFNIMEMA_false_clusters.eps


