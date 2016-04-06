%% Lab 5
% Created by Jesse Jurman (jrj2703) and Michael Timbrook (mpt2360)

%% Step 1 -> 3, getting color value averges from color checker chart
% We decided to code out solution to pulling each patch out and getting the
% average. It can be adjusted by changeding the tl and br corners and with
% of the crop square.
%%
% <include>ColorChecker_imaged_values.m</include>
ColorChecker_imaged_values

%% Step 4, getting the grey scale values.
% <include>ColorPickerGreyScale.m</include>
ColorPickerGreyScale

%% Step 5, plotting the response curves
% <include>CameraResponseCurve.m</include>
CameraResponseCurve

%% Step 6 -> 7, Linearize the camera RGB output
% <include>LinearizeCamera.m</include>
LinearizeCamera

%% Step 8, Linearize ColorChecker Chart
% <include>LinearizeColorCheckerChart.m</include>
LinearizeColorCheckerChart

%% Step 9 -> 10, Create camera model
% <include>CamModel.m</include>
CamModel

%% Step 11, Comparing cam XYZs to monki XYZs
% <include>CamModelEvaluate.m</include>
%
% <<../camDE.png>>
CamModelEvaluate

%% Step 12, Creating a chart based off of XYZ
% <include>ColorCheckerFromXYZ.m</include>
ColorCheckerFromXYZ

%% Step 13, save camera model
% |save('camera_model.mat', 'cam_polys', 'cam_matrix');|
save('camera_model.mat', 'cam_polys', 'cam_matrix');

%% Step 14, Back to the patches
% <include>PatchesFromCam.m</include>
% <<../patchedeab.png>>
PatchesFromCam
