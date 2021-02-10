function [x] = gaussPivTot(A,b)
%GaussPivPart rezolva sisteme patratice

%Synopsis:      x=GaussPivTot(A,b)   

%Input:         A=matricea asociata sistemului
%               b=vectorul termenilor liberi

%Output:        x=solutia sistemului

%-----Verificare matrice patratica
[n,m]=size(A);
if n~=m
    error('Matricea nu este patratica');
    x=[];
    return
end
%-----Verific daca e vector coloana si daca nu e, il traspunem ca sa fie
[n1,m1]=size(b);
if m1~=1
    b=transpose(b);
end

nr=length(b);

if n~=nr
    warning('Vectorul nu are aceeasi dimensiune cu matricea A')
    x=[];
    return;
end

%construim matricea extinsa

A=[A,b];
for i=1:n
index(i)=i;
end
for k=1:n-1 
    max=-1;
    for i=k:n
        for j=k:n
            if abs(A(i,j))>max;
                max=abs(A(i,j));
                p=i;m=j;
            end
        end
    end
    if A(p,m)==0 
        warning('Sist incomp. sau comp. nedet')
        x=[];
        return
    end
    if p~=k
      A([p,k],:)=A([k,p],:);
    end
      if m~=k
          A(:,[m,k])=A(:,[k,m]);
          index([m,k])=index([k,m]);
      end
      
      for l=k+1:n
          M(l,k)=A(l,k)/A(k,k);
          A(l,k)=0;
          A(l,k+1:n+1)=A(l,k+1:n+1)-M(l,k)*A(k,k+1:n+1);
      end
end
 
    if A(n,n)==0
        warning('Sist. incomp. sau comp. nedet.');
        return
    end
    y=subsDesc(A(:,1:n),A(:,n+1));
    for j=1:n
        x(index(j))=y(j);
    end
end