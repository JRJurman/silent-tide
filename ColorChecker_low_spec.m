cie = loadCIEdata;

% compute the XYZ values of D65 for XYZn in XYZ2Lab
XYZn_D65 = ref2XYZ(cie.illE,cie.cmf2deg,cie.illD65);

% low spectral energy for XYZs and Labs
CC_spectra = importdata('ColorChecker_380_780_5nm.txt');
LCC_spectra = CC_spectra .* 0.02;

% compute the XYZs
LCC_XYZs = ref2XYZ(LCC_spectra(:,2:25), cie.cmf2deg, cie.illD65);

% compute the Labs
LCC_Labs = XYZ2Lab(LCC_XYZs, XYZn_D65);

% read in the names of the ColorChecker patches
names = textread('ColorChecker_names.txt','%s','delimiter','|');

title = 'ColorChecker (Dark) XYZ and Lab values (D65 illuminant and 2 deg. observer)';

printXYZLabTable(title, LCC_XYZs, LCC_Labs, names);