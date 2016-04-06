load_patch_CIE_ill_data;

figure('Position', [0, 0, 1500, 500]);
hold on;
subplot(1,2,1);

real_patches(:,1) = st_real_XYZ;
real_patches(:,2) = tm_real_XYZ;

munki_XYZs_D65 = catBradford(real_patches, XYZ_D50, XYZ_D65);
munki_XYZs_sRGBs = XYZ2sRGB(munki_XYZs_D65);
pix = reshape(munki_XYZs_sRGBs', [1 2 3]);
pix = uint8(pix*255);
pix = imrotate(pix, -90);
pix = flip(pix,2);
imshow(pix);
title('munki Color Patches XYZs in sRGB');

img_patches(:,1) = st_imaged_XYZ;
img_patches(:,2) = tm_imaged_XYZ;

munki_XYZs_D65 = catBradford(img_patches, XYZ_D50, XYZ_D65);
munki_XYZs_sRGBs = XYZ2sRGB(munki_XYZs_D65);
pix = reshape(munki_XYZs_sRGBs', [1 2 3]);
pix = uint8(pix*255);
pix = imrotate(pix, -90);
pix = flip(pix,2);
subplot(1,2,2);
imshow(pix);
title('imaged Color Patches XYZs in sRGB');
