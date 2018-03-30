function y = adt_f( im, fs ) %image, filter size
width=size(im, 2);
height=size(im, 1);
fps = floor(fs/2); %filter padding size

arr = zeros((fps*2)+height,(fps*2)+width); %arr = im->zero padding
arr(fps+1:fps+height, fps+1:fps+width) = im;
y_m = zeros(height, width); %mean
y_v = zeros(height, width); %variance
msk_w = ones(1,fs);
msk_h = ones(fs, 1);

for i=1:height,
    for j=1:width,
        y_m(i,j) = msk_w*(gau_f(fs).*(arr(i:i+(fps*2), j:j+(fps*2))))*msk_h;
        y_v(i,j) = msk_w*(gau_f(fs).*((arr(i:i+(fps*2), j:j+(fps*2))-y_m(i,j)).^2))*msk_h;
    end
end

Ig = double(im);
n = (ones(1,width)*y_v*ones(height,1))/(height*width);
y = y_m+(max(0,y_v-n)./max(y_v,n)).*(Ig-y_m);
y = uint8(y);

%subplot(2,2,1),
%imshow(uint8(im)),
%subplot(2,2,2),
%imshow(y),
%subplot(2,2,3),
%imshow(uint8(y_m)),
%subplot(2,2,4),
%imshow(uint8(wiener2(im, [7,7])));
end