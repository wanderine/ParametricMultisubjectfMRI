close all
clear all
clc

addpath('/home/andek/Research_projects/nifti_matlab')

study = 'RhymeJudgment';
%cdt = 2.65;
cdt = 3.95;



%z_cdt = '23'; % 2.3
z_cdt = '31'; % 3.1


contrast = 1;

cluster_sizes = [];

permutations = 5000;

% Loop over permutation maps, first round to get *ALL* cluster sizes
for perm = 1:permutations
    
    perm
    
    % Load a new group permutation map
    if perm < 10
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm0000' num2str(perm) '.nii.gz']);
    elseif perm < 100
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm000' num2str(perm) '.nii.gz']);
    elseif perm < 1000
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm00' num2str(perm) '.nii.gz']);
    else
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm0' num2str(perm) '.nii.gz']); 
    end
    permutationmap = double(permutationmap.img);
       
    %---------    
    % Apply cluster defining threshold and look at size of each cluster
    
    [labels,N] = bwlabeln(permutationmap >= cdt);
    cluster_extents = zeros(N,1);
    for i = 1:N
        cluster_extents(i) = sum(labels(:) == i);
    end
    
    cluster_sizes = [cluster_sizes; cluster_extents];           
end

% Second round to calculate uncorrected 
% p-values for every cluster in every permutation
all_pvalues = zeros(size(cluster_sizes));

pvalues_perm = zeros(permutations,1);
cluster_sizes_perm = zeros(permutations,1);

pvalue = 1;

for perm = 1:permutations
    
    perm
    
    % Load a new permutation map
    if perm < 10
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm0000' num2str(perm) '.nii.gz']);
    elseif perm < 100
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm000' num2str(perm) '.nii.gz']);
    elseif perm < 1000
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm00' num2str(perm) '.nii.gz']);
    else
        permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm0' num2str(perm) '.nii.gz']); 
    end
    permutationmap = double(permutationmap.img);

    %---------    
    % Apply cluster defining threshold and look at size of each cluster
    
    [labels,N] = bwlabeln(permutationmap >= cdt);
    cluster_extents = zeros(N,1);
    cluster_pvalues = zeros(N,1); % uncorrected cluster p-values
    for i = 1:N
        cluster_extents(i) = sum(labels(:) == i);
        cluster_pvalues(i) = sum( cluster_sizes >= cluster_extents(i) ) / length(cluster_sizes); % uncorrected cluster p-value
        all_pvalues(pvalue) = sum( cluster_sizes >= cluster_extents(i) ) / length(cluster_sizes); % uncorrected cluster p-value
        pvalue = pvalue + 1;
    end
        
    if N > 0
        % Create *minimum* uncorrected P-value distribution
        pvalues_perm(perm) = min(cluster_pvalues);
        % Create maximum cluster size distribution
        cluster_sizes_perm(perm) = max(cluster_extents);
    else
        pvalues_perm(perm) = 1;
        cluster_sizes_perm(perm) = 0;
    end
    
end

% Load correctly labeled data
perm = 1;
permutationmap = load_nii(['/home/andek/Research_projects/TaskAnalyses/' study '/GroupAnalyses/randomise/permout/randomise_contrast' num2str(contrast) '_cdt' z_cdt '_vox_tstat1_perm0000' num2str(perm) '.nii.gz']);
permutationmap = double(permutationmap.img);

[labels,N] = bwlabeln(permutationmap >= cdt);
cluster_extents = zeros(N,1);
cluster_pvalues = zeros(N,1); % uncorrected p-values
corrected_stationary_cluster_pvalues = zeros(N,1); % corrected p-values
corrected_nonstationary_cluster_pvalues = zeros(N,1); % corrected p-values

% Stationary corrected p-values
for i = 1:N
    cluster_extents(i) = sum(labels(:) == i);
    cluster_pvalues(i) = sum( cluster_sizes >= cluster_extents(i) ) / length(cluster_sizes); % uncorrected cluster p-value
    corrected_stationary_cluster_pvalues(i) = sum( pvalues_perm <= cluster_pvalues(i) ) / length(pvalues_perm); % corrected cluster p-value
    % Only print p-values lower than 0.3
    if corrected_stationary_cluster_pvalues(i) < 0.3
        cluster_extents(i)
        corrected_stationary_cluster_pvalues(i)
    end
end
 
% Non-stationary corrected p-values
for i = 1:N
    cluster_extents(i) = sum(labels(:) == i);
    corrected_nonstationary_cluster_pvalues(i) = sum( cluster_sizes_perm >= cluster_extents(i) ) / length(cluster_sizes_perm);  
    % Only print p-values lower than 0.3
    if corrected_nonstationary_cluster_pvalues(i) < 0.3
        cluster_extents(i)
        corrected_nonstationary_cluster_pvalues(i)
    end
end

for i = 1:N
    if corrected_stationary_cluster_pvalues(i) < 0.3
        [cluster_extents(i) corrected_stationary_cluster_pvalues(i)  corrected_nonstationary_cluster_pvalues(i)]
    end
end


