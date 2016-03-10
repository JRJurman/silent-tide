cie = loadCIEdata;

CC_spectra = importdata('ColorChecker_380_780_5nm.txt');
CC_XYZs = ref2XYZ(CC_spectra(:,2:25), cie.cmf2deg, cie.illD65); 

CC_xyYs = XYZ2xyY(CC_XYZs);
CC_xyYs