function max_cluster = max_extent(image, indices)
% function result = extentThreshold(image, indices)

[x, y, z] = ind2sub(size(image), indices);

XYZ = [x y z];

% from spm_getSPM line 676:

%-Calculate extent threshold filtering (from spm_getSPM, line 676)
%-------------------------------------------------------------------
A     = spm_clusters(XYZ');
max_cluster = 0;
for i = 1:max(A)
    j = find(A == i);
    if (length(j) > max_cluster)
        max_cluster = length(j);
    end
end
