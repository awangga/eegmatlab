function hasilplot = plothasil2(obj1,obj1nama,obj2,obj2nama,plottitle)
%plotting result to xy
% cara pakai plothasil(obj1,obj1nama,obj2,obj2nama,plottitle)
%https://www.mathworks.com/help/matlab/ref/linespec.html
plot(obj1,'--+','DisplayName',obj1nama);
title(plottitle);
xlabel('Posisi Elektroda')
ylabel('Amplitudo')
xticklabels({'Central','','Frontal','','Parietal Ocipital','','Temporal'})
hold on;
plot(obj2,'--or','DisplayName',obj2nama);
legend
hold off;
saveas(gcf,plottitle,'png')