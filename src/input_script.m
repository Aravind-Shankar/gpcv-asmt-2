function [ ip ] = input_script()

%COMMON:
% ip.scale : input image reading scale
% ip.img : read (scaled) image

%     IMG_FILE = '../given-images/cb1.jpg';
%     ip.scale = 0.1;
%     IMG_FILE = '../given-images/cb2.jpg';
%     ip.scale = 0.1;
%     IMG_FILE = '../given-images/cb3.jpg';
%     ip.scale = 0.1;
%     IMG_FILE = '../given-images/cb4.jpg';
%     ip.scale = 0.1;
%     IMG_FILE = '../given-images/cb5.jpg';
%     ip.scale = 0.1;
    IMG_FILE = '../given-images/image2_2.png';
    ip.scale = 1;
%     IMG_FILE = '../given-images/img1.jpg';
%     ip.scale = 0.1;
%     IMG_FILE = '../given-images/img2.jpg';
%     ip.scale = 0.1;

    ip.img = read_image(IMG_FILE, ip.scale);
end