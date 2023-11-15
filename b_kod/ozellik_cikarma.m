%% Görüntü kanallarının ayrıştırılması
close all; clear; clc;
cd ..\a_Data\d_Matris
load Data4
cd ..\..\b_Kod\
%% Özellik Çıkarma

for i=2601:3000
    for j=1:size(Matris,2)
        Ozellik{i,j} = Ozellik_Cikarimi(Matris{i,j});
    end
end
%% Silme
clearvars -except Ozellik Matris

%% Kayıt
cd ..\a_Data\e_Ozellik_Cikarma
save("Data4.mat",'-v7.3');
cd ..\..\b_Kod