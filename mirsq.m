function [ret, num] = mirsq(StartNum, EndNum)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Mirror Squares 1 to n
%
%   Thanks To Dear MONK
% 
%
% get pair from 1 to 100
%
%   >> [pairs, numsofpaires] =  mirsq(1,100)
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = StartNum;
n = EndNum;
count = 0;
for i = m:n
    %x = dec2base(i,10) - '0';
    x = string(i);
    x = char(x);
    x = fliplr(x);
    x = string(x);
    x = base2dec(x,10);
    for j = m:n
        y = string(j);
        y = char(y);
        y = fliplr(y);
        y = string(y);
        y = base2dec(y,10);
        if ((i^2 + j^2) == (x^2 + y^2))
            %fprintf("%d %d = %d %d \n", i,j,x,y );
            count = count + 1;
            ret_t(count,:) = [i j x y]; 
        end
    end
end
ret = ret_t;
num = count;
fprintf("Numbers of pairs of Mirror Squares is : %d\n", count);
end
