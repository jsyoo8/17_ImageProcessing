function y = myErosion2( input, kernel )
width=size(input, 2);
height=size(input, 1);
ks=size(kernel, 1);
fks=floor(ks/2);
arr = ones(height+(2*fks), width+(2*fks)).*255;
zr_input = ones(height+(2*fks), width+(2*fks)).*255;
zw=size(zr_input, 2);
zh=size(zr_input, 1);
zr_input(fks+1:zh-fks,fks+1:zw-fks)=input;
n=255;
for i=fks+1:zh-fks,
    for j=fks+1:zw-fks,
       for kh=1:ks,
            for kw=1:ks,
                n=zr_input(i-(ks-1)+kh, j-(ks-1)+kw)-kernel(kh,kw);
                if arr(i,j) > n,
                    arr(i,j) = n;
                end
                n=255;
            end
        end
    end
end
y = uint8(arr(fks+1:zh-fks, fks+1:zw-fks));
end