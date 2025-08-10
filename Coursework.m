close all;
clear all;

% Read the images
bI1 = imread("BloodImg1.tif");
bI2 = imread("BloodImg2.tif");
bI3 = imread("BloodImg3.tif");

% Convert images to grayscale using custom weights
gI1 = Grayscale(bI1);
gI2 = Grayscale(bI2);
gI3 = Grayscale(bI3);

% Optionally display all three images in a single figure
figure;
subplot(1,3,1); imshow(gI1), title('Blood Image 1');
subplot(1,3,2); imshow(gI2), title('Blood Image 2');
subplot(1,3,3); imshow(gI3), title('Blood Image 3');
contrast_value1 = calculateRMSContrast(bI1); % apply function to first image
contrast_value2 = calculateRMSContrast(bI2); % apply function to second image
contrast_value3 = calculateRMSContrast(bI3); % apply function to third image


% Display the result
disp(['RMS Contrast for first image: ', num2str(contrast_value1)]);
disp(['RMS Contrast for second image: ', num2str(contrast_value2)]);
disp(['RMS Contrast for third image: ', num2str(contrast_value3)]);

% Set a threshold
threshold = 170;  % for this images values 160 to 180 are the best

% Process the images
processed_image1 = processImage(bI1, threshold, 0);
processed_image2 = processImage(bI2, threshold, 1);
processed_image3 = processImage(bI3, threshold, 0);

% Display the images (original and processed)
figure;
subplot(3, 2, 1), imshow(bI1), title('Original Image');
subplot(3, 2, 2), imshow(processed_image1), title('Processed Image');
subplot(3, 2, 3), imshow(bI2), title('Original Image');
subplot(3, 2, 4), imshow(processed_image2), title('Processed Image');
subplot(3, 2, 5), imshow(bI3), title('Original Image');
subplot(3, 2, 6), imshow(processed_image3), title('Processed Image');

