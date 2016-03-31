%% Lab 4
% Created by Jesse Jurman (jrj2703) and Michael Timbrook (mpt2360)

%% Step 2, update ref2XYZ to handle more complex input
dbtype('ref2XYZ')

%% Step 3, test of the new ref2XYZ with ColorChecker Chart
% note, this is the same as our test in Step 5 in the previous lab
ColorChecker_380_780_5nm_XYZ
dbtype('ColorChecker_380_780_5nm_XYZ');

%% Step 4, create the XYZ2Lab function
dbtype('XYZ2Lab');

%% Step 5, test XYZ2Lab using the ColorChecker Chart
ColorChecker_CIELAB
dbtype('ColorChecker_CIELAB');

%% Step 6, test simulated low energy specta
ColorChecker_low_spec
dbtype('ColorChecker_low_spec');

%% Step 7, create the DEab function
dbtype('DEab');

%% Step 8, test the DEab function using the ColorChecker and MetaChecker spectra
DEab_ColorChecker_MetaChecker
dbtype('DEab_ColorChecker_MetaChecker');

%% Step 9, use the XYZ2Lab to calculate CIELAB values for the Project 3 patches
dbtype('patch_CIELAB');

%% Step 10, Calculating deltaE for color patches
patch_deltaEab
dbtype('patch_deltaEab');

%% Step 11, create figure of XYZ, Lab and dE for patches

