% generate graphs for the interpolated data
load_patch_CIE_ill_data

figure;
hold on;

plot(ref_lambda, st_real, 'bo');
plot(ref_lambda, st_imaged, 'ro');
plot(ref_lambda, st_matching, 'go');

plot(cie.lambda, interp1(ref_lambda, st_real, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);
plot(cie.lambda, interp1(ref_lambda, st_imaged, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);
plot(cie.lambda, interp1(ref_lambda, st_matching, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);

axis([350,800,0.0,1.0]);
