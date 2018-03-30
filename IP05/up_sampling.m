function output  = up_sampling( input, s_c, opt )

width=size(input, 2);
height=size(input, 1);
color=size(input, 3);

out_w=floor(s_c*width);
out_h=floor(s_c*height);
output=zeros(out_h, out_w, color);

bic_zeros=zeros(height+2, width+2, color);
for i=2:height+1,
    for j=2:width+1,
        bic_zeros(i, j, :)=input(i-1, j-1, :);
    end
end
switch opt
    case 'nearest'
        for i=1:1:out_h,
                h=round(1+((height-1)/(out_h-1))*(i-1));

            for j=1:1:out_w,
                w=round(1+((width-1)/(out_w-1))*(j-1));

                output(i, j, :) = input(h, w, :);
            end
        end
    case 'bilinear'
        for i=1:1:out_h,
                h_o=(1+((height-1)/(out_h-1))*(i-1));
                h_f=floor(h_o);
                h_c=ceil(h_o);
            for j=1:1:out_w,              
                w_o=(1+((width-1)/(out_w-1))*(j-1));
                w_f=floor(w_o);
                w_c=ceil(w_o);

                a=input(h_f, w_f, :);
                b=input(h_f, w_c, :);
                c=input(h_c, w_c, :);
                d=input(h_c, w_f, :);

                m=a*(1-(h_o-h_f))+d*(h_o-h_f);
                n=b*(1-(h_o-h_f))+c*(h_o-h_f);

                output(i, j, :) = m*(1-(w_o-w_f))+n*(w_o-w_f);
            end
        end
    case 'bicubic'
        for i=1:1:out_h,
                h_o=(1+((height-1)/(out_h-1))*(i-1));
                h_f=floor(h_o);
                h_c=ceil(h_o);

            for j=1:1:out_w,              
                w_o=(1+((width-1)/(out_w-1))*(j-1));
                w_f=floor(w_o);
                w_c=ceil(w_o);

                a = R3(-1-(w_o-w_f))*bic_zeros(h_f, w_f, :) + R3(-(w_o-w_f))*bic_zeros(h_f, w_f+1, :)+R3(1-(w_o-w_f))*bic_zeros(h_f, w_c+1, :)+R3(2-(w_o-w_f))*bic_zeros(h_f, w_c+2, :);
                b = R3(-1-(w_o-w_f))*bic_zeros(h_f+1, w_f, :) + R3(-(w_o-w_f))*bic_zeros(h_f+1, w_f+1, :)+R3(1-(w_o-w_f))*bic_zeros(h_f+1, w_c+1, :)+R3(2-(w_o-w_f))*bic_zeros(h_f+1, w_c+2, :);
                c = R3(-1-(w_o-w_f))*bic_zeros(h_c+1, w_f, :) + R3(-(w_o-w_f))*bic_zeros(h_c+1, w_f+1, :)+R3(1-(w_o-w_f))*bic_zeros(h_c+1, w_c+1, :)+R3(2-(w_o-w_f))*bic_zeros(h_c+1, w_c+2, :);
                d = R3(-1-(w_o-w_f))*bic_zeros(h_c+2, w_f, :) + R3(-(w_o-w_f))*bic_zeros(h_c+2, w_f+1, :)+R3(1-(w_o-w_f))*bic_zeros(h_c+2, w_c+1, :)+R3(2-(w_o-w_f))*bic_zeros(h_c+2, w_c+2, :);

                output(i, j, :) = R3(-1-(h_o-h_f))*a + R3(-(h_o-h_f))*b + R3(1-(h_o-h_f))*c + R3(2-(h_o-h_f))*d;
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