function y = impdf(im)
%IMPDF �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
height=size(im,1);
width=size(im,2);
arr=zeros(1,256);
count=0;
for i=1:height,
    for j=1:width,
        arr(1,im(i,j)+1)=arr(1,im(i,j)+1)+1;
        count=count+1;
    end
end
y=arr;
arr=arr/count;
plot(arr)
end
