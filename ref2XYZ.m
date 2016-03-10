function [ XYZ ] = ref2XYZ( refs, cmfs, illum )

% constant for normalization
k = 100 ./ (cmfs(:,2)'*illum);

% compute XYZ
% diag generates a diagonal matrix of the illuminant data
XYZ = k.*cmfs'*diag(illum)*refs;

end

