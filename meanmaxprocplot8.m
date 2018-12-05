function [] = meanmaxprocplot8(namafile,ket,jenisgaris,judul,samplingfreq,detikawal,detikakhir,highpass,lowpass)
%mengeloah 8 data
%cara pakai : meanmaxprocplot8(namafile,ket,jenisgaris,judul,samplingfreq,detikawal,detikakhir,highpass,lowpass)

obj1 = getmaxofmean(char(namafile(:,1)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj2 = getmaxofmean(char(namafile(:,2)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj3 = getmaxofmean(char(namafile(:,3)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj4 = getmaxofmean(char(namafile(:,4)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj5 = getmaxofmean(char(namafile(:,5)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj6 = getmaxofmean(char(namafile(:,6)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj7 = getmaxofmean(char(namafile(:,7)),samplingfreq,detikawal,detikakhir,highpass,lowpass);
obj8 = getmaxofmean(char(namafile(:,8)),samplingfreq,detikawal,detikakhir,highpass,lowpass);



plothasil8(obj1,char(ket(:,1)),obj2,char(ket(:,2)),obj3,char(ket(:,3)),obj4,char(ket(:,4)),obj5,char(ket(:,5)),obj6,char(ket(:,6)),obj7,char(ket(:,7)),obj8,char(ket(:,8)),jenisgaris,judul)

%input=[obj1 obj2 obj3 obj4 obj5 obj6 obj7 obj8]