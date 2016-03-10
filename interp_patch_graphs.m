%% Silent Tide Graph

load_patch_CIE_ill_data
figure;
hold on;

title('patch 27.1 measured and interpolated specta');
xlabel('wavelength (nm)');
ylabel('relectance factor');

plot(ref_lambda, st_real, 'bo');
plot(ref_lambda, st_imaged, 'ro');
plot(ref_lambda, st_matching, 'go');

plot(cie.lambda, interp1(ref_lambda, st_real, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);
plot(cie.lambda, interp1(ref_lambda, st_imaged, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);
plot(cie.lambda, interp1(ref_lambda, st_matching, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);

axis([350,800,0.0,1.0]);
legend('real measured','imaged measured','matched measured','real interpolated','imaged interpolated','matched interpolated','Location','NorthEast');

%% Teal Mosaic Graph
load_patch_CIE_ill_data
figure;
hold on;

title('patch 27.2 measured and interpolated specta');
xlabel('wavelength (nm)');
ylabel('relectance factor');

plot(ref_lambda, tm_real, 'bo');
plot(ref_lambda, tm_imaged, 'ro');
plot(ref_lambda, tm_matching, 'go');

plot(cie.lambda, interp1(ref_lambda, tm_real, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);
plot(cie.lambda, interp1(ref_lambda, tm_imaged, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);
plot(cie.lambda, interp1(ref_lambda, tm_matching, cie.lambda, 'linear','extrap'), 'k.', 'MarkerSize', 15);

axis([350,800,0.0,1.0]);
legend('real measured','imaged measured','matched measured','real interpolated','imaged interpolated','matched interpolated','Location','NorthEast');
