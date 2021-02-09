function[b]=f4(a)
for i=1:length(a)
    b(length(a)-i+1)=a(i);
end
disp(b)