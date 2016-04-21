%% Lab 6
% Created by Michael Timbrook (mpt2360) and Jesse Jurman (jrj2703) 

%% Step 1, 2, and 3
% Download the project resources provided in myCourses to your working directory
% Reading were taken off of Michael's Macbook Pro.

%% Step 4
% Use the provided scripts to load the XYZ data for the ramps patch set
load_ramps_data_1516;

%% Step 5
% Build the forward display model
% <include>forwardMatrix.m</include>
% <include>buildForwardMatrix.m</include>

%% Step 6, 7, 8
% Build the forward lookup tables
% <include>rampToLUT.m</include>
% <include>buildFowardLUT.m</include>
% Display the forward matrix and lookup table
buildForwardMatrix;
M_fwd
% <include>plotLUT_fwd.m</include>
plotLUT_fwd;

%% Step 9
% Test script to evaluate quality of forward model
test_forward_model_1516

%% Step 10 & 11
% Building the reverse display model
% <include>buildingDisplayModel.m</include>
% <include>plotLUT_rev.m</include>
buildingDisplayModel