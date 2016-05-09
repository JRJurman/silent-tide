cie = loadCIEdata;

disp_XYZs = importdata('workflow_test_uncal.ti3', ' ', 20);

patches_XYZ = disp_XYZs.data(1:24, 5:7);

black_XYZ = mean(disp_XYZs.data(25:27, 5:7));
white_XYZ = mean(disp_XYZs.data(28:30, 5:7));

black_LAB = XYZ2Lab(black_XYZ', cie.illD50);
white_LAB = XYZ2Lab(white_XYZ', cie.illD50);

patches_Lab = XYZ2Lab(patches_XYZ', cie.illD50);

munki_data = importdata('munki_CC_XYZs_Labs.txt');
munki_XYZs = munki_data(:,2:4)';

% calulate Labs
munki_Lab = XYZ2Lab(munki_XYZs, cie.illD50);

