%% Veri Çekme
close all; clear; clc;
% Goruntu Klasörüne Giri   
cd ..\a_Data\a_Ham\
%% Klasör içi okuma
Klasor=dir;
L_Klasor=length(Klasor); 
a=0;
Veri_Dagilim=zeros(L_Klasor-2,2);
for i=3:L_Klasor
    cd(Klasor(i).name)
    %% Fotoların Çekilmesi
    Foto = dir;
    L_Foto=length(Foto);
    for j=3:L_Foto
        a=a+1;
        [G{a,1} ] = imread(Foto(j).name);
        if Foto(j).name(1)=='y'
            Etiket(a,1)=1; % Hasta
            Veri_Dagilim(i-2,1)=Veri_Dagilim(i-2,1)+1;
        elseif Foto(j).name(1)=='n'
            Etiket(a,1)=2; % Sağlıklı
            Veri_Dagilim(i-2,2)=Veri_Dagilim(i-2,2)+1;
        end
    end
    cd ..
end
tabulate(Etiket)

%% Silme
% clearvars 

%% Kayıt
cd ..\b_Matlab
save Data
cd ..\..\b_Kod