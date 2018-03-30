function output = Gaussian_filter(input)
height=size(input,1);
width=size(input,2);
sigma = 0.5;
msk=[2 1 2 ; 1 0 1; 2 1 2];
msk=exp(-(msk)/(2*sigma*sigma)) / (2*pi*sigma*sigma);
t=0;
output=zeros(height,width);
for i=1:3,
    for j=1:3,
        t=msk(i,j)+t;
    end
end
arr=zeros(height+2,width+2);
for i=2:height+1,
    for j=2:width+1,
        arr(i,j)=input(i-1,j-1);
    end
end
for i=2:height+1,
    for j=2:width+1,
        output(i-1,j-1)=((arr(i-1,j+1)*msk(1,3))+(arr(i-1,j)*msk(1,2))+(arr(i-1,j-1)*msk(1,1))+(arr(i,j+1)*msk(2,3))+(arr(i,j)*msk(2,2))+(arr(i,j-1)*msk(2,1))+(arr(i+1,j+1)*msk(3,3))+(arr(i+1,j)*msk(3,2))+(arr(i+1,j-1)*msk(3,1)))/t;
    end
end
imshow(uint8(output));
end

