%ex05
cam=imread('cameraman.tif');
imshow([cam imresize(up_sampling(cam, 2, 'bicubic'), 0.5, 'bicubic')])
