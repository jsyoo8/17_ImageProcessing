function imcdf(filename)
%IMCDF �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
parr=impdf(filename);
carr=zeros(1,256);
count=0;
for i=1:256,
    for j=1:i,
        carr(1,i)=carr(1,i)+parr(1,j);
    end
    count=count+parr(1,i);
end
carr=carr/count;
plot(carr)
end

