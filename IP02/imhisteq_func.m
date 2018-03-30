function y = imhisteq_func( im )
carr=imcdf(im);
height=size(im,1);
width=size(im,2);
for i=1:height,
    for j=1:width,
        im(i,j) = round(carr(1,im(i,j)+1) * 255);
    end
end
y=im;
imshow(im);
end

