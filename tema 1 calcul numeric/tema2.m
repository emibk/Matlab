% tema 2 pct a
f=@(x)sin(x)-exp(-x);
x=linspace(0,10,100);
y=f(x);
plot(x,y,'Linewidth',3)
hold on
grid on
for i=1:length(x)
    y(i)=f(x(i));
end
plot(x,y,'.','markersize',5)
title('Functie definita pe ramuri. ','FontAngle','italic', 'FontName','Times New Roman','FontSize',15,'Color','k')
xlabel('x','FontAngle','italic','FontName','Times New Roman','FontSize',20,'Color','k')
ylabel('y','FontAngle','italic','FontName','Times New Roman','FontSize',20,'Color','k')
grid on
legend('pb2(x)','Location','North')


% tema 2 pct b
type('MetSecantei');


type('MetPozFalse');

% Problema d Tema 2
f=@(x)sin(x)-exp(-x);
x=linspace(0,10,100);
y=f(x);
plot(x,y,'Linewidth',3)
hold on
grid on
[interval]=cautainterval(f,0,10,50)
for i=1: size(interval,1)
    x1=interval(i,1)
    x2=interval(i,2)
    fill([x1 x1 x2 x2 x1],[-0.3,0.3,0.3,-0.3,-0.3],[0.7 0.3 0.9 0.5 0.7])
    r(i)=MetSecantei(f,x1,x2,x1,x2,10^(-3));
end
plot(r,f(r),'o','Markerfacecolor','y','Markersize',10)

% Problema e Tema 2
f=@(x)sin(x)-exp(-x);
x=linspace(0,10,100);
y=f(x);
plot(x,y,'Linewidth',3)
hold on
grid on
[interval]=cautainterval(f,0,10,50)
for i=1: size(interval,1)
    x1=interval(i,1)
    x2=interval(i,2)
    fill([x1 x1 x2 x2 x1],[-0.3,0.3,0.3,-0.3,-0.3],[0.7 0.3 0.9 0.5 0.7])
    r(i)=MetPozFalse(f,x1,x2,10^(-3));
end
plot(r,f(r),'o','Markerfacecolor','y','Markersize',10)