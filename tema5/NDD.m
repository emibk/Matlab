function [y] = NDD(X,Y,x)
n=length(X)-1;
for i=1:n+1
    Q(i,1)=Y(i);
end
for i=2:n+1
    for j=2:i
        Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
%Construim polinomul P_n
for i=1:length(x)
P_n(i)=Q(1,1);
for k=2:n+1
    prod=1;
    for j=1:k-1
        prod=prod*(x(i)-X(j));
    end
    P_n(i)=P_n(i)+prod*Q(k,k);
end
end
y=P_n;
end