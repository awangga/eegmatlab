function maxdiagram = getmaxofmean(namafile,samplingfreq,detikawal,detikakhir,highpass,lowpass)
%mencari nilai amplitudio maksimal dari rata rata
% cara make : getmaxofmean(namafile,samplingfreq,detikawal,detikakhir,highpass,lowpass)
data_awal = load(namafile);
%ganti reference ke Cz
data_awal=ft_preproc_rereference(data_awal,10)

%konversi ke row data
rowawal = detikawal*samplingfreq; 
rowakhir = detikakhir*samplingfreq;


data_awal_t=transpose(data_awal(rowawal:rowakhir,:));

test=ft_preproc_baselinecorrect(data_awal_t); %baseline correct
hasil=ft_preproc_bandpassfilter(test,samplingfreq,[highpass lowpass]);%bandpass filter
hasil_a=transpose(hasil);

[c,l] = wavedec(hasil(1,:),5,'db5'); %wavelet
Fp1= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(2,:),5,'db5'); %wavelet
Fp2= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(3,:),5,'db5'); %wavelet
F7= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(4,:),5,'db5'); %wavelet
F3= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(5,:),5,'db5'); %wavelet
Fz= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(6,:),5,'db5'); %wavelet
F4= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(7,:),5,'db5'); %wavelet
F8= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(8,:),5,'db5'); %wavelet
T3= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(9,:),5,'db5'); %wavelet
C3= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(10,:),5,'db5'); %wavelet
Cz= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(11,:),5,'db5'); %wavelet
C4= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(12,:),5,'db5'); %wavelet
T4= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(13,:),5,'db5'); %wavelet
T5= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(14,:),5,'db5'); %wavelet
P3= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(15,:),5,'db5'); %wavelet
Pz= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(16,:),5,'db5'); %wavelet
P4= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(17,:),5,'db5'); %wavelet
T6= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(18,:),5,'db5'); %wavelet
O1= wrcoef('a',c,l,'db5',5);
[c,l] = wavedec(hasil(19,:),5,'db5'); %wavelet
O2= wrcoef('a',c,l,'db5',5);

Frontal=[Fp1;F3;F7;F4;Fz;F8];
Central=[Cz;C3;C4];
Temporal=[T3;T4;T5;T6];
Parietal_Ocipital=[O1;O2;Pz;P4;P3];

Hasil_PO=mean(Parietal_Ocipital);
Hasil_C=mean(Central);
Hasil_T=mean(Temporal);
Hasil_F=mean(Frontal);

Hasil_PO=max(Hasil_PO);
Hasil_C=max(Hasil_C);
Hasil_T=max(Hasil_T);
Hasil_F=max(Hasil_F);

maxdiagram=[Hasil_C;Hasil_F;Hasil_PO;Hasil_T];