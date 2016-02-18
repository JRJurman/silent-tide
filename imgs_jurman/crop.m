% load image
orig = imread('jurman_lumiaicon.jpg');

% chartTopLeft and chartBotRight
ctl = [458 331];
cbr = [3926 2742];

% crop with the corners of the image
cropChart = orig(ctl(2):cbr(2),ctl(1):cbr(1),:);

% patchTopLeft and patchBotRight
ptl = [4091 1840];
pbr = [4835 2729];

% crop with the corners of the image
cropPatch = orig(ptl(2):pbr(2),ptl(1):pbr(1),:);

% resize the images
resizeChart = imresize(cropChart, [800 1125]);
resizePatch = imresize(cropPatch, [300 225]);

% write images to path
imwrite(resizeChart, 'patches.jpg');
imwrite(resizePatch, 'chart.jpg');

