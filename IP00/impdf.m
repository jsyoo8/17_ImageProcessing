function y = impdf(filename)
%IMPDF 이 함수의 요약 설명 위치
%   자세한 설명 위치
x=imread(filename);
height=size(x,1);
width=size(x,2);
arr=zeros(1,256);
count=0;
for i=1:height,
    for j=1:width,
        arr(1,x(i,j)+1)=arr(1,x(i,j)+1)+1;
        count=count+1;
    end
end
y=arr;
arr=arr/count;
plot(arr)
end
