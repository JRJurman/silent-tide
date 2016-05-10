cie = loadCIEdata;
buildingDisplayModel;

munki_data = importdata('munki_CC_XYZs_Labs.txt');
munki_XYZs = munki_data(:,2:4)';

XYZ_D50 = ref2XYZ(cie.illD50, cie.cmf10deg, cie.illD50);
XYZ_D65 = ref2XYZ(cie.illD65, cie.cmf10deg, cie.illD65);

munki_XYZs_D65 = catBradford(munki_XYZs, XYZ_D50, XYZ_D65);

adjusted_XYZs = bsxfun(@minus, munki_XYZs_D65', black_XYZ);

final_RGB_lin = adjusted_XYZs*M_disp' / 100;

final_RGB_lin(final_RGB_lin>1.0) = 1.0;
final_RGB_lin(final_RGB_lin<0.0) = 0.0;

scaled_RGB_lin = ceil(final_RGB_lin * 1024);
scaled_RGB_lin(scaled_RGB_lin==0) = 1;
rev_lut_disp = [RLUT_disp; GLUT_disp; BLUT_disp];

RGB_disp = rev_lut_disp(scaled_RGB_lin);

tiTable(:,1) = 1:30;
tiTable(1:24,2:4) = RGB_disp;
tiTable(28:30,2:4) = 100;

f = fopen('disp_model_test.ti1', 'w');

fprintf(f, 'CTI1 \n');
fprintf(f, 'COLOR_REP "RGB"\n');
fprintf(f, 'NUMBER_OF_FIELDS 4\n');

fprintf(f, 'BEGIN_DATA_FORMAT\n');
fprintf(f, 'SAMPLE_ID RGB_R RGB_G RGB_B\n');
fprintf(f, 'END_DATA_FORMAT \n');

fprintf(f, 'NUMBER_OF_SETS 30\n');
fprintf(f, 'NUMBER_OF_SETS 30\n');
fprintf(f, 'BEGIN_DATA\n');

fprintf(f, '%d\t%f\t%f\t%f\n', tiTable');

fprintf(f, 'END_DATA\n');
