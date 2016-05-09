function [ LUT_fwd ] = rampToLUT( rampXYZs, kXYZ, wXYZ, forwardMatrix, channelRow )
%rampToLUT function to build a lookup table for a given channel
%   ramp_XYZs are the XYZ values read in by the colormunki
%   kXYZ and wXYZ are the black and white XYZ values
%   forwardMatrix is the forward matrix built from fowardMatrix.m
%   channelRow is the channel to read from (red: 1, green: 2, blue: 3)

    % normalize the values with display black and display white
    normalizedXYZs = bsxfun(@minus, rampXYZs, kXYZ);
    normalizedXYZs = normalizedXYZs./(wXYZ(2));
    
    % clip the values to be within 0 and 1
    normalizedXYZs(normalizedXYZs<0.0) = 0;
    normalizedXYZs(normalizedXYZs>1.0) = 1;
    
    % the inverse of the primary 3x3 forward matrix
    fwdMat = inv(forwardMatrix(:,1:3));
    
    % get radiomatric scalars
    ramp_RS = fwdMat*normalizedXYZs';
    
    % define the 0-255 display values (digital counts) that correspond to 
    % the ramp values
    ramp_DCs = round(linspace(0,255,11));
    
    % interpolate the radiometric scalars across the full digital count 
    % range to form the forward LUTs
    LUT_fwd = interp1(ramp_DCs,ramp_RS(channelRow,:),0:1:255,'spline');
    
end

