% ==============================================
% Remove the Gaussian noise by using 
% the Weiner filter
% ==============================================
function output = removeGaussianNoise(image, filter_size)
    [rows, cols] = size(image);
    output = image;
    filter = floor(filter_size / 2);
    
    for i = 1 + filter : rows - filter
        for j = 1 + filter : cols - filter
            % Extract the neighborhood window around each pixel
            neighborhood = image(i - filter : i + filter, j - filter : j + filter);
            
            % Compute the mean of the neighborhood
            meanValue = mean(neighborhood(:));
            currentPixel = image(i, j);
            deviation = abs(currentPixel - meanValue);

            threshold = 10;  % Set threshold
            if deviation > threshold
                output(i, j) = meanValue;
            end
        end
    end
end