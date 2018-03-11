function [ x,y ] = read_points( img, title )
%READ_POINTS Summary of this function goes here
%   Detailed explanation goes here
figure('Name',strcat(title, ' Then ENTER.'),'NumberTitle','off');
imshow(img);
[x, y] = getpts;        % chose 2rd full square tile in 3rd column
close;

end

