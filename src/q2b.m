ip = input_script();
[x,y] = read_points(ip.img, '4 pts for one square - TL->BL->BR->TR.');
pts_H1 = [x y 1];
s1 = read_number('H1 transformed square', 'Square side in pixels: ');
[x,y] = read_points(ip.img, '4 pts for one square - TL->BL->BR->TR.');
pts_H2 = [x y 1];
s2 = read_number('H2 transformed square', 'Square side in pixels: ');

H1 = sq_homog_inferred(pts_H1, s1);
H2 = sq_homog_inferred(pts_H2, s2);

eqs = zeros(3,4);
eqs(1,:) = constr_single(H1(:,1), H1(:,2), 1);
eqs(2,:) = constr_multiple(H1(:,1), H1(:,2), 1);
eqs(3,:) = constr_single(H2(:,1), H2(:,2), 1);

omega = solve_omega(eqs, 1);
output_script(omega);