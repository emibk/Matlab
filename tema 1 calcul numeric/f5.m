function[s10,s20,s30,ea10,ea20,ea30,er10,er20,er30,nr]=f5(s)
s=3/4;
ermax=3/100;
s10=0;
s20=0;
s30=0;
nr=1;
k=1;
sn=0;
for i=1:10
    s10=s10+i/3^i;
end
for i=1:20
    s20=s20+i/3^i;
end
for i=1:30
    s30=s30+i/3^i;
end
ea10=abs(s-s10);
ea20=abs(s-s20);
ea30=abs(s-s30);
er10=ea10/abs(s)*100;
er20=ea20/abs(s)*100;
er30=ea30/abs(s)*100;
fprintf('s10=');
disp(s10);
fprintf('s20=');
disp(s20);
fprintf('s30=');
disp(s30);
fprintf('ea10=');
disp(ea10);
fprintf('ea20=');
disp(ea20);
fprintf('ea30=');
disp(ea30);
fprintf('er10= ');
disp(er10);
fprintf('er20=');
disp(er20);
fprintf('er30=');
disp(er30);
while k
    sn=sn+nr/3^nr;
    if abs(s-sn)/abs(s)<=ermax
        k=0;
    end
    nr=nr+1;
end
fprintf('nr. minim de termeni astfel incat er sa nu depaseasca 3%% este:')
disp(nr-1);