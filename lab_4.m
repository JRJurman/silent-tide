%% Lab 4
% Created by Jesse Jurman (jrj2703) and Michael Timbrook (mpt2360)

%% Step 2, load in CIE data as a structure
cie = loadCIEdata;
cie

%% Step 3, testing our CIE data with blackbody plotting
BlackbodyAndStandardIlluminantSpectra
dbtype('BlackbodyAndStandardIlluminantSpectra')

%% Step 3, testing out CIE data with CMF plotting
CIEStandardObserverCMF
dbtype('CIEStandardObserverCMF')

%% Step 4, building ref2XYZ
dbtype('ref2XYZ')

%% Step 5, testing the ref2XYZ with the ColorChecker chart
dbtype('ColorChecker_380_780_5nm_XYZ');

%% Step 6, building the XYZ2xyY
dbtype('XYZ2xyY');

%% Step 7, testing the XYZ2xyY with the ColorChecker chart
dbtype('ColorChecker_380_780_5nm_xyY');

%% Step 8, loading the CIE and illuminant data for our color patches
dbtype('load_patch_CIE_ill_data');
