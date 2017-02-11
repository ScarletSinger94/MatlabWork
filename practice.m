%get(0,'screensize');
%p1=get(0,'pointerlocation');
%set(0,'pointerlocation',[700 300]);

sc=get(0,'screensize');
h=figure;

set(h,'position',[350,300 400 550]);
set(h,'menubar','none');

figure(2);
set(2,'pointer', 'crosshair')
set(gca, 'xtick', [2 4 6 8 10])
ht=text(2,8,'graph 1');
set(ht, 'fontsize',18);
set(h,'menubar','none');
%delete(gca)
