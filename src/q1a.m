ip = input_script();
[x,y] = read_points(ip.img, '40 pts for 5 pairs of normal van pts.');
pts = [x y 1];

vpts = all_van_pts(pts);
eqs = zeros(5, 6);
for i=1:5
    i2 = 2*i;
    eqs(i,:) = constr_single( vpts((i2-1),:) , vpts((i2),:) , 0 );
end

omega = solve_omega(eqs, 0);
output_script(omega);