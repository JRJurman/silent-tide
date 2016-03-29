cie = loadCIEdata;

% compute the XYZ values of D65 for XYZn in XYZ2Lab
XYZn_D65 = ref2XYZ(cie.illE,cie.cmf2deg,cie.illD65);

% compute the XYZs
CC_spectra = importdata('ColorChecker_380_780_5nm.txt');
CC_XYZs = ref2XYZ(CC_spectra(:,2:25), cie.cmf2deg, cie.illD65);

% compute the Labs
CC_Labs = XYZ2Lab(CC_XYZs, XYZn_D65);

% read in the names of the ColorChecker patches
names = textread('ColorChecker_names.txt','%s','delimiter','|');

% print the patch data
fprintf('ColorChecker XYZ and Lab values (D65 illuminant and 2 deg. observer)\n\n');
fprintf('Patch #\tX\tY\tZ\tL*\ta*\tb*\tPatchName\n');
printData = {
    1:1:24; 
    CC_XYZs(1,:); 
    CC_XYZs(2,:); 
    CC_XYZs(3,:); 
    CC_Labs(1,:); 
    CC_Labs(2,:); 
    CC_Labs(3,:); 
    names'
};

fprintf(strcat('%2.0f\t%2.3f\t%2.3f\t%2.3f\t%2.3f\t%2.3f\t%2.3f\t%s'), printData{:});
