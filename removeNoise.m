% ==============================================
% Remove the salt and pepper noise in 2 ways
%  - mean filter
%  - median filter
% ==============================================
function denoised_image = removeNoise(image, noise_type, filter_size)
    if size(image, 3) == 3
        image = Grayscale(image);
    end

    [rows, cols] = size(image);
    denoised_image = image;
    filter = floor(filter_size / 2);

    if noise_type == 0
        % process image with mean noise removal filter
        for i = 1 + filter : rows - filter
            for j = 1 + filter : cols - filter
                % Extract the neighborhood window around each pixel
                neighborhood = image(i - filter : i + filter, j - filter : j + filter);
                meanValue = mean(neighborhood(:));
                denoised_image(i, j) = meanValue;
            end
        end
    else
        % process image with median noise removal filter
        for i = 1 + filter : rows - filter
            for j = 1 + filter : cols - filter
                % Extract the neighborhood window around each pixel
                neighborhood = image(i - filter : i + filter, j - filter : j + filter);
                medianValue = median(neighborhood(:));
                denoised_image(i, j) = medianValue;
            end
        end
    end
end
