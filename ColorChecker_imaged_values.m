% Constants for all the crop regions for the color checker chart.

D = 370;

imshow(color_patch_crop);
hold on;

xs = 150:500:3100;
ys = 125:500:2075;

[x, y] = meshgrid(xs, ys);

rx = reshape(x, [24, 1]);
ry = reshape(y, [24, 1]);

scatter(rx, ry, 5000, 'square', 'white');