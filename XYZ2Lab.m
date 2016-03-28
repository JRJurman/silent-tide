function [Lab] = XYZ2Lab(XYZ, XYZn)
% Takes a 3xn tristimulus value XYZ, and
% a 3x1 reference illuminant
X = XYZ(1,:);   Xn = XYZn(1);
Y = XYZ(2,:);   Yn = XYZn(2);
Z = XYZ(3,:);   Zn = XYZn(3);

L = 116*f(Y/Yn)-16;
a = 500*(f(X/Xn)-f(Y/Yn));
b = 200*(f(Y/Yn)-f(Z/Zn));

end

function [x] = f(x)
    x(x > 0.008856) = x(x > 0.008856).^(1/3);
    x(x <= 0.008856) = x(x <= 0.008856).*7.787 + (16/116);
end