ip = input_script();
[~,~,pts_H1] = read_points(ip.img1, '4 pts for one square - TL->BL->BR->TR.');
% s1 = read_number('H1 transformed square', 'Square side in pixels: ');
[~,~,pts_H2] = read_points(ip.img2, '4 pts for one square - TL->BL->BR->TR.');
% s2 = read_number('H2 transformed square', 'Square side in pixels: ');

[pts_H1n,T1] = pointnorm(pts_H1);
[pts_H2n,T2] = pointnorm(pts_H2);

% H1 = sq_homog_inferred(pts_H1, s1);
% H2 = sq_homog_inferred(pts_H2, s2);
H1 = norm_3x3(T1 \ sq_homog_inferred(pts_H1n, 0));
H2 = norm_3x3(T2 \ sq_homog_inferred(pts_H2n, 0));

eqs = zeros(3,4);
eqs(1,:) = constr_single(H1(:,1), H1(:,2), 1);
eqs(2,:) = constr_multiple(H1(:,1), H1(:,2), 1);
eqs(3,:) = constr_single(H2(:,1), H2(:,2), 1);

omega = solve_omega(eqs, 1);
output_script(omega);