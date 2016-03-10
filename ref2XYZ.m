function [ ret ] = ref2XYZ( refs, cmfs, illum )
n_illum = illum / 100;

d = 5;

cied = loadCIEdata;
ref_lambda = 380:d:780;

matches = ismember(cied.lambda, ref_lambda);

k = 100 / sum(cmfs(matches,2) .* n_illum(matches) * d);

X = k * ((cmfs(matches,1) .* n_illum(matches))' * refs * d);
Y = k * ((cmfs(matches,2) .* n_illum(matches))' * refs * d);
Z = k * ((cmfs(matches,3) .* n_illum(matches))' * refs * d);

ret = [X; Y; Z];
end

