load_patch_CIE_ill_data;

figure('Position', [0, 0, 1500, 500]);
hold on;

subplot(1,3,1);
imshow('imgs_timbrook/sample.jpg');
title('Original Patch');

real_patches(:,1) = st_real_XYZ;
real_patches(:,2) = st_real_XYZ;
real_patches(:,3) = tm_real_XYZ;
real_patches(:,4) = tm_real_XYZ;

munki_XYZs_D65 = catBradford(real_patches, XYZ_D50, XYZ_D65);
munki_XYZs_sRGBs = XYZ2sRGB(munki_XYZs_D65);
pix = reshape(munki_XYZs_sRGBs', [2 2 3]);
pix = uint8(pix*255);
pix = imrotate(pix, -90);
pix = flip(pix,2);
subplot(1,3,2);
imshow(pix);
title('munki Color Patches XYZs in sRGB');

img_patches(:,1) = st_imaged_XYZ;
img_patches(:,2) = st_imaged_XYZ;
img_patches(:,3) = tm_imaged_XYZ;
img_patches(:,4) = tm_imaged_XYZ;

munki_XYZs_D65 = catBradford(img_patches, XYZ_D50, XYZ_D65);
munki_XYZs_sRGBs = XYZ2sRGB(munki_XYZs_D65);
pix = reshape(munki_XYZs_sRGBs', [2 2 3]);
pix = uint8(pix*255);
pix = imrotate(pix, -90);
pix = flip(pix,2);
subplot(1,3,3);
imshow(pix);
title('imaged Color Patches estimated XYZs in sRGB');

%% Table

% calulate Labs
st_munki_Lab = XYZ2Lab(st_real_XYZ, cie.illD50);
st_cam_Lab = XYZ2Lab(st_imaged_XYZ, cie.illD50);
dEab = DEab(st_munki_Lab, st_cam_Lab);
table(1,1) = 27.1;
table(1,2:4) = st_munki_Lab';
table(1,5:7) = st_cam_Lab';
table(1,8) = dEab;

tm_munki_Lab = XYZ2Lab(tm_real_XYZ, cie.illD50);
tm_cam_Lab = XYZ2Lab(tm_imaged_XYZ, cie.illD50);
dEab = DEab(tm_munki_Lab, tm_cam_Lab);
table(2,1) = 27.2;
table(2,2:4) = tm_munki_Lab';
table(2,5:7) = tm_cam_Lab';
table(2,8) = dEab;

% Make nice table
% fprintf('%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n', table');

