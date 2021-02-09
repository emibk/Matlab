function [A]=matrice(n)
d=21;
c=-7;
f=-7;
for k=1:n
    A(k,k)=d;
   
end
for k=2:n
    A(k-1,k)=c;
    A(k,k-1)=f;
end
end


