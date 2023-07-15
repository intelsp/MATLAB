function mirsq(StartNum, EndNum)
%Mirror Squares 1 to 100
% eg >> mirsq(1,100)
%
% Thanks To Dear MONK 
m = StartNum;
n = EndNum;
count = 0;
for i = m:n
    x = dec2base(i,10) - '0';
    x = fliplr(x);
    li = length(x);
    switch li
        case 1
            x = sprintf("%d",x(1,1));
        case 2
            x = sprintf("%d%d",x(1,1),x(1,2));
        case 3
            x = sprintf("%d%d%d",x(1,1),x(1,2),x(1,3));
        case 4
            x = sprintf("%d%d%d%d",x(1,1),x(1,2),x(1,3),x(1,4));
    end
    x = base2dec(x,10);

    for j = m:n
        y = dec2base(j,10) - '0';
        y = fliplr(y);
        lj = length(y);
        switch lj
            case 1
                y = sprintf("%d",y(1,1));
            case 2
                y = sprintf("%d%d",y(1,1),y(1,2));
            case 3
                y = sprintf("%d%d%d",y(1,1),y(1,2),y(1,3));
            case 4
                y = sprintf("%d%d%d%d",y(1,1),y(1,2),y(1,3),y(1,4));
        end
        y = base2dec(y,10);
        if ((i^2 + j^2) == (x^2 + y^2))
            fprintf("%d %d = %d %d \n", i,j,x,y );
            count = count + 1;
        end
    end
end
fprintf("Numbers of pairs of Mirror Squares is : %d\n", count);
end
