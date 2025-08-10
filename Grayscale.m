% ==============================================
% Converting an image to gray scale by setting
% the RGB values
% ==============================================
function grayImg = Grayscale(img)
    r = 0.0; 
    g = 1.0; 
    b = 0.0;
    
    if size(img, 3) == 1
        % If the image is already grayscale, no conversion is needed
        grayImg = img; 
    else
        % Convert to grayscale using the weighted sum of RGB channels
        grayImg = r * img(:,:,1) + ...
                  g * img(:,:,2) + ...
                  b * img(:,:,3);
    end
end