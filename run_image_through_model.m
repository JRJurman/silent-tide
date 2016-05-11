load('camera_model.mat');
load('display_model.mat');
buildForwardLUT;
cie = loadCIEdata;
XYZ_D50 = ref2XYZ(cie.illD50, cie.cmf10deg, cie.illD50);
XYZ_D65 = ref2XYZ(cie.illD65, cie.cmf10deg, cie.illD65);

image = imread('./imgs_timbrook/color_patch_crop.jpeg');

[r, c, d] = size(image);
image_vector = double(reshape(image, [3, r*c]) + 1) / 255;

% Run values through camera model
% use the functions to linearize the camera RGB data
r = 1; g = 2; b = 3;
rgbs_lin(r,:) = polyval(cam_polys(r,:),image_vector(r,:));
rgbs_lin(g,:) = polyval(cam_polys(g,:),image_vector(g,:));
rgbs_lin(b,:) = polyval(cam_polys(b,:),image_vector(b,:));

image_XYZs = cam_matrix * rgbs_lin;

% remove blacks and run through rev model
adjusted_XYZs = catBradford(image_XYZs, XYZ_D65, XYZ_D50);
adjusted_XYZs = bsxfun(@minus, adjusted_XYZs', XYZk_disp);
final_RGB_lin = (adjusted_XYZs * M_disp');
scaled_RGB_lin = ceil(final_RGB_lin * 1024);
scaled_RGB_lin(scaled_RGB_lin<1) = 1;

rev_lut_disp = [RLUT_disp; GLUT_disp; BLUT_disp]; 
RGB_disp = rev_lut_disp(scaled_RGB_lin);

image_calibrated = uint8(reshape(RGB_disp, [r, c, d]));
imshow(image_calibrated);

