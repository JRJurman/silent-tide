% load patch data into workspace
load_patch_CIE_ill_data

% plot chomiticity chart and add our points
plot_chrom_diag_skel;
hold on;

st1 = plot(st_real_xyY(1), st_real_xyY(2), 'rs', 'DisplayName', 'Patch 27.1 Real');
st2 = plot(st_imaged_xyY(1), st_imaged_xyY(2), 'rd', 'DisplayName', 'Patch 27.1 Imaged');
st3 = plot(st_matching_xyY(1), st_matching_xyY(2), 'r+', 'DisplayName', 'Patch 27.1 Matching');

tm1 = plot(tm_real_xyY(1), tm_real_xyY(2), 'bs', 'DisplayName', 'Patch 27.2 Real');
tm2 = plot(tm_imaged_xyY(1), tm_imaged_xyY(2), 'bd', 'DisplayName', 'Patch 27.2 Imaged');
tm3 = plot(tm_matching_xyY(1), tm_matching_xyY(2), 'b+', 'DisplayName', 'Patch 27.2 Matching');

title('Chromaticity coordinates of 27.1 and 27.2 patches');
legend([st1, st2, st3, tm1, tm2, tm3]);