function [  ] = output_script( omega )
%OUTPUT_SCRIPT Summary of this function goes here
%   Detailed explanation goes here
disp(omega);
K = mod_chol(inv(omega));
disp(K);
end

