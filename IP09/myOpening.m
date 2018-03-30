function y = myOpening( input, kernel )
y1 = myErosion(input, kernel);
y = myDilation(y1, kernel);
end