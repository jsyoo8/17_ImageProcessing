function output = UnsharpMasking_f(input)
input=Gaussian_f(input);
height=size(input,1);
width=size(input,2);
arr=zeros(height+2,width+2);
output=zeros(height,width);
alpha=0.5;
msk=[ -alpha alpha-1 -alpha ; alpha-1 alpha+5 alpha-1 ; -alpha alpha-1 -alpha ];
msk = msk/(alpha+1);
arr=double(arr);
output=double(output);
for i=2:height+1,
    for j=2:width+1,
        arr(i,j)=input(i-1,j-1);
    end
end
for i=2:height+1,
    for j=2:width+1,
        output(i-1,j-1)=sum(sum((arr(i-1:i+1, j-1:j+1) .* msk),1),2);
    end
end
imshow(uint8(output));
end
