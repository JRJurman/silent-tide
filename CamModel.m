munki_data = importdata('munki_CC_XYZs_Labs.txt');
munki_XYZs = munki_data(:,2:4)';
cam_matrix = munki_XYZs * pinv(cam_rgbs_lin);

cam_matrix

% estimate the CC XYZs from the linearized camera rgbs using
% the camera model matrix
cam_XYZs = cam_matrix * cam_rgbs_lin;

cam_XYZs
