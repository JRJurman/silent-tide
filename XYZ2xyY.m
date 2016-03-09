function [ xyY ] = XYZ2xyY( XYZ )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

x = XYZ(1,:) ./ sum(XYZ);
y = XYZ(2,:) ./ sum(XYZ);
Y = XYZ(2,:);

xyY = [x; y; Y];
end

