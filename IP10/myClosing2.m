function y = myClosing2( input, kernel )
y1 = myDilation2(input, kernel);
y = myErosion2(y1, kernel);
end