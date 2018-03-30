im0763=blkproc(t3, [63, 63], fun);
im0762=blkproc(t3, [62, 62], fun);
im0761=blkproc(t3, [61, 61], fun);
im0760=blkproc(t3, [60, 60], fun);
figure,
subplot(2, 2, 1),
imshow(im0763),
title({'63',sync_F(t,im0763)}),
subplot(2, 2, 2),
imshow(im0762),
title({'62',sync_F(t,im0762)}),
subplot(2, 2, 3),
imshow(im0761),
title({'61',sync_F(t,im0761)}),
subplot(2, 2, 4),
imshow(im0760),
title({'60',sync_F(t,im0760)});