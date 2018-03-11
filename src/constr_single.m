function [ constr ] = constr_single( vec1, vec2, rest )
%CONSTR_SINGLE Summary of this function goes here
%   Detailed explanation goes here
if (rest == 1)
    constr = [(vec1(1)*vec2(1)+vec1(2)*vec2(2)) (vec1(3)*vec2(1)+vec1(1)*vec2(3)) (vec1(3)*vec2(2)+vec1(2)*vec2(3)) vec1(3)*vec2(3)];
else
    constr = [vec1(1)*vec2(1) (vec1(1)*vec2(2)+vec1(2)*vec2(1)) (vec1(1)*vec2(3)+vec1(3)*vec2(1)) vec1(2)*vec2(2) (vec1(3)*vec2(2)+vec1(2)*vec2(3)) vec1(3)*vec2(3)];
end

end

