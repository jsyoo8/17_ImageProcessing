function D2_2gray_dither(filename)
%UNTITLED 이 함수의 요약 설명 위치
%   자세한 설명 위치
 x=imread(filename);
 D2=[0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80];
 r2=repmat(D2,64,64);
 x4=x>r2;imshow(x4)
end
