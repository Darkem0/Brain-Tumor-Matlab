# Brain-Tumor-Matlab

> **Eski eğitim çalışmasıdır — klinik bir sistem değildir.**

Bu depo, MATLAB ile hazırlanmış bir görüntü-sınıflandırma eğitim çalışmasını korur. Tarihsel betikler görüntü önişleme, elle tasarlanmış öznitelik çıkarımı ve seçimi ile sınıf dengeleme yaklaşımlarını içerir. Depo bir öğrenme çıktısı olarak saklanır; güncel tıbbi yapay zekâ çalışması olarak sunulmaz.

**Bu yazılım tıbbi cihaz, klinik karar destek aracı, tanı desteği veya hastalık tespiti/sınıflandırması için doğrulanmış bir yöntem değildir. Hasta bakımı, triyaj, tarama veya tıbbi kararlar için kullanılmamalıdır.**

[English README](README.md)

## Depo içeriği

- `b_kod/` — tarihsel MATLAB betikleri ve fonksiyonları.
- `b_Kod[609].zip` — köken bilgisi için değiştirilmeden tutulan özgün arşiv malzemesi.
- `docs/PROVENANCE.md` — korunan materyal hakkında bilinenler.
- `docs/LIMITATIONS.md` — önemli teknik, veri ve güvenlik sınırlamaları.

Özgün Git geçmişi ile niteliği bilinmeyen arşiv/ikili materyal bilinçli olarak korunur. Bunlar doğrulanmış veri kümesi, model çıktısı veya yeniden üretilebilir klinik kanıt olarak yorumlanmamıştır.

## Tarihsel akış

Betikler yerel bir veri düzenine başvurur; görüntüleri yükler, filtre uygular, tasarlanmış öznitelikler çıkarır, öznitelik seçimi yapar ve sınıfları dengeler. Bu tarihsel bir kod yoludur; uçtan uca doğrulanmış bir yeniden üretim değildir.

Betikler depo dışında bulunan verileri bekler (örneğin `a_Data/` altındaki yollar). Depoya hiçbir veri kümesi eklenmemiş veya yeniden dağıtılmamıştır. Herhangi bir yeniden kullanım öncesinde veri hakları, kökeni, onamı, etiket kalitesi ve önişleme geçmişi bağımsız olarak doğrulanmalıdır.

## Tarihsel betikleri çalıştırma

Depo şu an desteklenen tek komutluk bir demo sunmaz. Tarihsel kodu inceleyecekseniz:

1. Yalnızca erişim ve kullanım hakkına sahip olduğunuz ayrı bir yerel veri kopyası kullanın.
2. Çalıştırmadan önce tüm yol ve etiket varsayımlarını inceleyin.
3. MATLAB sürümü ile gerekli eklentileri kendi ortamınızda doğrulayın.
4. Çıktıları yalnızca keşif amaçlı kabul edin; klinik geçerlilik, model performansı veya genellenebilirlik sonucu çıkarmayın.

Korunan betiklerdeki bazı yorumlar bu belgeden önce yazılmıştır ve tarihsel ifade ya da eski kodlama içerebilir. Kamuya açık belgeler UTF-8 olarak korunur; tarihsel kaynak sessizce yeniden yazılmamıştır.

## Kapsam ve bakım

Bu depo doğruluk, duyarlılık, özgüllük, dayanıklılık, adillik veya klinik performans iddiası içermez. Test, hakları temiz bir klinik-dışı örnek veya yeniden üretilebilirlik belgesi ekleyen katkılar, ancak yukarıdaki sınırlamaları koruduğu sürece uygundur.

Çalışmadan önce [köken bilgisi](docs/PROVENANCE.md) ve [sınırlamalar](docs/LIMITATIONS.md) belgelerini okuyun.
