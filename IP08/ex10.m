c = imread('cameraman.tif');

roberts = edge(c, 'roberts');
prewitt = edge(c, 'prewitt');
sobel = edge(c, 'sobel');
laplacian = mat2gray(filter2(fspecial('laplacian',0),c));
zero_lap = edge(c, 'zerocross',fspecial('laplacian',0));
marr_hildreth = edge(c, 'log');
canny = edge(c, 'canny'); 
 
figure,
subplot(2,4,1),
imshow(c),
title('cameraman'),
subplot(2,4,2),
imshow(roberts),
title('robert'),
subplot(2,4,3),
imshow(prewitt),
title('prewitt'),
subplot(2,4,4),
imshow(sobel),
title('sobel'),
subplot(2,4,5),
imshow(laplacian),
title('laplacian'),
subplot(2,4,6),
imshow(zero_lap),
title('zerocroos-laplacian'),
subplot(2,4,7),
imshow(marr_hildreth),
title('marr-hildreth'),
subplot(2,4,8),
imshow(canny),
title('canny');
