cie = loadCIEdata;

st_real = import_sp('colormonki/silent_tide_real.sp') / 100;
st_imaged = import_sp('colormonki/mac/mac_silent_tide_screen.sp') / 100;
st_matching = import_sp('colormonki/mac/mac_silent_tide_matching.sp') / 100;

tm_real = import_sp('colormonki/teal_mosaic_real.sp') / 100;
tm_matching = import_sp('colormonki/mac/mac_teal_mosaic_matching.sp') / 100;
tm_imaged = import_sp('colormonki/mac/mac_teal_mosaic_screen.sp') / 100;

ref_lambda = 380:10:730;
matching = ismember(cie.lambda, ref_lambda);

ref2XYZ(st_real', cie.cmf2deg(matching), cie.illD65(matching))