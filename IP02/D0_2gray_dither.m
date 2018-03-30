function y = D0_2gray_dither(arr)
 x=arr;
 D=[0 100;150 50];
 r=repmat(D,128,128);
 x0=x>r;imshow(x0)
 y=x0;
end
