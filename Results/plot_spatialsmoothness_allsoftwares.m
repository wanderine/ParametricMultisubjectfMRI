close all
clear all
clc

%-----------
% SPM
%-----------

load spatialsmoothness_SPM.mat

% Load the anatomical template and put the results to match the location
v = spm_vol('/home/andek/Research_projects/spm8/templates/T1.nii');
[brain,aa] = spm_read_vols(v);
mean_FWHM_brainsize = zeros(size(brain));
mean_FWHM_brainsize(7:end-6,7:end-8,11:end-13) = mean_FWHM;

% Remove some unnecessary voxels
brain = brain(5:end-5,5:end-5,:);
mean_FWHM_brainsize = mean_FWHM_brainsize(5:end-5,5:end-5,:);

figure
imagesc(mean_FWHM_brainsize(:,:,50) * voxel_size); colormap gray; colorbar; title('Smoothness SPM (mm FWHM)'); axis image; axis off

%-----------
% FSL
%-----------

load spatialsmoothness_FSLOLS.mat

figure
image(mean_FWHM(:,:,51) * voxel_size); colormap gray; colorbar; title('Smoothness FSL OLS (mm FWHM)'); axis image; axis off

load spatialsmoothness_FSLFLAME.mat

figure
image(mean_FWHM(:,:,51) * voxel_size); colormap gray; colorbar; title('Smoothness FSL FLAME (mm FWHM)'); axis image; axis off

%-----------
% AFNI
%-----------



