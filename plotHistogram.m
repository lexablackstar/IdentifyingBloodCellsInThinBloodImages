% ==============================================
% Plot the histogram of an image
% ==============================================
function plotHistogram(grayImg, ax)
    hist = zeros(1, 256); % create an array to store intensity values (0-255)
    
    % For every pixel of the image
    for row = 1:size(grayImg, 1)
        for col = 1:size(grayImg, 2)
            intensity = grayImg(row, col); 
            hist(intensity + 1) = hist(intensity + 1) + 1; % intensity + 1 for proper indexing
        end
    end

    hist = hist / numel(grayImg); % Normalize to get the probability distribution

    % Plot the histogram
    bar(ax, 0:255, hist, 'BarWidth', 1);
    xlim(ax, [0 255]);
    xlabel(ax, 'Intensity');
    ylabel(ax, 'Frequency (normalized)');
end