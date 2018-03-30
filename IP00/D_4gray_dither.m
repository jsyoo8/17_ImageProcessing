function D_4gray_dither(filename)
%UNTITLED 이 함수의 요약 설명 위치
%   자세한 설명 위치
 x=imread(filename);
 D=[0 56;84 28];
 r=repmat(D,128,128);
 x=double(x);
 q=floor(x/85);
 x4=q+(x-85*q>r);
 imshow(uint8(85*x4))
end
