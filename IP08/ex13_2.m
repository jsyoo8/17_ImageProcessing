c2=imnoise(c,'gaussian',0,0.02);

roberts_2 = edge(c2, 'roberts');
prewitt_2 = edge(c2, 'prewitt');
sobel_2 = edge(c2, 'sobel');
laplacian_2 = mat2gray(filter2(fspecial('laplacian',0),c2));
zero_lap_2 = edge(c2, 'zerocross',fspecial('laplacian',0));
marr_hildreth_2 = edge(c2, 'log');
canny_2 = edge(c2, 'canny'); 

figure,
subplot(2,4,1),
imshow(c2),
title({'gaussian','sync'}),
subplot(2,4,2),
imshow(roberts_2),
title({'robert',sync_F(roberts,roberts_2)}),
subplot(2,4,3),
imshow(prewitt_2),
title({'prewitt',sync_F(prewitt,prewitt_2)}),
subplot(2,4,4),
imshow(sobel_2),
title({'sobel',sync_F(sobel,sobel_2)}),
subplot(2,4,5),
imshow(laplacian_2),
title({'laplacian',sync_F(laplacian,laplacian_2)}),
subplot(2,4,6),
imshow(zero_lap_2),
title({'zerocross-laplacian',sync_F(zero_lap,zero_lap_2)}),
subplot(2,4,7),
imshow(marr_hildreth_2),
title({'marr-hildreth',sync_F(marr_hildreth,marr_hildreth_2)}),
subplot(2,4,8),
imshow(canny_2),
title({'canny',sync_F(canny,canny_2)});