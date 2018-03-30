function output = Gaussian_f(input)
height=size(input,1);
width=size(input,2);
sigma = 0.5;
x_msk=[4 1 0 1 4];
y_msk=[4; 1; 0; 1; 4];
x_msk=exp(-(x_msk)/(2*sigma*sigma));
y_msk=exp(-(y_msk)/(2*sigma*sigma));
output=zeros(height,width);
arr=zeros(height+4,width+4);
output1=zeros(height+4,width+4);
for i=3:height+2,
    for j=3:width+2,
        arr(i,j)=input(i-2,j-2);
    end
end
arr=double(arr);
output=double(output);
for i=3:height+2,
    for j=3:width+2,
        output1(i,j)=sum((arr(i, j-2:j+2) .* x_msk),2);
    end
end
for i=3:height+2,
    for j=3:width+2,
        output(i-2,j-2)=sum((output1(i-2:i+2, j) .* y_msk),1);
    end
end
output = output / (2*pi*sigma*sigma);
output = uint8(output);
imshow(output);
end
