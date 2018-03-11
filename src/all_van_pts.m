function [ vpts ] = all_van_pts( pts )
%ALL_VAN_PTS Summary of this function goes here
%   Detailed explanation goes here
num = numel(pts) / 4;
vpts = zeros(num, 3);
for i=1:num
    i4 = 4*i;
    vpts(i,:) = van_pt( pts((i4-3):i4,:) );

end

