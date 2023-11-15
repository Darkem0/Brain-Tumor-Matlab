function  [S_O]=FSY_Eta(Data)
% X-> % Özelliklerin %20'sini seçer.
    [Sa Su]=size(Data);
    Eta_Score=[linspace(1, Su-1, Su-1)' linspace(0, 0, Su-1)'];
    for i=1:Su-1
        S=[Data(:,i) Data(:,end)];
        % Eta Korelasyon Katsayýsý Hesaplamasý
        Eta_Score(i,2)=Eta_kor(S);
    end
    Eta_Score=sortrows(Eta_Score,2,'descend');
%     T_Eta=toc;
    %% Seçilecek özelliklerin belirlenmesi
    % %x özellikler seçilecektir.
    a=0;
    for x=5:5:100
        a=a+1;
        N=round(x*(Su-1)/100);
        Et_Score=Eta_Score(1:N,:);
        Et_Score=sortrows(Et_Score);
        S_O{a,1}=[Data(:,Et_Score(:,1)) Data(:,end)];
        S_O{a,2}=x;
        S_O{a,3}=N;
    end
end