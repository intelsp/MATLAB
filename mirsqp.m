function mirsq(StartNum, EndNum)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Mirror Squares 1 to n
%
%   Thanks To Dear MONK
% 
%
% get pair from 1 to 100
%
%   >> mirsq(1,100)
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = StartNum;
n = EndNum;
count = 0;
for i = m:n
    x = dec2base(i,10) - '0';
    x = fliplr(x);
    li = length(x);
    xs = string(x(1,1));
    for lpi = 2:li
        xs = append(xs,string(x(lpi)));
    end
    x = base2dec(xs,10);
    for j = m:n
        y = dec2base(j,10) - '0';
        y = fliplr(y);
        lj = length(y);
        ys = string(y(1,1));
        for lpj = 2:lj
            ys = append(ys,string(y(lpj)));
        end
        y = base2dec(ys,10);
        if ((i^2 + j^2) == (x^2 + y^2))
            fprintf("%d %d = %d %d \n", i,j,x,y );
            count = count + 1;
        end
    end
end

fprintf("Numbers of pairs of Mirror Squares is : %d\n", count);
end
