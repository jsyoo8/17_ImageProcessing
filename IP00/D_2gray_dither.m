function D_2gray_dither(filename)
%UNTITLED �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
 x=imread(filename);
 D=[0 128;192 64];
 r=repmat(D,128,128);
 x2=x>r;imshow(x2)
end

