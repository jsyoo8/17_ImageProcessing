c1=imnoise(c, 'salt & pepper',0.1);

roberts_1 = edge(c1, 'roberts');
prewitt_1 = edge(c1, 'prewitt');
sobel_1 = edge(c1, 'sobel');
laplacian_1 = mat2gray(filter2(fspecial('laplacian',0),c1));
zero_lap_1 = edge(c1, 'zerocross',fspecial('laplacian',0));
marr_hildreth_1 = edge(c1, 'log');
canny_1 = edge(c1, 'canny'); 

figure,
subplot(2,4,1),
imshow(c1),
title({'salt & pepper','sync'}),
subplot(2,4,2),
imshow(roberts_1),
title({'robert',sync_F(roberts,roberts_1)}),
subplot(2,4,3),
imshow(prewitt_1),
title({'prewitt',sync_F(prewitt,prewitt_1)}),
subplot(2,4,4),
imshow(sobel_1),
title({'sobel',sync_F(sobel,sobel_1)}),
subplot(2,4,5),
imshow(laplacian_1),
title({'laplacian',sync_F(laplacian,laplacian_1)}),
subplot(2,4,6),
imshow(zero_lap_1),
title({'zerocross-laplacian',sync_F(zero_lap,zero_lap_1)}),
subplot(2,4,7),
imshow(marr_hildreth_1),
title({'marr-hildreth',sync_F(marr_hildreth,marr_hildreth_1)}),
subplot(2,4,8),
imshow(canny_1),
title({'canny',sync_F(canny,canny_1)});