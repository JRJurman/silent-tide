figure('Position', [0, 0, 1500, 500]);
hold on;

subplot(1,2,1);
% visualize the original camera RGBs
pix = permute(cam_rgbs, [3 2 1]); 
pix = reshape(pix, [6 4 3]);
pix = imrotate(pix, -90);
pix = flipdim(pix,2);
image(pix);
title('original camera patch RGBs');

subplot(1,2,2);
% visualize the linearized camera RGBs
pix = permute(cam_rgbs_lin, [3 2 1]);
pix = reshape(pix, [6 4 3]);
pix = imrotate(pix, -90);
pix = flipdim(pix,2);
image(pix);
title('linearized camera patch RGBs');
