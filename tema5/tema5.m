%% EX 1
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
figure(2);
type('gaussPivTot');
%% EX 2

X = [ 0.9 1.3 1.9 2.1 2.6 3.0 3.9 4.4 4.7 5.0 6.0 7.0 8.0 9.2 10.5 11.3 11.6 12.0 12.6 13.0 13.3];
Y = [1.3 1.5 1.85 2.1 2.6 2.7 2.4 2.15 2.05 2.1 2.25 2.3 2.25 1.95 1.4 0.9 0.7 0.6 0.5 0.4 0.25];
x = linspace(0.9, 13.3, 100);
P20 = NDD(X, Y, x);
for i = 1:length(X)
 plot(X(i), Y(i),"o","LineWidth",2);
 grid on;
 hold on;
 axis equal;
end
plot(X,Y,"--r","LineWidth",3);
plot(x, P20, "-b","MarkerSize",3);
title("Rata salbatica");
grid on;
hold on;
type('NDD');