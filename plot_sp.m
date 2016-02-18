% script for plotting sp
figure;

% rows from 380 to 730
spectrums = 380:10:730;
hold on;

% read in data as these variables
% real_data
% imaged_data
% matched_data
% patch_name

plot(spectrums, real_data, 'b-');
plot(spectrums, imaged_data, 'r-');
plot(spectrums, matched_data, 'p-');

title(patch_name);

xlabel('wavelength')
ylabel('relative energy')

legend('real','imaged','matched','Location','NorthEast');