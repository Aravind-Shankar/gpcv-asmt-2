ip = input_script();
[~,~,pts1] = read_points(ip.img1, '8 pts for 1 pair of normal van pts.');
[~,~,pts2] = read_points(ip.img2, '8 pts for 1 pair of normal van pts.');
[~,~,pts3] = read_points(ip.img3, '8 pts for 1 pair of normal van pts.');
[~,~,pts4] = read_points(ip.img4, '8 pts for 1 pair of normal van pts.');
[~,~,pts5] = read_points(ip.img5, '8 pts for 1 pair of normal van pts.');

[pts_n,T] = pointnorm([pts1;pts2;pts3;pts4;pts5]);
vpts = all_van_pts(pts_n);
eqs = zeros(5, 6);
for i=1:5
    i2 = 2*i;
    eqs(i,:) = constr_single( vpts((i2-1),:) , vpts((i2),:) , 0 );
end

omega = T' * solve_omega(eqs, 0) * T;
[omega_n, K] = output_script(omega);