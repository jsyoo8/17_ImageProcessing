function arr = Array()
arr=zeros(256,256);
for i=1:256,
    for j=1:64,
        arr(i,j)=50;
    end
    for j=65:128,
        arr(i,j)=100;
    end
    for j=129:192,
        arr(i,j)=150;
    end
    for j=193:256,
        arr(i,j)=200;
    end
end
imshow(uint8(arr))
end

