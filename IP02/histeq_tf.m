function y = histeq_tf(im)
carr=imcdf(im);
arr=zeros(1,256);
for i=1:256,
        arr(1,i) = round(carr(1,i) * 255);
end
y=arr;
plot(arr);
end

