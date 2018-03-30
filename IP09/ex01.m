A1=[0 0 0 0 0 0 0 0 ;
    0 0 0 1 1 1 1 0 ;
    0 0 0 1 1 1 1 0 ;
    0 1 1 1 1 1 1 0 ;
    0 1 1 1 1 1 1 0 ;
    0 1 1 1 1 0 0 0 ;
    0 1 1 1 1 0 0 0 ;
    0 0 0 0 0 0 0 0 ;]
A2=[0 0 0 0 0 0 0 0 ;
    0 1 1 1 1 1 1 0 ;
    0 1 1 1 1 1 1 0 ;
    0 1 1 0 0 1 1 0 ;
    0 1 1 0 0 1 1 0 ;
    0 1 1 1 1 1 1 0 ;
    0 1 1 1 1 1 1 0 ;
    0 0 0 0 0 0 0 0 ;]
A3=[0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 1 1 0 ;
    0 1 1 1 0 1 1 0 ;
    0 1 1 1 0 1 1 0 ;
    0 1 1 1 0 1 1 0 ;
    0 1 1 1 0 0 0 0 ;
    0 1 1 1 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;]
B1=[0 1 0 ;
    1 1 1 ;
    0 1 0 ;]
B2=[1 1 1 ;
    1 1 1 ;
    1 1 1 ;]
B3=[1 0 0 ;
    0 0 0 ;
    0 0 1 ;]
figure,
subplot(2, 3, 1),
imshow(imdilate(A1,B1)),
title('imdilate1'),
subplot(2, 3, 2),
imshow(imdilate(A2,B2)),
title('imdilate2'),
subplot(2, 3, 3),
imshow(imdilate(A3,B3)),
title('imdilate3'),
subplot(2, 3, 4),
imshow(myDilation(A1,B1)),
title('myDilation1');
subplot(2, 3, 5),
imshow(myDilation(A2,B2)),
title('myDilation2');
subplot(2, 3, 6),
imshow(myDilation(A3,B3)),
title('myDilation3');
figure,
subplot(2, 3, 1),
imshow(imerode(A1,B1)),
title('imerode1'),
subplot(2, 3, 2),
imshow(imerode(A2,B2)),
title('imerode2'),
subplot(2, 3, 3),
imshow(imerode(A3,B3)),
title('imerode3'),
subplot(2, 3, 4),
imshow(myErosion(A1,B1)),
title('myErosion1');
subplot(2, 3, 5),
imshow(myErosion(A2,B2)),
title('myErosion2');
subplot(2, 3, 6),
imshow(myErosion(A3,B3)),
title('myErosion3');
figure,
subplot(2, 3, 1),
imshow(imopen(A1,B1)),
title('imopen1'),
subplot(2, 3, 2),
imshow(imopen(A2,B2)),
title('imopen2'),
subplot(2, 3, 3),
imshow(imopen(A3,B3)),
title('imopen3'),
subplot(2, 3, 4),
imshow(myOpening(A1,B1)),
title('myOpening1');
subplot(2, 3, 5),
imshow(myOpening(A2,B2)),
title('myOpening2');
subplot(2, 3, 6),
imshow(myOpening(A3,B3)),
title('myOpening3');
figure,
subplot(2, 3, 1),
imshow(imclose(A1,B1)),
title('imclose1'),
subplot(2, 3, 2),
imshow(imclose(A2,B2)),
title('imclose2'),
subplot(2, 3, 3),
imshow(imclose(A3,B3)),
title('imclose3'),
subplot(2, 3, 4),
imshow(myClosing(A1,B1)),
title('myClosing1');
subplot(2, 3, 5),
imshow(myClosing(A2,B2)),
title('myClosing2');
subplot(2, 3, 6),
imshow(myClosing(A3,B3)),
title('myClosing3');