function [ ip ] = input_script()

%     im_file = '../given-images/cb1.jpg';
%     scale = 0.1;
%     ip.img1 = read_image(im_file, scale);
%     im_file = '../given-images/cb2.jpg';
%     scale = 0.1;
%     ip.img2 = read_image(im_file, scale);
%     im_file = '../given-images/cb3.jpg';
%     scale = 0.1;
%     ip.img3 = read_image(im_file, scale);
%     im_file = '../given-images/cb4.jpg';
%     scale = 0.1;
%     ip.img4 = read_image(im_file, scale);
%     im_file = '../given-images/cb5.jpg';
%     scale = 0.1;
%     ip.img5 = read_image(im_file, scale);

    im_file = '../given-images/image2_2.png';
    scale = 1;
    ip.img1 = read_image(im_file, scale);
    ip.img2 = ip.img1;
    ip.img3 = ip.img1;
    ip.img4 = ip.img1;
    ip.img5 = ip.img1;
    
%     im_file = '../given-images/img1.jpg';
%     scale = 0.15;
%     ip.img1 = read_image(im_file, scale);
%     ip.img2 = ip.img1;
%     ip.img3 = ip.img1;
%     ip.img4 = ip.img1;
%     ip.img5 = ip.img1;

%     im_file = '../given-images/img2.jpg';
%     scale = 0.2;
%     ip.img1 = read_image(im_file, scale);
%     ip.img2 = ip.img1;
%     ip.img3 = ip.img1;
%     ip.img4 = ip.img1;
%     ip.img5 = ip.img1;

end