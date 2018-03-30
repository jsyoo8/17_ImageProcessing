function D_8gray_dither(x)
%UNTITLED 이 함수의 요약 설명 위치
%   자세한 설명 위치
 D=[0 24;36 12];
 r=repmat(D,128,128);
 x=double(x);
 q=floor(x/37);
 x8=q+(x-37*q>r);
 imshow(uint8(37*x8))
end
