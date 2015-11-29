close all
clear all
clc

SPM_voxel_size = 2;
FSL_voxel_size = 2;
AFNI_voxel_size = 3;

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
imagesc(mean_FWHM_brainsize(:,:,50) * SPM_voxel_size,[0 20]); colormap gray; colorbar; title('Smoothness SPM (mm FWHM)'); axis image; axis off
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/SPM_smoothness.png

%-----------
% FSL
%-----------

load spatialsmoothness_FSLOLS.mat

figure
imagesc(mean_FWHM(:,:,51) * FSL_voxel_size,[0 20]); colormap gray; colorbar; title('Smoothness FSL OLS (mm FWHM)'); axis image; axis off
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLOLS_smoothness.png

load spatialsmoothness_FSLFLAME.mat

figure
imagesc(mean_FWHM(:,:,51) * FSL_voxel_size,[0 20]); colormap gray; colorbar; title('Smoothness FSL FLAME (mm FWHM)'); axis image; axis off
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLFLAME_smoothness.png

%-----------
% AFNI
%-----------

load spatialsmoothness_AFNIOLS.mat

figure
imagesc(mean_FWHM(:,:,32) * AFNI_voxel_size,[0 20]); colormap gray; colorbar; title('Smoothness AFNI OLS (mm FWHM)'); axis image; axis off
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIOLS_smoothness.png

load spatialsmoothness_AFNIMEMA.mat

figure
imagesc(mean_FWHM(:,:,32) * AFNI_voxel_size,[0 20]); colormap gray; colorbar; title('Smoothness AFNI MEMA (mm FWHM)'); axis image; axis off
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIMEMA_smoothness.png



