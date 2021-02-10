function [y] = SplineL(X,Y,x)
n=length(X)-1;
for j=1:n
    a(j)=Y(j);
    b(j)=(Y(j+1)-Y(j))/(X(j+1)-X(j));
end
nr=length(x);
for k=1:nr    
for i=1:n
    
    if x(k)>=X(i) && x(k)<=X(i+1)
        indice=i;
        break;
    end
end
y(k)=a(indice)+b(indice)*(x(k)-X(indice));
end
end

