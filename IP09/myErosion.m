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
                    if(h+i-kh+1>0 && w+j-kw+1>0 && h+i-kh+1<height+1 && w+j-kw+1<width+1),%인덱스의 범위내 확인(외곽 특수처리)
                        if(input(h+i-kh+1,w+j-kw+1)==0),%커널의 2,2를 내장함수처럼 0,0으로 가정, -1,-1부터 1,1까지
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