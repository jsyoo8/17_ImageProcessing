function output = LoG_f(input)
output=Gaussian_f(input);
output=Laplacian_f(output);
imshow(output);
end
