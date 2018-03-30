function y = myOpening2( input, kernel )
y1 = myErosion2(input, kernel);
y = myDilation2(y1, kernel);
end