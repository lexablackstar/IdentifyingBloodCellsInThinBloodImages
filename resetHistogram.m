% ==============================================
% Resets the histogram in the GUI
% ==============================================
function resetHistogram(image)
    bar(image, 0:255, 0, 'BarWidth', 1);
    image.XTick = [];
    image.YTick = [];
    xlabel(image, '');
    ylabel(image, '');
end