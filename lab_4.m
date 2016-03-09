%%  THIS IS STEP 5
cie = loadCIEData;

CC_spectra = importdata('ColorChecker_380_780_5nm.txt');
CC_XYZs = ref2XYZ(CC_spectra(:,2:25), cie.cmf2deg, cie.illD65); 

%%  THIS IS STEP 8

st_real = import_sp('colormonki/silent_tide_real.sp') / 100;
st_imaged = import_sp('colormonki/mac/mac_silent_tide_screen.sp') / 100;
st_matching = import_sp('colormonki/mac/mac_silent_tide_matching.sp') / 100;

tm_real = import_sp('colormonki/teal_mosaic_real.sp') / 100;
tm_matching = import_sp('colormonki/mac/mac_teal_mosaic_matching.sp') / 100;
tm_imaged = import_sp('colormonki/mac/mac_teal_mosaic_screen.sp') / 100;

cie = loadCIEData;

ref_lambda = 380:10:730;
matching = ismember(cie.lambda, ref_lambda);

ref2XYZ(st_real', cie.cmf2deg(matching), cie.illD65(matching))
