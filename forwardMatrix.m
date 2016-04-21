function [ M_fwd ] = forwardMatrix( rXYZ, gXYZ, bXYZ, kXYZ, wXYZ )
%forwardMatrix function to build forward matrix for display
%characterization
%   Takes in the max XYZ values for red, green, and blue, black and white

    % get black XYZ values
    Xk = kXYZ(1);
    Yk = kXYZ(2);
    Zk = kXYZ(3);
    
    % get white XYZ values
    Xw = wXYZ(1);
    Yw = wXYZ(2);
    Zw = wXYZ(3);
    
    % get red values
    Xr = rXYZ(1);
    Yr = rXYZ(2);
    Zr = rXYZ(3);
    
    % get green values
    Xg = gXYZ(1);
    Yg = gXYZ(2);
    Zg = gXYZ(3);
    
    % get blue values
    Xb = bXYZ(1);
    Yb = bXYZ(2);
    Zb = bXYZ(3);
    
    M_fwd = [ Xr - Xk, Xg - Xk, Xb - Xk, Xk;
              Yr - Yk, Yg - Yk, Yb - Yk, Yk;
              Zr - Zk, Zg - Zk, Zb - Zk, Zk;
            ] ./ Yw;
end

