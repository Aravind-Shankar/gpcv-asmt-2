ip = input_script();
[x,y] = read_points(ip.img, '24 pts for 3 pairs of normal van pts.');
pts = [x y 1];

vpts = all_van_pts(pts);
eqs = zeros(3, 4);
for i=1:3
    i2 = 2*i;
    eqs(i,:) = constr_single( vpts((i2-1),:) , vpts((i2),:) , 1 );
end

omega = solve_omega(eqs, 1);
output_script(omega);