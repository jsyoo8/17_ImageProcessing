function [ output ] = filter2_revision( filter, input, opt )
height=size(input,1);
width=size(input,2);
output=zeros(height,width);
msk=ones(filter,filter)/(filter*filter);
wr = floor(size(msk, 1) / 2);
wc = floor(size(msk, 2) / 2);
switch opt
    case 'zero'
        m_x=zeros(height+wr+wr,width+wc+wc);
        for i=wr+1 : height+wr,
            for j=wc+1 : width+wc,
                m_x(i,j)=input(i-wr,j-wc);
            end
        end
    case 'mirror'
        m_x=[input(wr:-1:1,:); input; input(end:-1:end-(wr-1),:)];
        m_x=[m_x(:, wc:-1:1), m_x, m_x(:, end:-1:end- (wc-1))];
    otherwise
        error(message('error: opt!!'));
end
m_x=double(m_x);
for i=wr+1 : height+wr,
    for j=wc+1 : width+wc,
        n_x=m_x(i-wr:i+wr,j-wc:j+wc) .*msk;
        n_x=sum(n_x(:));
        output(i-wr,j-wc)=n_x;
    end
end
imshow(uint8(output))
end