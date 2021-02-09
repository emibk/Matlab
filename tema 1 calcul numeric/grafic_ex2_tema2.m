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
