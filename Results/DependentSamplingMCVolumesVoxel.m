close all
clear all
clc

for nGrp=[20]     % Group size
    
    smoothing_FWHM = 10;
    
    filtersize = 15;
    
    voxel_size_x = 2;
    voxel_size_y = 2;
    voxel_size_z = 2;
    
    sigma_x = smoothing_FWHM / 2.354 / voxel_size_x;
    sigma_y = smoothing_FWHM / 2.354 / voxel_size_y;
    sigma_z = smoothing_FWHM / 2.354 / voxel_size_z;
    
    filter_x = fspecial('gaussian',filtersize,sigma_x);
    filter_x = filter_x(:,(filtersize+1)/2);
    filter_x = filter_x / sum(abs(filter_x));
    
    filter_y = fspecial('gaussian',filtersize,sigma_y);
    filter_y = filter_y(:,(filtersize+1)/2);
    filter_y = filter_y / sum(abs(filter_y));
    
    filter_z = fspecial('gaussian',filtersize,sigma_z);
    filter_z = filter_z(:,(filtersize+1)/2);
    filter_z = filter_z / sum(abs(filter_z));
    
    
    % Put 1D filters into 3D arrays
    temp = zeros(1,filtersize,1);
    temp(1,:,1) = filter_x;
    filter_xx = temp;
    
    temp = zeros(filtersize,1,1);
    temp(:,1,1) = filter_y;
    filter_yy = temp;
    
    temp = zeros(1,1,filtersize);
    temp(1,1,:) = filter_z;
    filter_zz = temp;        
    
    %---------------
    
    nMCrlz=1000;  % just for me, here, how many MC realizations
    
    n=198;       % Our total sample size
    %nGrp=20;     % Group size
    nSamp=1000;  % Number of samples (of size nGrp) from sample of "population" of n
    Alpha=0.05;  % Nominal alpha
    sy = 60; sx = 60; sz = 60; % Volume size        
    
    Thr=4.71; % 10 mm
    
    mcFWEmn=zeros(nMCrlz,1);
    
    parfor k=1:nMCrlz
        
        if (mod(k,100) == 0)
            k
        end
        
        Y=randn(sy+20,sx+20,sz+20,n);  % Like the actual "complete" set of n datasets
        
        % Smooth
        smoothed_volumes = zeros(size(Y));
        for t = 1:n
            volume = Y(:,:,:,t);
            smoothed_volume = convn(volume,filter_xx,'same');
            smoothed_volume = convn(smoothed_volume,filter_yy,'same');
            smoothed_volume = convn(smoothed_volume,filter_zz,'same');
            smoothed_volumes(:,:,:,t) = smoothed_volume;
        end
        % Remove borders
        Y = smoothed_volumes(11:end-10,11:end-10,11:end-10,:);        
        
        % Rescale to unit variance
        Y = Y / std(Y(:));
        
        FWE=zeros(nSamp,1);
        for i=1:nSamp
            I=randperm(n);
            Ys=Y(:,:,:,I(1:nGrp));  % The sub-set used for each sample
            Z=mean(Ys,4)*sqrt(nGrp);            
            FWE(i)=max(Z(:))>=Thr;
        end
        mcFWEmn(k)=mean(FWE);
    end
    
    fprintf('Percent bias: Mean(FWE) = %0.2f%%   SD(FWE) = %0.2f%% \n',...
        (mean(mcFWEmn)-Alpha)/Alpha*100,...
        (std(mcFWEmn)-sqrt(Alpha*(1-Alpha)/nSamp))/sqrt(Alpha*(1-Alpha)/nSamp)*100)
    
end
