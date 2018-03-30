function y = imcdf(im)
%IMCDF 이 함수의 요약 설명 위치
%   자세한 설명 위치
parr=impdf(im);
carr=zeros(1,256);
count=0;
for i=1:256,
    for j=1:i,
        carr(1,i)=carr(1,i)+parr(1,j);
    end
    count=count+parr(1,i);
end
carr=carr/count;
y=carr;
plot(carr)
end

