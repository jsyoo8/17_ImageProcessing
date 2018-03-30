function y = sync_F( im1, im2 )
width=size(im1, 2);
height=size(im1, 1);
sync=0;
for i=1:height,
    for j=1:width,
        if(im1(i,j)==im2(i,j)),
            sync=sync+1;
        end
    end
end
y=sync/(height*width);
y=y*100;
end

