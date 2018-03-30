%ex06
cam=imread('cameraman.tif');
imshow([cam up_sampling(imresize(cam, 0.5, 'bicubic'), 2, 'bicubic')])
