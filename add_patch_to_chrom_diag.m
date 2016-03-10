% load patch data into workspace
load_patch_CIE_ill_data

% plot chomiticity chart and add our points
plot_chrom_diag_skel;
hold on;

plot(st_real_xyY(1), st_real_xyY(2), 'rs');
plot(st_imaged_xyY(1), st_imaged_xyY(2), 'rd');
plot(st_matching_xyY(1), st_matching_xyY(2), 'r+');

plot(tm_real_xyY(1), tm_real_xyY(2), 'bs');
plot(tm_imaged_xyY(1), tm_imaged_xyY(2), 'bd');
plot(tm_matching_xyY(1), tm_matching_xyY(2), 'b+');