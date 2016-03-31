%% Lab 4
% Created by Jesse Jurman (jrj2703) and Michael Timbrook (mpt2360)

%% Step 2, update ref2XYZ to handle more complex input
% <include>ref2XY.m</include>

%% Step 3, test of the new ref2XYZ with ColorChecker Chart
% note, this is the same as our test in Step 5 in the previous lab
ColorChecker_380_780_5nm_XYZ
% <include>ColorChecker_380_780_5nm_XYZ.m</include>

%% Step 4, create the XYZ2Lab function
% <include>XYZ2Lab.m</include>

%% Step 5, test XYZ2Lab using the ColorChecker Chart
ColorChecker_CIELAB
% <include>ColorChecker_CIELAB.m</include>

%% Step 6, test simulated low energy specta
ColorChecker_low_spec
% <include>ColorChecker_low_spec.m</include>

%% Step 7, create the DEab function
% <include>DEab.m</include>

%% Step 8, test the DEab function using the ColorChecker and MetaChecker spectra
DEab_ColorChecker_MetaChecker
% <include>DEab_ColorChecker_MetaChecker.m</include>

%% Step 9, use the XYZ2Lab to calculate CIELAB values for the Project 3 patches
% <include>patch_CIELAB.m</include>

%% Step 10, Calculating deltaE for color patches
% <include>patch_deltaEab.m</include>

%% Step 11, create figure of XYZ, Lab and dE for patches
%%
%
% <<../table_lab_4.png>>
%


%% Step 12, plot the patch real, imaged, and matched data
graph_patch_a_b
% <include>patch_deltaEab.m</include>

%% Step 13, feedback
% Overall our comfort level with matlab has gotten much better, and we found this lab quite trivial except for fprintf. We had a lot of difficulty getting tabbing to work consistently across platforms and in publish the tabbing didn't even work.
%%
%
% <<../tabbing.png>>
%
