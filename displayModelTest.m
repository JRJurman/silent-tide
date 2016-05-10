cie = loadCIEdata;
buildingDisplayModel;

munki_data = importdata('munki_CC_XYZs_Labs.txt');
munki_XYZs = munki_data(:,2:4)';

XYZ_D50 = ref2XYZ(cie.illD50, cie.cmf10deg, cie.illD50);
XYZ_D65 = ref2XYZ(cie.illD65, cie.cmf10deg, cie.illD65);

munki_XYZs_D65 = catBradford(munki_XYZs, XYZ_D50, XYZ_D65);

adjusted_XYZs = bsxfun(@minus, munki_XYZs_D65', XYZk_disp);
final_RGB_lin = (adjusted_XYZs * M_disp) / 100;

final_RGB_lin(final_RGB_lin>1.0) = 1.0;
final_RGB_lin(final_RGB_lin<0.0) = 0.0;

scaled_RGB_lin = ceil(final_RGB_lin * 1024);
scaled_RGB_lin(scaled_RGB_lin==0) = 1;

rev_lut_disp = [RLUT_disp; GLUT_disp; BLUT_disp];

RGB_disp = rev_lut_disp(scaled_RGB_lin);

figure;
hold on;
pix = reshape(RGB_disp, [6 4 3]);
pix = uint8(pix);
pix = imrotate(pix, 90);
image(pix);
