function D2_4gray_dither(filename)
%UNTITLED �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
 x=imread(filename);
 D2=[0 42 10 53;64 21 74 32;16 58 5 48;80 37 69 26];
 r2=repmat(D2,64,64);
 x=double(x);
 q=floor(x/85);
 x4=q+(x-85*q>r2);
 imshow(uint8(85*x4))
end
