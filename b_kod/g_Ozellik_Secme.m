%% Görüntü kanallarının ayrıştırılması
close all; clear; clc;
cd ..\a_Data\g_Ozellik_Birlestir
load Data
cd ..\..\b_Kod\

%% Özellik Seçme
[S_O]=FSY_Eta(Ozellikler);
L=length(S_O);
%% Denem Verisi
%Data = D_S_O{20,1};

%% Silme
clearvars -except S_O D_S_O

%% Kayıt
cd ..\a_Data\h_Ozellik_Secme
save("Data.mat",'-v7.3');
cd ..\..\b_Kod