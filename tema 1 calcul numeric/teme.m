%% EX 1, TEMA 1
a=1;b=4;c=2;
ec2(a,b,c);
a=2;b=4;c=2;
ec2(a,b,c);
a=1;b=-1;c=2;
ec2(a,b,c);
type('ec2');

%% EX 2, TEMA 1
f2(0.5)

f2(2.5)

x=linspace(-2,6,1000);
for i=1:length(x)
    y(i)=f2(x(i));
end
plot(x,y,'.','markersize',5)
title('Functie definita pe ramuri. ','FontAngle','italic', 'FontName','Times New Roman','FontSize',15,'Color','k')
xlabel('x','FontAngle','italic','FontName','Times New Roman','FontSize',20,'Color','k')
ylabel('y','FontAngle','italic','FontName','Times New Roman','FontSize',20,'Color','k')
grid on
legend('pb2(x)','Location','North')

%% EX 3, TEMA 1
a = [-1 4 2 4 4 -1 0 2 3 0];
fprintf('Maximul din vector este ');
f3(a);
type('f3');

%% EX 4, TEMA 1
a = [6 7 8 9 10]
fprintf('Noul vector este ');
f4(a);
type('f4');

%% EX 5, TEMA 1
f5(3/4);
type('f5');

%% PCT A, TEMA 2
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
    r(i)=met_bis(f,x1,x2,10^(-3));
end
plot(r,f(r),'o','Markerfacecolor','y','Markersize',10)

%% PCT B, TEMA 2
type('MetSecantei');

%% PCT C, TEMA 2
type('MetPozFalse');

%% PCT D, TEMA 2
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

%% PCT E, TEMA 2
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