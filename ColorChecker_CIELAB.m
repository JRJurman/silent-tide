cie = loadCIEdata;

% compute the XYZ values of D65 for XYZn in XYZ2Lab
XYZn_D65 = ref2XYZ(cie.illE,cie.cmf2deg,cie.illD65);

% read in the names of the ColorChecker patches
names = textread('ColorChecker_names.txt','%s','delimiter','|');