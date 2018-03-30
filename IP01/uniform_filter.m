function output = uniform_filter(input)
height=size(input,1);
width=size(input,2);
arr=zeros(height+2,width+2);
output=zeros(height,width);
for i=2:height+1,
    for j=2:width+1,
        arr(i,j)=input(i-1,j-1);
    end
end
for i=2:height+1,
    for j=2:width+1,
        output(i-1,j-1)=(arr(i-1,j+1)+arr(i-1,j)+arr(i-1,j-1)+arr(i,j+1)+arr(i,j)+arr(i,j-1)+arr(i+1,j+1)+arr(i+1,j)+arr(i+1,j-1))/9;
    end
end
imshow(uint8(output));
end