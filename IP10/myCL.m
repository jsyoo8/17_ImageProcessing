function y = myCL( input, kernel )
width=size(input, 2);
height=size(input, 1);
ks=size(kernel, 1);
fks=floor(ks/2);
zr_input = zeros(height+(2*fks), width+(2*fks));
zw=size(zr_input, 2);
zh=size(zr_input, 1);
zr_input(fks+1:zh-fks,fks+1:zw-fks)=input;
n=2;
for i=fks+1:zh-fks,
    for j=fks+1:zw-fks,
        if zr_input(i,j)==1,
            zr_input = labeling(zr_input, kernel, i, j, n); 
            n=n+1;
        end
    end
end
y = zr_input(fks+1:zh-fks, fks+1:zw-fks);

for i=1:height,
    for j=1:width,
        if y(i,j)>0,
            y(i,j)=y(i,j)-1;
        end
    end
end
end

function out = labeling( in, k, n1, n2, n )
in(n1,n2) = n;
for kh=1:3,
    for kw=1:3,
        if (in(n1-2+kh, n2-2+kw) == 1)&&(k(kh,kw)==1),
            in = labeling(in, k, n1-2+kh, n2-2+kw, n);
        end
    end
end
out=in;
end