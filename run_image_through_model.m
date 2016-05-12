load('camera_model.mat');
load('display_model.mat');
buildForwardLUT;
cie = loadCIEdata;
XYZ_D50 = ref2XYZ(cie.illD50, cie.cmf10deg, cie.illD50);
XYZ_D65 = ref2XYZ(cie.illD65, cie.cmf10deg, cie.illD65);

image = imread('./imgs_timbrook/color_patch_crop.jpeg');

[rows, cols, depth] = size(image);
image_vector = double(reshape(image, [3, rows*cols]) + 1) / 255;

% Run values through camera model
% use the functions to linearize the camera RGB data
red = 1; green = 2; blue = 3;
rgbs_lin(red,:) = polyval(cam_polys(red,:),image_vector(red,:));
rgbs_lin(green,:) = polyval(cam_polys(green,:),image_vector(green,:));
rgbs_lin(blue,:) = polyval(cam_polys(blue,:),image_vector(blue,:));

% clip out of range values 
rgbs_lin(rgbs_lin<0) = 0;
rgbs_lin(rgbs_lin>1) = 1;

image_XYZs = cam_matrix * rgbs_lin;

% remove blacks and run through rev model
adjusted_XYZs = catBradford(image_XYZs, XYZ_D65, XYZ_D50);
adjusted_XYZs = bsxfun(@minus, adjusted_XYZs', XYZk_disp * 100);
final_RGB_lin = (adjusted_XYZs * M_disp') / 100;
scaled_RGB_lin = ceil(final_RGB_lin * 1024);

% clip out of range values
scaled_RGB_lin(scaled_RGB_lin<1) = 1;
scaled_RGB_lin(scaled_RGB_lin>1024) = 1024;

rev_lut_disp = [RLUT_disp; GLUT_disp; BLUT_disp]; 
RGB_disp = rev_lut_disp(scaled_RGB_lin);
RGB_disp = RGB_disp';

image_calibrated = uint8(reshape(RGB_disp, [rows, cols, depth]));
imshow(image_calibrated);

