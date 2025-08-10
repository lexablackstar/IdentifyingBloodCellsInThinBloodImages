% ==============================================
% Binarize an image
% ==============================================
function bimage = binarizeImage(img, threshold)
    if size(img, 3) == 3
        img = Grayscale(img);  % Convert to grayscale if the image is RGB
    end
    img = double(img); % convert to double image
   
    bimage = img > threshold; 
    bimage = logical(bimage);
end