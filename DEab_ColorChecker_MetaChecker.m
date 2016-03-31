% compare the DEab of the ColorChecker spectra and the MetaChecker spectra
% under different sources
cie = loadCIEdata;

%% color checker and meta checker under D65
% compute the XYZ values of D65 for XYZn in XYZ2Lab
XYZn_D65 = ref2XYZ(cie.illE,cie.cmf2deg,cie.illD65);

% compute the CC XYZs
CC_spectra = importdata('ColorChecker_380_780_5nm.txt');
CC_XYZs = ref2XYZ(CC_spectra(:,2:25), cie.cmf2deg, cie.illD65);

% compute the CC Labs
CC_Labs_D65 = XYZ2Lab(CC_XYZs, XYZn_D65);

% compute the MC XYZs
MC_spectra = importdata('MetaChecker_380_780_5nm.txt');
MC_XYZs = ref2XYZ(MC_spectra(:,2:25), cie.cmf2deg, cie.illD65);

% compute the MC Labs
MC_Labs_D65 = XYZ2Lab(MC_XYZs, XYZn_D65);

%% color checker and meta checker under illA
% compute the XYZ values of illA for XYZn in XYZ2Lab
XYZn_illA = ref2XYZ(cie.illE,cie.cmf2deg,cie.illA);

% compute the CC XYZs
CC_spectra = importdata('ColorChecker_380_780_5nm.txt');
CC_XYZs = ref2XYZ(CC_spectra(:,2:25), cie.cmf2deg, cie.illA);

% compute the CC Labs
CC_Labs_illA = XYZ2Lab(CC_XYZs, XYZn_illA);

% compute the MC XYZs
MC_spectra = importdata('MetaChecker_380_780_5nm.txt');
MC_XYZs = ref2XYZ(MC_spectra(:,2:25), cie.cmf2deg, cie.illA);

% compute the MC Labs
MC_Labs_illA = XYZ2Lab(MC_XYZs, XYZn_illA);

%% compute and print the results

% get the DEab values
DE_D65 = DEab(CC_Labs_D65, MC_Labs_D65);
DE_illA = DEab(CC_Labs_illA, MC_Labs_illA);

fprintf('ColorChecker and MetaChecker differences\n\n');
fprintf('patch #\tDEab D65\tDEab illA\n');

patch_size = size(DE_D65);
numberOfPatches = patch_size(2);

for i = 1:numberOfPatches
    fprintf('%2.0f\t%d\t%2.3f\n', i, DE_D65(i), DE_illA(i));
end