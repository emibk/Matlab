clear all;
f=@(x)exp(x); 
xmin=-1;
xmax=1;

n=6;
X=linspace(xmin,xmax,n+1);
Y=f(X);

plot(X,Y,"o","MarkerFaceColor","y","MarkerSize",10);
hold on;


x_graf=linspace(xmin,xmax,100);
P_graf=NDD(X,Y,x_graf);
plot(x_graf,P_graf,"--r","LineWidth",5);
grid on
plot(x_graf,f(x_graf),"b","LineWidth",4);
legend("puncte de interpolare (x(i), y(i))","polinomul y=P_n(x)","functia y=f(x)","location","NorthOutside")
figure(2)
plot(x_graf,abs(P_graf-f(x_graf)),"LineWidth",5);
legend("eroarea de interpolare |f(x)-P_n(x)|");


