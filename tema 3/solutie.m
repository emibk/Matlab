function [b]=solutie(n)
b(1,1)=2;
b(n,1)=2;
for k=2:n-1
    b(k,1)=1;
end
end