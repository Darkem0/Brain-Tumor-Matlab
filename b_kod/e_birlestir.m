close all;
clear;
clc;
data_path = '..\a_Data\e_Ozellik_Cikarma\Data.mat';
output_dir = '..\a_Data\f_birlestir\'; % Dizin oluşturuldu

% Veriyi yükle
load(data_path, 'Ozellik', 'Etiket');
% Özellik Dönüşümü
%clearvars -except Ozellik
L_M = length(Etiket);
for i = 1:L_M
    for j = 1:15
        Ozellik{i,j}= mean(Ozellik{i,j});
       
    end
end

if ~exist(output_dir, 'dir')
    mkdir(output_dir);
end

% Kaydet
output_file = fullfile(output_dir, 'Data.mat');
save(output_file, '-v7.3', 'Ozellik', 'Etiket');

