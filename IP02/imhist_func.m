function y = imhist_func( im )
height=size(im,1);
width=size(im,2);
arr=zeros(1,256);
for i=1:height,
    for j=1:width,
        arr(1,im(i,j)+1)=arr(1,im(i,j)+1)+1;
    end
end
y=arr;
bar(arr)
end
