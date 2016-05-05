% evaluate the color error of an uncalibrated color imaging workflow

% Load the CM-measured XYZ/Lab data for the CC chart
munki_CC_XYZLab = importdata('munki_CC_XYZs_Labs.txt');

% Extract the XYZ and Lab values of the CC patches
munki_CC_XYZ = munki_CC_XYZLab(:,2:4);
munki_CC_Lab = munki_CC_XYZLab(:,5:7);
