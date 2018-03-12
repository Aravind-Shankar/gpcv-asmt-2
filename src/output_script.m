function [ omega_n, K ] = output_script( omega )
%OUTPUT_SCRIPT Summary of this function goes here
%   Detailed explanation goes here
omega_n = norm_3x3(omega);
disp(omega_n);
K = norm_3x3(mod_chol(inv(omega)));
disp(K);
end

