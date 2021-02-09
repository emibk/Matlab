function [y] = f2(x)
if x>=0 & x<1
    y=exp(x);
elseif x>=1 & x<2
    y=sin(x);
elseif x>=2 & x<3
    y=log(x);
else
    y=0;
end
end

