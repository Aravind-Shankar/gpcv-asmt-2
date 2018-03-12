function [ outmat ] = norm_3x3( inmat )
%NORM_3X3 Summary of this function goes here
%   Detailed explanation goes here
elts = normr(reshape(inmat, [1 9]));
outmat = reshape(elts, [3 3]);

end

