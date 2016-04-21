% build forward matrix using the ramp data read by the display

run('.\colormonki\ramps\load_ramps_data_1516.m');

M_fwd = forwardMatrix(ramp_R_XYZs(end, :), ramp_B_XYZs(end, :), ramp_G_XYZs(end, :), black_XYZ, white_XYZ);
