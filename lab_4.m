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

%% Step 4, building _ref2XYZ_
dbtype('ref2XYZ')

%% Step 5, testing the _ref2XYZ_ with the ColorChecker chart
ColorChecker_380_780_5nm_XYZ
dbtype('ColorChecker_380_780_5nm_XYZ');

%% Step 6, building the _XYZ2xyY_
dbtype('XYZ2xyY');

%% Step 7, testing the _XYZ2xyY_ with the ColorChecker chart
ColorChecker_380_780_5nm_xyY
dbtype('ColorChecker_380_780_5nm_xyY');

%% Step 8, loading the CIE and illuminant data for our color patches
% note, _import_sp_ is a matlab generated function to pull our data
load_patch_CIE_ill_data
dbtype('load_patch_CIE_ill_data');

%% Step 9, graph our interpolated data on graphs
interp_patch_graphs
dbtype('interp_patch_graphs');

%% Step 10, chart of tristimulus values
% note, these values seemed to be extremely off, and may result in further
% inconsistencies.
% 
% <<tristimulus_excel.png>>
% 


%% Step 11, chart of chromaticity values
% note, these values seemed to be extremely off, and similar to each other,
% which led us to believe our XYZ2xyY function is broken, and leads to the
% single point present in Step 12's chromaticity chart
% 
% <<chromaticity_excel.png>>
% 

%% Step 12, Visualize patch data on chromaticity chart
add_patch_to_chrom_diag
dbtype('add_patch_to_chrom_diag');
