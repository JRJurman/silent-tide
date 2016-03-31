cie = loadCIEdata;

% compute the XYZ values of D65 for XYZn in XYZ2Lab
XYZn_D50 = ref2XYZ(cie.illE,cie.cmf2deg,cie.illD50);

% generate the XYZs
% this script loads into the workspace:
%   st_real_XYZ, st_imaged_XYZ, st_matching_XYZ
%   tm_real_XYZ, tm_imaged_XYZ, tm_matching_XYZ
load_patch_CIE_ill_data

% compute the Labs
st_real_Labs = XYZ2Lab(st_real_XYZ, XYZn_D50);
st_imaged_Labs = XYZ2Lab(st_imaged_XYZ, XYZn_D50);
st_matching_Labs = XYZ2Lab(st_matching_XYZ, XYZn_D50);
tm_real_Labs = XYZ2Lab(tm_real_XYZ, XYZn_D50);
tm_imaged_Labs = XYZ2Lab(tm_imaged_XYZ, XYZn_D50);
tm_matching_Labs = XYZ2Lab(tm_matching_XYZ, XYZn_D50);
