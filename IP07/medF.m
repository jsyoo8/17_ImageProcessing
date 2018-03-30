function y = medF( im, fs ) %image, filter size
width=size(im, 2);
height=size(im, 1);
fps = floor(fs/2); %filter padding size

arr = zeros((fps*2)+height,(fps*2)+width); %arr = im->zero padding
arr(fps+1:fps+height, fps+1:fps+width) = im;
y = zeros(height, width); % return
for i = 1:height,
    for j = 1:width,
        y(i,j) = iSort(arr(i:i+(fps*2), j:j+(fps*2)));
    end
end
y = uint8(y);
imshow(y);
end