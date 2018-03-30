function output = Rotate_f(input, angle, opt)

% - Compute tHe size of an output image.

% Input image: (H¡¿W)
% Output image: (H_1,W_1)=(¡î(H^2+W^2 ),¡î(H^2+W^2 ))
W=size(input, 2);
H=size(input, 1);
color=size(input, 3);
H_1=ceil(sqrt(H^2+W^2));
W_1=ceil(sqrt(H^2+W^2));
output = zeros(H_1, W_1);

% - Convert an angle into a radian. For instance, 180 -> pi
radian = angle/180*pi;

% i,j: coordinate of rotated output image
% x,y: coordinate of original input image

bic_zeros=zeros(H+2, W+2, color);
for i=2:H+1,
    for j=2:W+1,
        bic_zeros(i, j, :)=input(i-1, j-1, :);
    end
end

for i=1: H_1
    for j=1: W_1
	    % Compute tHe coordinates of tHe original input image for eacH pixel of tHe rotated output image
   	    x = (j-W_1/2) * sin(radian) + (i-H_1/2) * cos(radian) + H/2;
        y = (j-W_1/2) * cos(radian) - (i-H_1/2) * sin(radian) + W/2;

        x_f = floor(x);
        x_c = ceil(x);
        y_f = floor(y);
        y_c = ceil(y);
        % x and y are located WitHin tHe original input image
        switch opt
            case 'nearest'
                if((1 <= x && x <= H) && (1 <= y && y<= W))
                    output(i, j, :) = input(round(x), round(y), :);
                end
            case 'bilinear'
                if((1 <= x && x <= H) && (1 <= y && y<= W))
                    a=input(x_f, y_f, :);
                    b=input(x_f, y_c, :);
                    c=input(x_c, y_c, :);
                    d=input(x_c, y_f, :);

                    m=a*(1-(x-x_f))+d*(x-x_f);
                    n=b*(1-(x-x_f))+c*(x-x_f);

                    output(i, j, :) = m*(1-(y-y_f))+n*(y-y_f);
                end
            case 'bicubic'
                if((1 <= x && x <= H) && (1 <= y && y<= W))
                    a = R3(-1-(y-y_f))*bic_zeros(x_f, y_f, :) + R3(-(y-y_f))*bic_zeros(x_f, y_f+1, :)+R3(1-(y-y_f))*bic_zeros(x_f, y_c+1, :)+R3(2-(y-y_f))*bic_zeros(x_f, y_c+2, :);
                    b = R3(-1-(y-y_f))*bic_zeros(x_f+1, y_f, :) + R3(-(y-y_f))*bic_zeros(x_f+1, y_f+1, :)+R3(1-(y-y_f))*bic_zeros(x_f+1, y_c+1, :)+R3(2-(y-y_f))*bic_zeros(x_f+1, y_c+2, :);
                    c = R3(-1-(y-y_f))*bic_zeros(x_c+1, y_f, :) + R3(-(y-y_f))*bic_zeros(x_c+1, y_f+1, :)+R3(1-(y-y_f))*bic_zeros(x_c+1, y_c+1, :)+R3(2-(y-y_f))*bic_zeros(x_c+1, y_c+2, :);
                    d = R3(-1-(y-y_f))*bic_zeros(x_c+2, y_f, :) + R3(-(y-y_f))*bic_zeros(x_c+2, y_f+1, :)+R3(1-(y-y_f))*bic_zeros(x_c+2, y_c+1, :)+R3(2-(y-y_f))*bic_zeros(x_c+2, y_c+2, :);
                
                    output(i, j, :) = R3(-1-(x-x_f))*a + R3(-(x-x_f))*b + R3(1-(x-x_f))*c + R3(2-(x-x_f))*d;
                end
        end
    end
end
output=uint8(output);
end

function output = R3( input )
input = abs(input);
    if (input <= 1)
        output = 1.5*(input^3)-2.5*(input^2)+1;
    else
        output = -0.5*(input^3)+2.5*(input^2)-4*input+2;
    end
end