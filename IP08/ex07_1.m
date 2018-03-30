im0716=blkproc(t3, [16, 16], fun);
im0732=blkproc(t3, [32, 32], fun);
im0764=blkproc(t3, [64, 64], fun);
im0728=blkproc(t3, [128, 128], fun);
figure,
subplot(2, 2, 1),
imshow(im0716),
title({'16',sync_F(t,im0716)}),
subplot(2, 2, 2),
imshow(im0732),
title({'32',sync_F(t,im0732)}),
subplot(2, 2, 3),
imshow(im0764),
title({'64',sync_F(t,im0764)}),
subplot(2, 2, 4),
imshow(im0728),
title({'128',sync_F(t,im0728)});