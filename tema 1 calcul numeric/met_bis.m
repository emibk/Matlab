function [ xaprox ] = met_bis( f,A,B,eps )

a(1)=A;
b(1)=B;
x(1)=(a(1)+b(1))/2;
N=floor(log2((B-A)/eps));
for k=2: N 
    if(f(x(k-1))==0)
        x(k)=x(k-1);
       break;
    elseif f(x(k-1))*f(a(k-1))<0
            a(k)=a(k-1);
            b(k)=x(k-1);
            x(k)=(a(k)+b(k))/2;
    elseif f(x(k-1))*f(a(k-1))>0
        a(k)=x(k-1);
        b(k)=b(k-1);
        x(k)=(a(k)+b(k))/2;
        
    end
    xaprox = x(k);
end
        
                

end

