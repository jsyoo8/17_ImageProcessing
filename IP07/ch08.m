twins=rgb2gray(imread('twins.tif'));
twin_sp=imnoise(twins,'salt & pepper', 0.3);
twin_gs=imnoise(twins, 'gaussian', 0, 0.005);
figure,
subplot(1,3,1),
imshow(uint8(twin_sp)),
subplot(1,3,2),
medF(twin_sp, 3),
subplot(1,3,3),
medF(twin_sp, 5);
figure,
adtF(twin_gs, 7);