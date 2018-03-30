function y = DFT_1D( im )
width=size(im, 2);
height=size(im, 1);
color=size(im, 3);
w=exp((2*pi*-1i)/width);
N=width;
arr=zeros(N,N);
for m=1:N,
    for n=1:N,
        arr(n,m)=(w^((m-1)*(n-1)));
    end
end
im=im';
y=arr*im;
figure, fftshow(y, 'log');
end