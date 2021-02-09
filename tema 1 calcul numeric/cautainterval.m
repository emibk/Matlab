function [ interval ] = cautainterval( f,a,b,N )

x=linspace(a,b,N+1)
y=f(x);
k=0;
for i=1:length(x)-1
    if y(i)*y(i+1)<0
        k=k+1;
        interval(k,1)=x(i);
        interval(k,2)=x(i+1);
    elseif y(i)==0
        warning('Modificati parametrul N')

end
if y(N+1)==0
    warning('Modificati parametrul N');
end

end

