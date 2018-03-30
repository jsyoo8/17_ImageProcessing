function y = DFT_2D( im )
width=size(im, 2);
height=size(im, 1);
color=size(im, 3);
N=width;
w=exp((2*pi*i)/N);
arr1=zeros(N,N);
arr2=zeros(N,N);
for m=1:N,
    for n=1:N,
        arr1(n,m)=(w^((m-1)*(n-1)));
    end
end
y1=arr1*im;
for m=1:N,
    for n=1:N,
        arr2(n,m)=(w^((m-1)*(n-1)));
    end
end
y2=arr2*y1';
y2=y2';
y=fftshift(y2);
figure, fftshow(y, 'log');
end