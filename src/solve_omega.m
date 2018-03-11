function [ omega ] = solve_omega( eqs, rest )
%SOLVE_GEN_OMEGA Summary of this function goes here
%   Detailed explanation goes here
sol = null(eqs);

if (rest == 1)
    omega = [sol(1) 0 sol(2); 0 sol(1) sol(3); sol(2) sol(3) sol(4)];
else
    omega = [sol(1) sol(2) sol(3); sol(2) sol(4) sol(5); sol(3) sol(5) sol(6)];
end

end

