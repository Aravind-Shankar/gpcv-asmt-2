function [ vpt ] = van_pt( pts )
%VAN_PT Summary of this function goes here
%   Detailed explanation goes here
l1 = cross(pts(1,:),pts(2,:));
l2 = cross(pts(3,:),pts(4,:));
vpt = normr(cross(l1,l2));

end

