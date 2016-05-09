buildForwardMatrix
buildForwardLUT

M_rev = M_fwd(1:3, 1:3)^(1);

% build the reverse LUT for the red channel
% repeat for green and blue
RLUT_rev = round(interp1(RLUT_fwd, 0:255, linspace(0,max(RLUT_fwd),1024), 'spline', 0));
GLUT_rev = round(interp1(GLUT_fwd, 0:255, linspace(0,max(GLUT_fwd),1024), 'spline', 0));
BLUT_rev = round(interp1(BLUT_fwd, 0:255, linspace(0,max(BLUT_fwd),1024), 'spline', 0));

% save the reverse model matrix, reverse LUTs as and black level as 'display_model.mat'
RLUT_disp = RLUT_rev;
GLUT_disp = GLUT_rev;
BLUT_disp = BLUT_rev;
M_disp = M_rev;
XYZk_disp = black_XYZ;

save('display_model.mat','M_disp','RLUT_disp','GLUT_disp','BLUT_disp','XYZk_disp');



