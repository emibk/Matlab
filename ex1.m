clear all
X=[0,1,3,6];
Y=[18,10,-18,90];

plot(X,Y,"o","MarkerFaceColor","y","MarkerSize",10);
hold on;


x_graf=linspace(0,6,100);
P_graf=NDD(X,Y,x_graf);
plot(x_graf,P_graf,"--r","LineWidth",5);
grid on
plot(x_graf,y_graf,"b","LineWidth",4);
legend("puncte de interpolare (x(i), y(i))","polinomul y=P_n(x)","functia y=f(x)","location","NorthOutside")
figure(2)
plot(x_graf,abs(P_graf-y_graf),"LineWidth",5);
legend("eroarea de interpolare |f(x)-P_n(x)|");