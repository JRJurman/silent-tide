XYZ_D50 = ref2XYZ(cie.illD50, cie.cmf10deg, cie.illD50);
XYZ_D65 = ref2XYZ(cie.illD65, cie.cmf10deg, cie.illD65);

figure('Position', [0, 0, 1500, 500]);
hold on;
subplot(1,2,1);
% visualize ColorMunki XYZs in sRGB
munki_XYZs_D65 = catBradford(munki_XYZs, XYZ_D50, XYZ_D65);
munki_XYZs_sRGBs = XYZ2sRGB(munki_XYZs_D65);
pix = reshape(munki_XYZs_sRGBs', [6 4 3]);
pix = uint8(pix*255);
pix = imrotate(pix, -90);
pix = flip(pix,2);
imshow(pix);
title('ColorMunki XYZs in sRGB');

subplot(1,2,2);
% visualize camera-estimated XYZs in sRGB
cam_XYZs_D65 = catBradford(cam_XYZs, XYZ_D50, XYZ_D65);
cam_XYZs_sRGBs = XYZ2sRGB(cam_XYZs_D65);
pix = reshape(cam_XYZs_sRGBs', [6 4 3]);
pix = uint8(pix*255);
pix = imrotate(pix, -90);
pix = flip(pix,2);
imshow(pix);
title('camera-estimated XYZs in sRGB');
