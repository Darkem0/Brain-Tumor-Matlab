%% Veri Çekme
close all; clear; clc;
cd ..\a_Data\b_Matlab
load Data
cd ..\..\b_Kod\
%% Filtre
H_average = fspecial('average', 3); % Ortalama 
H_blur = fspecial('gaussian', [5, 5], 2); % Bulanıklık 
H_sharpen = fspecial('unsharp'); % Keskinleştirme 
% Diğer filtre kombinasyonlarını tanımlayın
L_G=length(Etiket);
for i=1:L_G
    Goruntu{i,1}=G{i,1}; % Orjinal Goruntu
    Goruntu{i,2} = imfilter(G{i,1},H_average,'replicate'); % Average 
    Goruntu{i, 3} = imfilter(G{i,1}, H_blur, 'replicate'); %blur
    Goruntu{i, 4} = imfilter(G{i,1}, H_sharpen, 'replicate');%keskin
    Goruntu{i, 5} = imfilter(Goruntu{i,2}, H_blur, 'replicate');%ort blur
    Goruntu{i,6} = imfilter(Goruntu{i,2}, H_sharpen, 'replicate'); % ortalama, keskin
    Goruntu{i,7} = imfilter(Goruntu{i,4}, H_average, 'replicate'); % keskin, ortalama
    Goruntu{i,8} = imfilter(Goruntu{i,3}, H_average, 'replicate'); % blur, ortalama
    Goruntu{i,9} = imfilter(Goruntu{i,3}, H_sharpen, 'replicate'); % blur,keskin
    Goruntu{i,10} = imfilter(Goruntu{i,4}, H_blur, 'replicate'); % keskin, blur
    Goruntu{i,11} = imfilter(Goruntu{i,6}, H_blur, 'replicate'); % ortalama, keskin, blur,
    Goruntu{i,12} = imfilter(Goruntu{i,9}, H_average, 'replicate'); % blur, keskin, ortalama
    Goruntu{i,13} = imfilter(Goruntu{i,10}, H_average, 'replicate'); % keskin, blur, ortalama
    Goruntu{i,14} = imfilter(Goruntu{i,8}, H_sharpen, 'replicate'); % blur, ortalama, keskin
    Goruntu{i,15} = imfilter(Goruntu{i,7}, H_blur, 'replicate'); % keskin, ortalama, blur
end

clearvars -except Goruntu Etiket

cd ..\a_Data\c_Filtreli
save("Data.mat", '-v7.3');
cd ..\..\b_Kod
