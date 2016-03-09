function [ value ] = getValueAtLambda( lambdas, values, lambda )
%getValueAtLambda Summary of this function goes here
%   Detailed explanation goes here
    indexVector = lambdas==lambda;
    valueVector = indexVector*values;
    value = sum(valueVector);
end

