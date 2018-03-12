function [ H ] = sq_homog( im_sq_pts, tr_sq_pts )
%SQ_HOMOG Summary of this function goes here
%   Detailed explanation goes here
A = zeros(8, 9);
for i=1:4
    ia = 2*i;
    
    x_or = im_sq_pts(i,1);
    y_or = im_sq_pts(i,2);
    x_tr = tr_sq_pts(i,1);
    y_tr = tr_sq_pts(i,2);
    
    A(ia-1, :) = [-x_or -y_or -1 0 0 0 x_tr*x_or x_tr*y_or x_tr];
    A(ia, :) = [0 0 0 -x_or -y_or -1 y_tr*x_or y_tr*y_or y_tr];
end

h = null(A);
H = inv(reshape(h, [3,3])'); % reshape() does col-major, inv to get H(1 +-i 0) form

end

