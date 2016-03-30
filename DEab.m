function [ dE ] = DEab( lab1, lab2 )
% DeltaEab

dE = (sum((lab2 - lab1).^2)).^(1/2);

end

