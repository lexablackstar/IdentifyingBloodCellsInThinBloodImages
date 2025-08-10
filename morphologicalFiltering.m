% ==============================================
% Apply morphological filtering to process the image
% ==============================================
function final_image = morphologicalFiltering(bimg)
    % create a round mask
    dia = 46;
    rad = dia/2;
    r = round (0.1*rad);
    rd = 2*r + 1;
    nbh = zeros(rd) ;
    for n = 1:rd
        for m = 1:rd
            rad = sqrt(((n-r-1).^2) + ((m-r-1).^2));
            if rad<=r
                nbh(n,m) = 1;
            end
        end
    end
    SE = strel(nbh);

    % perform the morphological opperations
    img_open = imopen(bimg, SE);
    img_close = imclose(img_open, SE);
    dilated_image = imdilate(img_close, SE);
    final_image = dilated_image;
end