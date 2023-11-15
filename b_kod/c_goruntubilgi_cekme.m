%% Görüntü kanallarının ayrıştırılması
close all; clear; clc;
cd ..\a_Data\c_Filtreli
load Data
cd ..\..\b_Kod\
%% Goruntulerin Çekilmesi
L_G = length(Etiket);

    for i = 2601:L_G
        Matris{i,1} = im2double(Goruntu{i,1});
        Matris{i,2} = im2double(Goruntu{i,2});
        Matris{i,3} = im2double(Goruntu{i,3});
        Matris{i,4} = im2double(Goruntu{i,4});
        Matris{i,5} = im2double(Goruntu{i,5});
        Matris{i,6} = im2double(Goruntu{i,6});
        Matris{i,7} = im2double(Goruntu{i,7});
        Matris{i,8} = im2double(Goruntu{i,8});
        Matris{i,9} = im2double(Goruntu{i,9});
        Matris{i,10} = im2double(Goruntu{i,10});
        Matris{i,11} = im2double(Goruntu{i,11});
        Matris{i,12} = im2double(Goruntu{i,12});
        Matris{i,13} = im2double(Goruntu{i,13});
        Matris{i,14} = im2double(Goruntu{i,14});
        Matris{i,15} = im2double(Goruntu{i,15});
    end

clearvars -except Matris Etiket
%% Kayıt
cd ..\a_Data\d_Matris\
save("Data4.mat",'-v7.3');
cd ..\..\b_Kod
