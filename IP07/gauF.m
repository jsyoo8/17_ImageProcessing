function y = gauF( fs ) %gauss_filter mask
w_msk = zeros(1, fs);
h_msk = zeros(fs, 1);
fps = floor(fs/2); %filter padding size
y = zeros(fs, fs);
sigma=100;
t=0;
for i=1:fs,
    w_msk(1,i)=(i-fps-1)^2;
    h_msk(i,1)=(i-fps-1)^2;
end
for i=1:fs,
    for j=1:fs,
        y(i,j) = exp(-(w_msk(1,j)^2+h_msk(i,1)^2)/(2*(sigma^2)));
    end
end
for i=1:fs,
    for j=1:fs,
        t=y(i,j)+t; %sum of y must be 1 (low pass filter)
    end
end
y=y/t;
end