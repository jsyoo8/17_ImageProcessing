A=magic(6);
B1=[10 10 10;
    10 10 10;
    10 10 10;];
B2=[5 20 5;
    20 5 20;
    5 20 5;];
dl1=myDilation2(A,B1);
dl2=myDilation2(A,B2);
er1=myErosion2(A,B1);
er2=myErosion2(A,B2);
str1=strel('arbitrary',ones(3,3),B1);
str2=strel('arbitrary',ones(3,3),B2);
figure,
subplot(2, 4, 1),
imshow(uint8(imdilate(A,str1))), impixelinfo,
title('imdilate1'),
subplot(2, 4, 2),
imshow(uint8(imdilate(A,str2))), impixelinfo,
title('imdilate2'),
subplot(2, 4, 5),
imshow(dl1),
title('myDilation1'), impixelinfo,
subplot(2, 4, 6),
imshow(dl2),
title('myDilation2'), impixelinfo,
subplot(2, 4, 3),
imshow(uint8(imerode(A,str1))), impixelinfo,
title('imerode1'),
subplot(2, 4, 4),
imshow(uint8(imerode(A,str2))), impixelinfo,
title('imerode2'),
subplot(2, 4, 7),
imshow(er1),
title('myErosion1'), impixelinfo,
subplot(2, 4, 8),
imshow(er2),
title('myErosion2'), impixelinfo,