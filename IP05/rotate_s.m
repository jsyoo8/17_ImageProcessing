cam=imread('cameraman.tif');
figure, imshow([rotate_f(cam, 30, 'nearest') rotate_f(cam, 30, 'bilinear') rotate_f(cam, 30, 'bicubic')])
figure, imshow([imrotate(cam, 30, 'nearest') imrotate(cam, 30, 'bilinear') imrotate(cam, 30, 'bicubic')])
