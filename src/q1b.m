ip = input_script();
[x,y] = read_points(ip.img, '4 pts for one square for one homography.');
pts_H1 = [x y 1];
[x,y] = read_points(ip.img, '4 pts for one square for one homography.');
pts_H2 = [x y 1];
[x,y] = read_points(ip.img, '4 pts for one square for one homography.');
pts_H3 = [x y 1];