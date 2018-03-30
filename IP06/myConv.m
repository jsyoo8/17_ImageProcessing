function y = myConv( a, b )
    la=length(a);
    lb=length(b);
    len=la+lb-1;
    an=zeros(1,lb-1);
    arr=zeros(1,len);
    an=[ a, an ];
    for m=1:la,
        ac1=zeros(1,m-1);
        ac2=an(1, m)*b;
        ac3=zeros(1,la-m);
        ac=[ ac1, ac2, ac3 ];
        arr=arr+ac;
    end
    y=arr;
end

