% ==============================================
% Resets the images in the GUI
% ==============================================
function resetImg(image, color)
    I = getimage(image);
    [L, W, D] = size(I);
    newImage = repmat(reshape(color, 1, 1, 3), L, W);
    imshow(newImage, "Parent", image);
end