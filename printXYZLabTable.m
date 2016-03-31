function [ ] = printXYZLabTable( title, XYZs, Labs, patchNames )
%printXYZLabTable Function to print a table of values for XYZs and Labs
%   title - title to put above content
%   XYZs - XYZ matrix (should be 3xn)
%   Labs - Lab matrix (should be 3xn)
%   patchNames - patch names to detail the data (should be cell of nx1)

    fprintf(strcat(title, '\n\n'));
    fprintf('Patch #\tX\tY\tZ\tL*\ta*\tb*\tPatchName\n');

    patch_size = size(patchNames);
    numberOfPatches = patch_size(1);
    
    for i = 1:numberOfPatches
        fprintf('%2.0f\t%2.3f\t%2.3f\t%2.3f\t%2.3f\t%2.3f\t%2.3f\t%s\n', i, XYZs(1,i), XYZs(2,i), XYZs(3,i), Labs(1,i), Labs(2,i), Labs(3,i), patchNames{i});
    end

end

