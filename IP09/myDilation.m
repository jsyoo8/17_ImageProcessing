function y = myDilation( input, kernel )
width=size(input, 2);
height=size(input, 1);
kw=size(kernel, 2);
kh=size(kernel, 1);
width=size(input, 2);
height=size(input, 1);
arr = zeros(height+kh, width+kw);
for h=1:height,
    for w=1:width,
        if(input(h,w)==1)%��â�� 1�ΰͰ� �񱳸� �ϸ� ��
            for i=1:kh,
                for j=1:kw,
                    if(kernel(i,j)==1),
                        arr(i+h, j+w)=1;
                    end
                end
            end
        end
    end
end
y=arr(kh:height+kh-1, kw:width+kw-1);%Ŀ���� 2,2�� �����Լ�ó�� 0,0���� ����, -1,-1���� 1,1����
end