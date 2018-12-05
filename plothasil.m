function hasilplot = plothasil(obj1,obj1nama,obj2,obj2nama,obj3,obj3nama,obj4,obj4nama,obj5,obj5nama,obj6,obj6nama,obj7,obj7nama,obj8,obj8nama,plottitle)
%plotting result to xy
% cara pakai plothasil(obj1,obj1nama,obj2,obj2nama,obj3,obj3nama,obj4,obj4nama,obj5,obj5nama,obj6,obj6nama,obj7,obj7nama,obj8,obj8nama,plottitle)
%https://www.mathworks.com/help/matlab/ref/linespec.html

plot(obj1,'--+','DisplayName',obj1nama);
title(plottitle);
xlabel('Posisi Elektroda')
ylabel('Amplitudo')
xticklabels({'Central','','Frontal','','Parietal Ocipital','','Temporal'})
hold on;
plot(obj2,'--or','DisplayName',obj2nama);
plot(obj3,'-x','DisplayName',obj3nama);
plot(obj4,':<','DisplayName',obj4nama);
plot(obj5,'-.>','DisplayName',obj5nama);
plot(obj6,'--s','DisplayName',obj6nama);
plot(obj7,'--*','DisplayName',obj7nama);
plot(obj8,'--h','DisplayName',obj8nama);
legend
hold off;

saveas(gcf,plottitle,'png')
