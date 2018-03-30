function output = sobel_mag(input)
height=size(input,1);
width=size(input,2);
arr=zeros(height+2,width+2);
output=zeros(height,width);
output1=zeros(height,width);
output2=zeros(height,width);
Sx=[-1 0 1 ; -2 0 2 ; -1 0 1];
Sy=[-1 -2 -1 ; 0 0 0 ; 1 2 1];
for i=2:height+1,
    for j=2:width+1,
        arr(i,j)=input(i-1,j-1);
    end
end
for i=2:height+1,
    for j=2:width+1,
        output2(i-1,j-1)=abs((arr(i-1,j+1)*Sy(1,3))+(arr(i-1,j)*Sy(1,2))+(arr(i-1,j-1)*Sy(1,1))+(arr(i,j+1)*Sy(2,3))+(arr(i,j)*Sy(2,2))+(arr(i,j-1)*Sy(2,1))+(arr(i+1,j+1)*Sy(3,3))+(arr(i+1,j)*Sy(3,2))+(arr(i+1,j-1)*Sy(3,1)));
    end
end
for i=2:height+1,
    for j=2:width+1,
        output1(i-1,j-1)=abs((arr(i-1,j+1)*Sx(1,3))+(arr(i-1,j)*Sx(1,2))+(arr(i-1,j-1)*Sx(1,1))+(arr(i,j+1)*Sx(2,3))+(arr(i,j)*Sx(2,2))+(arr(i,j-1)*Sx(2,1))+(arr(i+1,j+1)*Sx(3,3))+(arr(i+1,j)*Sx(3,2))+(arr(i+1,j-1)*Sx(3,1)));
    end
end
output = output1 + output2
output = ((output-min(output(:)))*255) / (max(output(:))-min(output(:)));
imshow(uint8(output));
end
