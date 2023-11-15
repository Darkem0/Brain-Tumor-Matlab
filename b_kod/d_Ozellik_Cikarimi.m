function [Ozellikler] = Ozellik_Cikarimi(data)
%% %% Örnek ECG sinyali ile Sinyalden özellik çýkarýmý
% close all ; clear ; clc ;
% load data3
%% Sabitler
L=size(data,2);
S=size(data,1);
%% Sinyale ait istatistiki özellikler
% Basýklýk
for i = 1:L
Basiklik(i,:) = kurtosis(data(:,i)) ;
end
% Çarpýklýk
for i = 1:L
Carpiklik(i,:) = skewness(data(:,i)) ;
end
% Çeyrekler arasý geniþlik "iq=Interquartile range"
for i = 1:L
IQR(i,:) = iqr(data(:,i)) ;
end
% Deðiþim Katsayýsý
% DK = standartsapma/aritmetik_ortalama * 100 formülü ile hesaplanýr.
for i=1:L
DK(i,1) = std(data(:,i)) / mean(data(:,i)) * 100 ;
end
% Geometrik ortalama
for i = 1:L
Geometrik(i,:) = geomean(abs(data(:,i))) ;
end
% Harmonik ortalama
for i = 1:L
Harmonik(i,:) = harmmean(data(:,i)) ;
end
% Hijort Aktivite Katsayýsý
for i = 1:L
HijortA(i,:) = var(data(:,i)) ;
end
% Hijort Hareketlilik Katsayýsý
for i = 1:L
HijortH(i,:) = sqrt(var(polyder(data(:,i)))/ ...
    var(data(:,i))) ;
end
% Hijort Karmaþýklýk Katsayýsý
for i = 1:L
HijortK(i,:) =(sqrt(var(polyder((polyder(data(:,i))))/ ...
    var(data(:,i))))) / (sqrt(var(polyder(data(:,i)))/ ...
    var(data(:,i)))) ;
end
% Maksimum
for i = 1:L
Maksimum(i,:) = max(data(:,i)) ;
end
% Medyan
for i = 1:L
Median(i,:) = median(data(:,i)) ;
end
% Medyan, Mutlak Sapma
for i = 1:L
MAD(i,:) = mad(data(:,i)) ;
end
% Minimum
for i = 1:L
Minimum(i,:) = min(data(:,i)) ;
end
% Moment, Merkezi Moment
for i = 1:L
Moment(i,:) = moment(data(:,i),10) ;
end
% Ortalama
for i = 1:L
Ortalama(i,:) = mean(data(:,i)) ;
end
% Ortalama Eðri Uzunluðu CL
for j=1:L
    for i=2:S
        CL_ara(i,j) = abs(data(i,1)-data(i-1,j));
    end
    CL(j,1) = (1/S)*sum(CL_ara(i,j));
end
% Ortalama Enerji
for i = 1:L
Ortalama_E(i,:) = sum((data(:,i).^2))/S ;
end
% Ortalama Karakök RMS deðeri
for i = 1:L
RMS(i,:) = rms(data(:,i)) ;
end
%Standart hata
% Standart hata = standart_sapma / Kök(N) formülüyle hesaplanýr.
for i=1:L
StandartHata(i,1) = std(data(:,i)) / sqrt(L);
end
% Standart Sapma
for i = 1:L
StandartSapma(i,:) = std(data(:,i)) ;
end
% Þekil Faktörü
for j=1:L
    for i=1:S
        T(i,j)=sqrt(abs(data(i,j)));
    end
    T1(j,1) = 1/L*sum(T(:,j));
end
SF = RMS./T1;
% Tekil Deðer Ayrýþýmý
for i = 1:L
SVD(i,:) = svd(data(:,i)) ;
end
% "%25" için Trimmed Mean deðeri
for i = 1:L
Trim_25(i,:) = trimmean(data(:,i),25) ;
end
% "%50" için Trimmed Mean deðeri
for i = 1:L
Trim_50(i,:) = trimmean(data(:,i),50) ;
end
%% 5 Ortalama Teager Enerjisi
for z=1:L
    E=data(:,z);
    for i=3:S
        TE_ara(i) = (E(i-1)).^2 - (E(i)*E(i-2)) ;
    end
    TE(z,:) = mean((1/L)*sum(TE_ara)) ;
end
%% Özellikler
Ozellikler = [Basiklik Carpiklik IQR DK Geometrik Harmonik HijortA ...
    HijortH HijortK Maksimum Median MAD Minimum Moment Ortalama CL ...
    Ortalama_E RMS StandartHata StandartSapma SF SVD Trim_25 Trim_50 ...
    TE];
end