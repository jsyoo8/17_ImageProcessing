cam=imread('cameraman.tif');
figure, imshow([up_sampling(cam, 2.7, 'nearest') up_sampling(cam, 2.7, 'bilinear') up_sampling(cam, 2.7, 'bicubic')])
figure, imshow([imresize(cam, 2.7, 'nearest') imresize(cam, 2.7, 'bilinear') imresize(cam, 2.7, 'bicubic')])
