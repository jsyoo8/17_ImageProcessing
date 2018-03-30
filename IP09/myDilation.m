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
        if(input(h,w)==1)%팽창은 1인것과 비교만 하면 됨
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
y=arr(kh:height+kh-1, kw:width+kw-1);%커널의 2,2를 내장함수처럼 0,0으로 가정, -1,-1부터 1,1까지
end