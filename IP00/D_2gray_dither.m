function D_2gray_dither(filename)
%UNTITLED 이 함수의 요약 설명 위치
%   자세한 설명 위치
 x=imread(filename);
 D=[0 128;192 64];
 r=repmat(D,128,128);
 x2=x>r;imshow(x2)
end

