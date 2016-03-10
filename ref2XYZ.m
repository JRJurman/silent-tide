function [ ret ] = ref2XYZ( refs, cmfs, illum )
n_illum = illum / 100;

d = 5;

cied = loadCIEdata;

k = 100 / sum(cmfs(:,2) .* n_illum * d);

X = k * ((cmfs(:,1) .* n_illum)' * refs * d);
Y = k * ((cmfs(:,2) .* n_illum)' * refs * d);
Z = k * ((cmfs(:,3) .* n_illum)' * refs * d);

ret = [X; Y; Z];
end

