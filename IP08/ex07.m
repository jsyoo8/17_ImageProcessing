t=imread('circles.tif');
[x,y]=meshgrid(1:256,1:256);
t2=double(t).*((x+y)/2+64)+x+y;
t3=uint8(255*mat2gray(t2));
fun=inline('im2bw(t3,graythresh(t3))');