%% EX 1

X=[0 1 3 6];
Y=[18 10 -19 90];
P=0;
syms x;
for i=1:length(X)
    Ln=1;
    for k=1:length(X)
        if k~=i
            Ln=Ln*((x-X(k))/(X(i)-X(k)));
            figure(i);
            ezplot(Ln,[0 6])
            P=P+Ln*Y(i);
        end
    end
end
figure(length(X)+1);
plot(X,Y,"o","MarkerFaceColor","y","MarkerSize",10);

