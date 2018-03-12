function [  ] = output_script( omega )
%OUTPUT_SCRIPT Summary of this function goes here
%   Detailed explanation goes here
omega = norm_3x3(omega);
disp(omega);
K = norm_3x3(mod_chol(inv(omega)));
disp(K);
end

