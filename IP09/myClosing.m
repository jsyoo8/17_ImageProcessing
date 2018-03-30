function y = myClosing( input, kernel )
y1 = myDilation(input, kernel);
y = myErosion(y1, kernel);
end