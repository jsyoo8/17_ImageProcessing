function y = myErosion( input, kernel )
width=size(input, 2);
height=size(input, 1);
kw=size(kernel, 2);
kh=size(kernel, 1);
width=size(input, 2);
height=size(input, 1);
arr = zeros(height, width);
flag=1;
for h=1:height,
    for w=1:width,
        for i=1:kh,
            for j=1:kw,
                if(kernel(i,j)==1),
                    if(h+i-kh+1>0 && w+j-kw+1>0 && h+i-kh+1<height+1 && w+j-kw+1<width+1),%�ε����� ������ Ȯ��(�ܰ� Ư��ó��)
                        if(input(h+i-kh+1,w+j-kw+1)==0),%Ŀ���� 2,2�� �����Լ�ó�� 0,0���� ����, -1,-1���� 1,1����
                            flag=0;
                        end
                    end
                end
            end
        end
        if(flag==1),
            arr(h,w)=1;
        end
        flag=1;
    end
end
y=arr;
end