function [y,z,t] = splineC(X,Y,fpa,fpb,x)
%SplineC Calculeaza functia spline cubica.

n=length(X)-1;

% Calculam coeficientii a(i) si h(i)
for i=1:n
    h(i)=X(i+1)-X(i);
    a(i)=Y(i);
end

% Calculam coeficientii b(i)

B(1,1)=1;
B(n+1,n+1)=1;
V(1)=fpa;
V(n+1)=fpb;
for j=2:n
B(j,j-1)=1/h(j-1);    
B(j,j)=2/h(j) + 2/h(j-1);
B(j,j+1)=1/h(j);
V(j)=-3/h(j-1)^2 * Y(j-1) + (3/h(j-1)^2 - 3 /h(j)^2 ) * Y(j) + 3/h(j)^2 * Y(j+1);
end

b=gaussPivTot(B,V);

for j=1:n
    d(j)=-2/h(j)^3 * ( Y(j+1) - Y(j) ) + 1/h(j)^2 * ( b(j+1) + b(j));
    c(j)=3/h(j)^2 * ( Y(j+1) - Y(j) ) - ( b(j+1) + 2*b(j) ) / h(j) ; 
end

nr=length(x);

for k=1:nr
    
for i=1:n
    
    if x(k)>=X(i) && x(k)<=X(i+1)
        indice=i;
        break;
    end
end

y(k)=a(indice)+b(indice)*(x(k)-X(indice))+c(indice)*(x(k)-X(indice))^2+d(indice)*(x(k)-X(indice))^3;
z(k)=b(indice)+2*c(indice)*(x(k)-X(indice))+3*d(indice)*(x(k)-X(indice))^2;
t(k)=2*c(indice)+6*d(indice)*(x(k)-X(indice));

end

end

