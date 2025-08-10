% ==============================================
% Calculating the RMS contrast of an image
% ==============================================
function contrastRSM = calculateRMSContrast(img)
    if size(img, 3) == 3
        img = Grayscale(img);  % Convert to grayscale if the image is RGB
    end
    img = double(img); % convert to double

    % Apply the RMS contrast formula
    [M, N] = size(img);
    avg_intensity = mean(img(:));
    sum_of_sdif = sum(sum((img - avg_intensity).^2));
    contrastRSM = sqrt(sum_of_sdif / (M * N));
end