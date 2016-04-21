% derive the forward lookup tables

% pull the forward matrix
buildForwardMatrix;

% get the red, green, and blue lookup tables
RLUT_fwd = rampToLUT( ramp_R_XYZs, black_XYZ, white_XYZ, M_fwd, 1 );
GLUT_fwd = rampToLUT( ramp_G_XYZs, black_XYZ, white_XYZ, M_fwd, 2 );
BLUT_fwd = rampToLUT( ramp_B_XYZs, black_XYZ, white_XYZ, M_fwd, 3 );