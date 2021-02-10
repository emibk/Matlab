function [y z]=SplineP(X,Y,x,fpa)
n=length(X)-1;
for i=1:n
    h(i)=X(i+1)-X(i);
    a(i)=Y(i);
end
b(1)=fpa;
for i=1:n
    b(i+1)=2/h(i) * (Y(i+1)-Y(i))-b(i);
    c(i)=(1/(h(i)*h(i))) * (Y(i+1)-Y(i)-h(i)*b(i));
end
nr=length(x);
for k=1:nr    
for i=1:n
 
    if x(k)>=X(i) && x(k)<=X(i+1)
        indice=i;
        break;
    end
end
y(k)=a(indice)+b(indice)*(x(k)-X(indice))+c(indice)*(x(k)-X(indice))^2;
z(k)=b(indice)+2*c(indice)*(x(k)-X(indice));
end
end
