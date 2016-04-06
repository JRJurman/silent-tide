munki_data = importdata('munki_CC_XYZs_Labs.txt');
munki_XYZs = munki_data(:,2:4)';

% calulate Labs
munki_Lab = XYZ2Lab(munki_XYZs, cie.illD50);
cam_Lab = XYZ2Lab(cam_XYZs, cie.illD50);

munki_Lab
cam_Lab

% get detla Eab
dEab = DEab(munki_Lab, cam_Lab);

table(1:24, 1) = reshape(1:24, [1 24]);
table(1:24, 2:4) = munki_Lab';
table(1:24, 5:7) = cam_Lab';
table(1:24, 8) = dEab';

% Calulate mean min/max

% Make nice table
fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n', table');
