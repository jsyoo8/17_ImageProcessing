function output = HighBoost_f(input)
height=size(input,1);
width=size(input,2);
arr=zeros(height+2,width+2);
output=zeros(height,width);
%A=3/2;
A=5/6;
ori=[ 0 0 0 ; 0 1 0 ; 0 0 0 ];
lpf=[ 1/9 1/9 1/9 ; 1/9 1/9 1/9 ; 1/9 1/9 1/9 ];
%msk=(A*ori)/(A-1)-(lpf)/(A-1);
msk=(A*ori)/(2*A-1)-((1-A)*lpf)/(2*A-1);
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
