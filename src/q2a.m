ip = input_script();
[~,~,pts1] = read_points(ip.img1, '8 pts for 1 pair of normal van pts.');
[~,~,pts2] = read_points(ip.img2, '8 pts for 1 pair of normal van pts.');
[~,~,pts3] = read_points(ip.img3, '8 pts for 1 pair of normal van pts.');

vpts = all_van_pts([pts1;pts2;pts3]);
eqs = zeros(3, 4);
for i=1:3
    i2 = 2*i;
    eqs(i,:) = constr_single( vpts((i2-1),:) , vpts((i2),:) , 1 );
end

omega = solve_omega(eqs, 1);
output_script(omega);