close all
clear all
clc

%-----------
% SPM
%-----------

load falseclusters_SPM.mat

figure
imagesc(false_clusters_brainsize(:,:,50),[0 70]); colormap gray; colorbar; title('Spatial distribution of false clusters for SPM'); axis image; axis off; set(gca,'FontSize',15)
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/SPM_false_clusters.png

%-----------
% FSL
%-----------

load falseclusters_FSLOLS.mat

figure
imagesc(false_clusters(:,:,51),[0 70]); colormap gray; colorbar;
title('Spatial distribution of false clusters for FSL OLS'); axis image; axis off; set(gca,'FontSize',15)
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLOLS_false_clusters.png


load falseclusters_FSLFLAME.mat

figure
imagesc(false_clusters(:,:,51),[0 70]); colormap gray; colorbar; title('Spatial distribution of false clusters for FSL FLAME'); axis image; axis off
set(gca,'FontSize',15)
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/FSLFLAME_false_clusters.png

%-----------
% AFNI
%-----------

load falseclusters_AFNIOLS.mat

figure
imagesc(false_clusters(:,:,32),[0 70]); colormap gray; colorbar; title('Spatial distribution of false clusters for AFNI OLS'); axis image; axis off; set(gca,'FontSize',15)
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIOLS_false_clusters.png

load falseclusters_AFNIMEMA.mat

figure
imagesc(false_clusters(:,:,32),[0 70]); colormap gray; colorbar; title('Spatial distribution of false clusters for AFNI MEMA'); axis image; axis off; set(gca,'FontSize',15)
print -dpng /home/andek/Dropbox/Dokument/LIU/Mina_Artiklar/NatureNeuroscience/results/AFNIMEMA_false_clusters.png



