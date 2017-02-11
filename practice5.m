%%practice5
rows=3;
columns=5;
numbers=zeros(rows,columns);
for i=1:rows
    for j=1:columns
        numbers(i,j)=j;
        
    end
   
end
%%preallocation
save('my_data')
x=1:5
y=2:6
fid=fopen('my_other_data.txt','w')
for i=1:length(x);
fprintf(fid, '%d\t%d\r\n',x(i),y(i));
end