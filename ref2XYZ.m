function [ X, Y, Z ] = ref2XYZ( refs, cmfs, illum )
%REF2XYZ Summary of this function goes here
%   Detailed explanation goes here

n_illum = illum / 100;

d = 10;

cied = loadCIEData;
ref_lambda = 380:d:730;

matches = ismember(cied.lambda, ref_lambda);

k = 100 / sum(cmfs(matches,2) .* n_illum(matches) * d);

figure;
hold on;
plot(ref_lambda, cmfs(matches,1))
plot(ref_lambda, cmfs(matches,2))
plot(ref_lambda, cmfs(matches,3))
plot(ref_lambda, n_illum(matches))
hold off;

X = k * sum(cmfs(matches,1) .* n_illum(matches) .* refs * d);
Y = k * sum(cmfs(matches,2) .* n_illum(matches) .* refs * d);
Z = k * sum(cmfs(matches,3) .* n_illum(matches) .* refs * d);

end

