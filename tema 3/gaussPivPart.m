function [x] = gaussPivPart(A,b)
%gaussPivPart rezolva sisteme patratice

%Synopsis: [x] = gaussPivPart(A,b)

%Input: A = matricea asociata sistemului
%       b = vectorul termenilor liberi

%Output: x = solutia sistemului

%------Verificare matrice patratica------
[n,m]=size(A);
if n~=m
    error('Matricea nu este patratica')
    x=[];   %x este un vector de dimensiune 0
    return
end

[n1,m1]=size(b);
if m1~=1
    b=transpose(b);
end

nr=length(b);
if n~=nr
    error('Vectorul b nu are aceeasi dimensiune cu matricea A')
    x=[];
    return
end

%------Matricea extinsa------
A=[A,b];

for k=1:n-1
    max=abs(A(k,k));
    p=k;
    for j=k:n
        if abs(A(j,k))>max
            max=abs(A(j,k));
            p=j;
        end
    end
    if max==0
        error('Sistemul nu admite solutie unica')
        x=[];
        return
    end
    if p~=k
        A([p,k],:)=A([k,p],:);
    end
    for l=k+1:n
        mlk=A(l,k)/A(k,k);
        A(l,:)=A(l,:)-mlk*A(k,:);
    end
end

if A(n,n)==0
    error('Sistemul nu admite solutie unica')
    x=[];
    return
end

x=subsDesc(A(:,1:m),A(:,m+1));
end