X=[0 1 3 6];
Y=[18 10 -19 90];
xmin=0;
xmax=6;
n=3;
X=linspace(xmin,xmax,n+1);


plot(X,Y,"o","MarkerFaceColor","y","MarkerSize",10);
hold on;

%Determinam P_n
%Definim matricea asociata sist.

for i=1:n+1
    for j=1:n+1
        A(i,j)=X(i)^(j-1);
    end
end

% Rezolvam sistemul A*a=Y
a=gaussPivTot(A,Y);
% Det val polinomului intr un pct dat
x=1;
% Calc P_n=a1+a2*x+..+an*x^(n-1)+an+1*x^n
P=0;
for i=1:n+1
    P=P+a(i)*x^(i-1);
end
x_graf=linspace(xmin,xmax,100);
y_graf=linspace(18,90,100)
for i=1:100
    P_graf(i)=0;
    for j=1:n+1
     P_graf(i)=P_graf(i)+a(j)*x_graf(i)^(j-1);
    end
end
for i = 1:length(X)
 plot(X(i), Y(i),"o","LineWidth",2);
 grid on;
 hold on;
 axis equal;
end
plot(X,Y,"--b","LineWidth",3);
plot(x,P, "-r","LineWidth",2);
grid on;
hold on;