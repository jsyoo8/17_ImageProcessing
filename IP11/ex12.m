%ex12
ty=rgb2ntsc(twins);
tn2=imnoise(ty(:,:,1), 'salt & pepper');
ty(:,:,1)= tn2;
ta=ntsc2rgb(ty);
t1316=imnoise(twins, 'salt & pepper');
tyb=medfilt2(ty(:,:,1), [3 3]);
tb=zeros(256,256,3);
tb(:,:,:)=ty(:,:,:);
tb(:,:,1)=tyb;
tb=ntsc2rgb(tb);
tmr=medfilt2(t1316(:,:,1));
tmg=medfilt2(t1316(:,:,2));
tmb=medfilt2(t1316(:,:,3));
tc=zeros(256,256,3);
tc(:,:,1)=tmr;
tc(:,:,2)=tmg;
tc(:,:,3)=tmb;
figure,
subplot(2, 2, 1),
imshow(ta),
title('a'),
subplot(2,2,3),
imshow(uint8(t1316)),
title('img13.16'),
subplot(2,2,2),
imshow(tb),
title('b'),
subplot(2,2,4),
imshow(uint8(tc)),
title('c');