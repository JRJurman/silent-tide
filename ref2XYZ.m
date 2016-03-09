function [ X, Y, Z ] = ref2XYZ( refs, cmfs, illum )
%REF2XYZ Summary of this function goes here
%   Detailed explanation goes here

cied = loadCIEData;
ref_lambda = 380:5:780;

matches = ismember(cied.lambda, cied.lambda);

k = 100 / sum(cmfs(:,2) .* illum(matches)) * 5;
k

d = 5;
X = k * sum(cmfs(matches,1) .* illum(matches) .* refs) * d
Y = k * sum(cmfs(matches,2) .* illum(matches) .* refs) * d
Z = k * sum(cmfs(matches,3) .* illum(matches) .* refs) * d

end

