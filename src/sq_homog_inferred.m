function [ H ] = sq_homog_inferred( im_sq_pts, s )
%SQ_HOMOG_INFERRED Summary of this function goes here
%   Detailed explanation goes here
H = sq_homog(im_sq_pts, tr_square_coords(im_sq_pts, s));

end

