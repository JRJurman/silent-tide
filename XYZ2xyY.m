function [ xyY ] = XYZ2xyY( XYZ )

x = XYZ(1,:) ./ sum(XYZ);
y = XYZ(2,:) ./ sum(XYZ);
Y = XYZ(2,:);

xyY = [x; y; Y];

end

