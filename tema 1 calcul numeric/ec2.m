function [x1,x2] = ec2(a,b,c)

d=b*b-4*a*c;
if d>=0
    x1=(-b+sqrt(d))/2*a
    x2=(-b-sqrt(d))/2*a
elseif d<0
    x1=(-b+i*sqrt(-d))/2*a
    x1=(-b-i*sqrt(-d))/2*a
    
end
end
