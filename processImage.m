% ==============================================
% Process the image
%  - remove noise (salt and pepper + gaussian)
%  - binarize image
%  - resault using morphological filtering
% ==============================================
function result = processImage(img, threshold, noise_type)
    filter_size = 3; % set filter size to 3x3
    noise_filtered_img = removeNoise(img, noise_type, filter_size); % filter noise
    nonoise_img = removeGaussianNoise(noise_filtered_img, filter_size); % remove gaussian noise

    bimg = binarizeImage(nonoise_img, threshold); % binarize the image
    result = morphologicalFiltering(bimg); % apply morphological filtering
end
