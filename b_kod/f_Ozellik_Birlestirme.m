%% Görüntü kanallarının ayrıştırılması
close all; clear; clc;
cd ..\a_Data\f_birlestir\
load Data
cd ..\..\b_Kod\

%% Özellik Çıkarma
L_M=length(Etiket);
Ozellikler=[];
for i=1:L_M
    Gecici=[Ozellik{i,1} Ozellik{i,2} Ozellik{i,3} ...
        Ozellik{i,4} Ozellik{i,5} Ozellik{i,6} ...
        Ozellik{i,7} Ozellik{i,8} Ozellik{i,9} ...
        Ozellik{i,10} Ozellik{i,11} Ozellik{i,12} ...
        Ozellik{i,13} Ozellik{i,14} Ozellik{i,15} ...
        ];
    Ozellikler=[Ozellikler; Gecici];
%     clearvars Gecici
end

%% Matris Birleştirme
Ozellikler = [Ozellikler Etiket];

%% Silme
 clearvars -except Ozellikler Etiket

%% Kayıt
cd ..\a_Data\g_Ozellik_Birlestir
save("Data.mat",'-v7.3');
cd ..\..\b_Kod