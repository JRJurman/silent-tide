% Constants for all the crop regions for the color checker chart.

color_patch_crop = imread('imgs_timbrook/color_patch_crop.jpeg');
width = 350;
xs = linspace(258,2682, 6) - (width / 2);
ys = linspace(245, 1675, 4) - (width / 2);

[x, y] = meshgrid(ys, xs); % row col, x y

rx = reshape(x, [24, 1]);
ry = reshape(y, [24, 1]);

means = zeros([24 3]);
for idx = 1:24
    crop_squares = color_patch_crop(rx(idx):rx(idx) + width, ry(idx):ry(idx) + width, 1:3);
    [r, c, d] = size(crop_squares);
    flattened = reshape(crop_squares, [r * c, d]);
    mean_rgb = mean(flattened);
    norm_mean = mean_rgb ./ 255;
%     rectangle('Position', [ rx(idx), ry(idx), width, width ], 'FaceColor', norm_mean);
    means(idx, :) = norm_mean;
end

figure('Position', [0, 0, 1500, 500]);
subplot(1,2,1);
title('Average RGB values');
ni = reshape(means, [6 4 3]);
image(fliplr(rot90(ni, 3)));

subplot(1,2,2);
title('Original Image');
imshow(color_patch_crop);
% hold on;
% scatter(ry + (width / 2), rx + (width / 2), 4500, 'square', 'white');
