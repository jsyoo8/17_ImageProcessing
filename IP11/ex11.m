%ex11
twins = imread('twins.tif');
tn=imnoise(twins, 'gaussian');
rtn = tn(:,:,1);
gtn = tn(:,:,2);
btn = tn(:,:,3);
adrtn = adt_f(rtn, 3);
adgtn = adt_f(gtn, 3);
adbtn = adt_f(btn, 3);
wirtn = wiener2(rtn, [3 3]);
wigtn = wiener2(gtn, [3 3]);
wibtn = wiener2(btn, [3 3]);
adtn = zeros(256, 256, 3);
adtn(:,:,1) = adrtn;
adtn(:,:,2) = adgtn;
adtn(:,:,3) = adbtn;
witn = zeros(256, 256, 3);
witn(:,:,1) = wirtn;
witn(:,:,2) = wigtn;
witn(:,:,3) = wibtn;
figure,
subplot(2, 2, 1),
imshow(twins),
title('twins'),
subplot(2, 2, 2),
imshow(tn),
title('noise'),
subplot(2, 2, 3),
imshow(uint8(adtn)),
title('adaptive'),
subplot(2, 2, 4),
imshow(uint8(witn)),
title('wiener2');