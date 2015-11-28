close all
clear all
clc

addpath('/home/andek/Research_projects/spm8')

voxel_size = 2; % 2 mm voxels

sx = 95;
sy = 79;
sz = 68;
st = 20;

mean_FWHM = zeros(sy,sx,sz);
mean_FWHMx = zeros(sy,sx,sz);
mean_FWHMy = zeros(sy,sx,sz);
mean_FWHMz = zeros(sy,sx,sz);

files = 1000;

successful = 0;

% Loop over group residuals
for file = 1:files
    
    file
    
    try
        
        residuals = zeros(sy,sx,sz,st);
        for subject = 1:20
            v = spm_vol(['/home/andek/Research_projects/RandomGroupAnalyses/Results/SPM/AllGroupResiduals/group_residuals_spm_event2_s6_comparison' num2str(file) '_subject' num2str(subject) '.img']);
            [residuals_,aa] = spm_read_vols(v);
            residuals(:,:,:,subject) = residuals_;
        end
        
        normalized_residuals = zeros(size(residuals));
        
        % Normalize each "timeseries"
        mask = zeros(sy,sx,sz);
        for x = 1:sx
            for y = 1:sy
                for z = 1:sz
                    if (not(isnan(residuals(y,x,z,1))))
                        mask(y,x,z) = 1;
                        timeseries = squeeze(residuals(y,x,z,:));
                        timeseries = timeseries(:);
                        normalized_residuals(y,x,z,:) = timeseries / sqrt(timeseries' * timeseries);
                    end
                end
            end
        end
        
        spatial_derivatives_xt = zeros(sy,sx,sz,st);
        spatial_derivatives_yt = zeros(sy,sx,sz,st);
        spatial_derivatives_zt = zeros(sy,sx,sz,st);
        
        % Calculate spatial derivatives
        brainvoxels = 0;
        allvoxelsmask = zeros(size(mask));
        for x = 2:sx-1
            for y = 2:sy-1
                for z = 2:sz-1
                    allvoxelsinside = mask(y,x,z) + mask(y+1,x,z) + mask(y-1,x,z) + mask(y,x+1,z) + mask(y,x-1,z) + mask(y,x,z+1) + mask(y,x,z-1);
                    if (allvoxelsinside == 7)
                        allvoxelsmask(y,x,z) = 1;
                        brainvoxels = brainvoxels + 1;
                        for t = 1:st
                            spatial_derivatives_xt(y,x,z,t) = (normalized_residuals(y,x+1,z,t) -  normalized_residuals(y,x-1,z,t)) / 2;
                            spatial_derivatives_yt(y,x,z,t) = (normalized_residuals(y+1,x,z,t) -  normalized_residuals(y-1,x,z,t)) / 2;
                            spatial_derivatives_zt(y,x,z,t) = (normalized_residuals(y,x,z+1,t) -  normalized_residuals(y,x,z-1,t)) / 2;
                        end
                    end
                end
            end
        end
        
        spatial_derivatives_xt(isnan(spatial_derivatives_xt)) = 0;
        spatial_derivatives_yt(isnan(spatial_derivatives_yt)) = 0;
        spatial_derivatives_zt(isnan(spatial_derivatives_zt)) = 0;
        
        spatial_derivatives_x = sum(spatial_derivatives_xt.^2,4);
        spatial_derivatives_y = sum(spatial_derivatives_yt.^2,4);
        spatial_derivatives_z = sum(spatial_derivatives_zt.^2,4);
        
        spatial_derivatives_x_ = sum(spatial_derivatives_xt(:).^2) / brainvoxels;
        spatial_derivatives_y_ = sum(spatial_derivatives_yt(:).^2) / brainvoxels;
        spatial_derivatives_z_ = sum(spatial_derivatives_zt(:).^2) / brainvoxels;
        
        lambda = [spatial_derivatives_x_ 0 0;
            0 spatial_derivatives_y_ 0;
            0 0 spatial_derivatives_z_];
        
        W = inv(2*lambda + eps*eye(3));
        FWHMx_ = sqrt(8*log(2)*W(1,1))*voxel_size
        FWHMy_ = sqrt(8*log(2)*W(2,2))*voxel_size
        FWHMz_ = sqrt(8*log(2)*W(3,3))*voxel_size
        FWHM_ = (FWHMx_*FWHMy_*FWHMz_)^(1/3)
        
        FWHM = zeros(sy,sx,sz);
        FWHMx = zeros(sy,sx,sz);
        FWHMy = zeros(sy,sx,sz);
        FWHMz = zeros(sy,sx,sz);
        
        % Calculate FWHM
        for x = 2:sx-1
            for y = 2:sy-1
                for z = 2:sz-1
                    if (allvoxelsmask(y,x,z) == 1)
                        
                        lambda = [spatial_derivatives_x(y,x,z) 0 0;
                            0 spatial_derivatives_y(y,x,z) 0;
                            0 0 spatial_derivatives_z(y,x,z)];
                        
                        W = inv(2*lambda + eps*eye(3));
                        FWHMx(y,x,z) = sqrt(8*log(2)*W(1,1));
                        FWHMy(y,x,z) = sqrt(8*log(2)*W(2,2));
                        FWHMz(y,x,z) = sqrt(8*log(2)*W(3,3));
                        FWHM(y,x,z) = (FWHMx(y,x,z)*FWHMy(y,x,z)*FWHMz(y,x,z))^(1/3);
                        
                    end
                end
            end
        end
        
        
        mean_FWHM = mean_FWHM + FWHM;
        mean_FWHMx = mean_FWHMx + FWHMx;
        mean_FWHMy = mean_FWHMy + FWHMy;
        mean_FWHMz = mean_FWHMz + FWHMz;
        
        successful = successful + 1;
        
    catch ME
        disp('Failed to load data for comparison'); file
    end
    
end

mean_FWHM = mean_FWHM/successful;
mean_FWHMx = mean_FWHMx/successful;
mean_FWHMy = mean_FWHMy/successful;
mean_FWHMz = mean_FWHMz/successful;

% Show some results

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





