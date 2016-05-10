load('camera_model.mat');
load('display_model.mat');
buildForwardLUT;
cie = loadCIEdata;
XYZ_D50 = ref2XYZ(cie.illD50, cie.cmf10deg, cie.illD50);
XYZ_D65 = ref2XYZ(cie.illD65, cie.cmf10deg, cie.illD65);

image = imread('./imgs_timbrook/color_patch_crop.jpeg');

[r, c, d] = size(image);
image_vector = reshape(image, [3, r*c]) + 1;

% Run values through fwd LUT and matrix
fwd_LUT = [RLUT_fwd; GLUT_fwd; BLUT_fwd];
fwd_LUT(fwd_LUT<0) = 0;
fwd_LUT(fwd_LUT>1) = 1;
image_vector_RS = fwd_LUT(image_vector);
image_vector_RS_h = [image_vector_RS; ones(1, size(image_vector_RS, 2))];
image_XYZs = M_fwd * image_vector_RS_h * 100;

% remove blacks and run through rev model
adjusted_XYZs = catBradford(image_XYZs, XYZ_D65, XYZ_D50);
adjusted_XYZs = bsxfun(@minus, adjusted_XYZs', XYZk_disp);
final_RGB_lin = (adjusted_XYZs * M_disp') / 100;
scaled_RGB_lin = ceil(final_RGB_lin * 1024);
scaled_RGB_lin(scaled_RGB_lin<1) = 1;

rev_lut_disp = [RLUT_disp; GLUT_disp; BLUT_disp]; 
RGB_disp = rev_lut_disp(scaled_RGB_lin);

image_calibrated = uint8(reshape(RGB_disp, [r, c, d]));
imshow(image_calibrated);

