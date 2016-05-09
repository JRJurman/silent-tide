% Constants for all the crop regions for the color checker chart.

%% Timbrook
color_patch_crop = imread('imgs_timbrook/color_patch_crop.jpeg');
width = 350;
xs = linspace(258,2682, 6) - (width / 2);
ys = linspace(245, 1675, 4) - (width / 2);

%% Jesse
% color_patch_crop = imread('imgs_jurman/chart.jpg');
% width = 130;
% xs = linspace(94,1024, 6) - (width / 2);
% ys = linspace(92, 648, 4) - (width / 2);

[x, y] = meshgrid(ys, xs); % row col, x y

rx = uint16(reshape(x, [24, 1]));
ry = uint16(reshape(y, [24, 1]));

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

%figure('Position', [0, 0, 1500, 500]);
%hold on;
%subplot(1,2,1);
ni = reshape(means, [6 4 3]);
%imshow(fliplr(rot90(ni, 3)));
%title('Average RGB values');

%subplot(1,2,2);
%imshow(color_patch_crop);
%title('Original Image');

colorchecker_means = flip(rot90(means));
cam_rgbs = colorchecker_means;
cam_gray_rgbs = colorchecker_means(:, 19:24);

cam_gray_rgbs = fliplr(cam_gray_rgbs);

cam_rgbs;
cam_gray_rgbs;
