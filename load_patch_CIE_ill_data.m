%% silent tide processing

% wavelength data
cie = loadCIEdata;
ref_lambda = 380:10:730;
% grab only the lambdas that we are using
matching = ismember(cie.lambda, ref_lambda);

% import the data using matlab generated importdata function
st_real = import_sp('colormonki/silent_tide_real.sp') / 100;
st_imaged = import_sp('colormonki/mac/mac_silent_tide_screen.sp') / 100;
st_matching = import_sp('colormonki/mac/mac_silent_tide_matching.sp') / 100;

% convert from refs to XYZ to xyY
st_real_XYZ = ref2XYZ(st_real', cie.cmf2deg(matching), cie.illD65(matching));
st_real_xyY = XYZ2xyY(st_real_XYZ);

st_imaged_XYZ = ref2XYZ(st_imaged', cie.cmf2deg(matching), cie.illD65(matching));
st_imaged_xyY = XYZ2xyY(st_imaged_XYZ);

st_matching_XYZ = ref2XYZ(st_matching', cie.cmf2deg(matching), cie.illD65(matching));
st_matching_xyY = XYZ2xyY(st_matching_XYZ);

%% teal mosaic processing

% wavelength data
cie = loadCIEdata;
ref_lambda = 380:10:730;
% grab only the lambdas that we are using
matching = ismember(cie.lambda, ref_lambda);

% import the data using matlab generated importdata function
tm_real = import_sp('colormonki/teal_mosaic_real.sp') / 100;
tm_matching = import_sp('colormonki/mac/mac_teal_mosaic_matching.sp') / 100;
tm_imaged = import_sp('colormonki/mac/mac_teal_mosaic_screen.sp') / 100;

% convert from refs to XYZ to xyY
tm_real_XYZ = ref2XYZ(tm_real', cie.cmf2deg(matching), cie.illD65(matching));
tm_real_xyY = XYZ2xyY(tm_real_XYZ);

tm_imaged_XYZ = ref2XYZ(tm_imaged', cie.cmf2deg(matching), cie.illD65(matching));
tm_imaged_xyY = XYZ2xyY(tm_imaged_XYZ);

tm_matching_XYZ = ref2XYZ(tm_matching', cie.cmf2deg(matching), cie.illD65(matching));
tm_matching_xyY = XYZ2xyY(tm_matching_XYZ);