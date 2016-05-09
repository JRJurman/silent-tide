% evaluate the color error of an uncalibrated color imaging workflow

% Load the CM-measured XYZ/Lab data for the CC chart
munki_CC_XYZLab = importdata('munki_CC_XYZs_Labs.txt');

% Extract the XYZ and Lab values of the CC patches
munki_CC_XYZ = munki_CC_XYZLab(:,2:4);
munki_CC_Lab = munki_CC_XYZLab(:,5:7);

% get the ColorChecker imaged values
ColorChecker_imaged_values;

% scale them to 0 - 100
cam_rgbs = cam_rgbs * 100;
cam_gray_rgbs = cam_gray_rgbs * 100;

tiTable(:,1) = 1:30;
tiTable(1:24,2:4) = cam_rgbs';
tiTable(28:30,2:4) = 100;

f = fopen('workflow_test_uncal.ti1', 'w');
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
