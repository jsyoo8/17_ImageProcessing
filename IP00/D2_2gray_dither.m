function D2_2gray_dither(filename)
%UNTITLED �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
 x=imread(filename);
 D2=[0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80];
 r2=repmat(D2,64,64);
 x4=x>r2;imshow(x4)
end
