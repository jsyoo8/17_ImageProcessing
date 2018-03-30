function y = iSort( x ) %insert sort
width=size(x, 2);
height=size(x, 1);
as = height*width; %arr size
flag=mod(as,4); %ceil, floor ±¸º° flag

arr = zeros(1, as);
for i=1:height,
    arr((i-1)*width+1:width*i) = x(i,:);
end

for i=2:as,
    tn = arr(i);%temporary number 
    for j=i:-1:2,
        cn = arr(j-1);%compare number
        if cn>tn,
            arr(j)=arr(j-1);
            if j==2,
                arr(1)=tn;
                break;
            end
        else
            arr(j)=tn;
            break;
        end
    end
end

if flag==1,
    y = arr(floor(as/2));
else
    y = arr(ceil(as/2));
end
end