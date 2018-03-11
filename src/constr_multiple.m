function [ constr ] = constr_multiple( vec1, vec2, rest )
%CONSTR_MULTIPLE Summary of this function goes here
%   Detailed explanation goes here
constr = constr_single(vec1, vec1, rest) - constr_single(vec2, vec2, rest);

end

