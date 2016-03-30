ColorChecker_CIELAB

LCC_spectra = CC_spectra .* 0.02;
LCC_XYZs = ref2XYZ(LCC_spectra(:,2:25), cie.cmf2deg, cie.illD65);
LCC_Labs = XYZ2Lab(LCC_XYZs, XYZn_D65);

fprintf('ColorChecker XYZ Low Spectra and Lab values (D65 illuminant and 2 deg. observer)\n\n');
fprintf('Patch #\tX\tY\tZ\tL*\ta*\tb*\tPatchName\n');
printData = {
    1:1:24; 
    LCC_XYZs(1,:); 
    LCC_XYZs(2,:); 
    LCC_XYZs(3,:); 
    LCC_Labs(1,:); 
    LCC_Labs(2,:); 
    LCC_Labs(3,:); 
    names'
}