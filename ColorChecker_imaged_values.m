% Constants for all the crop regions for the color checker chart.

color_patch_crop = imread('imgs_timbrook/color_patch_crop.jpeg');
% imshow(color_patch_crop);
% hold on;
width = 350;
xs = linspace(258,2682, 6) - (width / 2);
ys = linspace(245, 1675, 4) - (width / 2);

[x, y] = meshgrid(xs, ys);

rx = reshape(x, [24, 1]);
ry = reshape(y, [24, 1]);

means = zeros([24 3]);
for idx = 1:16
    crop_squares = color_patch_crop(x(idx):x(idx) + width, y(idx):y(idx) + width, :);
    [r, c, d] = size(crop_squares);
    flattened = reshape(crop_squares, [r * c, d]);
    mean_rgb = mean(flattened);
    norm_mean = mean_rgb ./ 255;
    means(idx, :) = norm_mean;
end

image(reshape(means, [4 6 3]));


% scatter(rx, ry, 20000, 'square', 'white');