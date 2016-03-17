% script for plotting blackbody curves
figure;
hold on;
width = 1.5;

cieData = loadCIEdata;

% plot black body curve
bb2856_data = blackbody([2856], cieData.lambda);
bb5003_data = blackbody([5003], cieData.lambda);
bb6504_data = blackbody([6504], cieData.lambda);

bb_plot = plot(cieData.lambda, bb2856_data, 'k-', 'lineWidth', width);
plot(cieData.lambda, bb5003_data, 'r-', 'lineWidth', width);
plot(cieData.lambda, bb6504_data, 'b-', 'lineWidth', width);

plot(cieData.lambda, cieData.illA/100, 'k--', 'lineWidth', width);
plot(cieData.lambda, cieData.illD50/100, 'r--', 'lineWidth', width);
plot(cieData.lambda, cieData.illD65/100, 'b--', 'lineWidth', width);

title('blackbody and standard illuminant spectra');

xlabel('wavelength(nm)');
ylabel('relative power');

% set the minX and maxX to 350 to 800
% set the minY and maxY to 0 to 2.5
axis([350 800 0 2.5]);

legend('blackbody (2856)', 'blackbody (5003)', 'blackbody (6504)', 'illuminant A', 'illuminant D50', 'illuminant D65', 'Location','NorthWest');
hold off;
