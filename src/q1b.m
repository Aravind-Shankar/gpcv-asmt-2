ip = input_script();
[~,~,pts_H1] = read_points(ip.img1, '4 pts for one square - TL->BL->BR->TR.');
s1 = read_number('H1 transformed square', 'Square side in pixels: ');
[~,~,pts_H2] = read_points(ip.img2, '4 pts for one square - TL->BL->BR->TR.');
s2 = read_number('H2 transformed square', 'Square side in pixels: ');
[~,~,pts_H3] = read_points(ip.img3, '4 pts for one square - TL->BL->BR->TR.');
s3 = read_number('H3 transformed square', 'Square side in pixels: ');

H1 = sq_homog_inferred(pts_H1, s1);
H2 = sq_homog_inferred(pts_H2, s2);
H3 = sq_homog_inferred(pts_H3, s3);

eqs = zeros(5,6);
eqs(1,:) = constr_single(H1(:,1), H1(:,2), 0);
eqs(2,:) = constr_multiple(H1(:,1), H1(:,2), 0);
eqs(3,:) = constr_single(H2(:,1), H2(:,2), 0);
eqs(4,:) = constr_multiple(H2(:,1), H2(:,2), 0);
eqs(5,:) = constr_single(H3(:,1), H3(:,2), 0);

omega = solve_omega(eqs, 0);
output_script(omega);