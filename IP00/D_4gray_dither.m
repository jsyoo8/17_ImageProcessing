function D_4gray_dither(filename)
%UNTITLED �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
 x=imread(filename);
 D=[0 56;84 28];
 r=repmat(D,128,128);
 x=double(x);
 q=floor(x/85);
 x4=q+(x-85*q>r);
 imshow(uint8(85*x4))
end
