function [dengeli] = veri_dengeleme(data)
% data = PPG_HRV ;
% data=QRS;
Son=size(data,2);
data=sortrows(data,Son);
A = tabulate(data(:,end));
sinif_1 = data(1:A(1,2),:) ;
sinif_2 = data(A(1,2)+1:end,:) ;
% tabulate(sinif_1(:,end))
% tabulate(sinif_2(:,end))


% Dengelenecek sýnýfýn belirlenmesi
if A(1,2)>A(2,2)
    dengesiz_veri = sinif_1;
    D = 0 ;
else if A(1,2)<A(2,2)
        dengesiz_veri = sinif_2;
        D = 1 ;
    end
end

% Örneklem yüzdesinin hesaplanmasý
if D == 1
    ornekyuzde = A(1,2)/A(2,2)*100 ;
else if D == 0
        ornekyuzde = A(2,2)/A(1,2)*100 ;
    end
end

%% Dengeleme
N =  length(dengesiz_veri) ;
n = floor(N*ornekyuzde/100) ;
% n = orneklem, N adet örnekten seçilecek yüzdelik miktarý miktarýný temsil eder.
% Devir sayýsýnýn hesaplanmasý
d = round(N/n) ; 
% Baþlangýç sayýsý (a)
a = 1 ;
% Seçileceklerin tespit edilmesi
for i=1:n
    sec(i,:) = a+d*(i-1) ;
end
x = find(sec>N) ;
if size(x)~=0
    x = sort(x) ;
    sec(x(1):end) = sec(x(1):end)-N ;
end
dengeli_veri = dengesiz_veri(sec,:) ;

if D == 0
    dengeli_1 = dengeli_veri;
    dengeli_2 = sinif_2;
else if D == 1
        dengeli_1 = sinif_1;
        dengeli_2 = dengeli_veri;
    end
end

dengeli = [dengeli_1 ; dengeli_2] ;
end
        