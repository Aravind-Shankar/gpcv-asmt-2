ip = input_script();
[~,~,pts1] = read_points(ip.img1, '8 pts for 1 pair of normal van pts.');
[~,~,pts2] = read_points(ip.img2, '8 pts for 1 pair of normal van pts.');
[~,~,pts3] = read_points(ip.img3, '8 pts for 1 pair of normal van pts.');
[~,~,pts4] = read_points(ip.img4, '8 pts for 1 pair of normal van pts.');
[~,~,pts5] = read_points(ip.img5, '8 pts for 1 pair of normal van pts.');

vpts = all_van_pts([pts1;pts2;pts3;pts4;pts5]);
eqs = zeros(5, 6);
for i=1:5
    i2 = 2*i;
    eqs(i,:) = constr_single( vpts((i2-1),:) , vpts((i2),:) , 0 );
end

omega = solve_omega(eqs, 0);
output_script(omega);