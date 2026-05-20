# Çalışan Denetleme Sistemi (Workforce Management System)

Bu proje; çalışanların durumlarını, aktivitelerini ve yönetim süreçlerini takip etmek amacıyla Node-RED ve MySQL kullanılarak geliştirilmiş uçtan uca bir çalışan denetleme sistemidir. Akış tabanlı backend mimarisi sayesinde veriler anlık olarak işlenir ve izleme panelinde (Dashboard) gösterilir.

##  Kullanılan Teknolojiler
* **Node-RED:** Backend mantığı, API uç noktaları ve yönetim paneli tasarımı için.
* **MySQL:** Çalışan kayıtları, loglar ve sistem verilerinin güvenli şekilde saklanması için.
* **Node-RED Dashboard:** Gerçek zamanlı verileri görselleştirmek ve kullanıcı arayüzü sağlamak için.

##  Proje İçeriği
* `Calisan_Denetleme_Uygulamasi.json`: Tüm Node-RED akışlarını, veritabanı entegrasyonlarını ve arayüz bileşenlerini içeren ana kod dosyası.
* `Calisan_Denetleme_Uygulamasi.sql`: Projenin çalışması için gerekli tablo yapılarını ve örnek şemayı barındıran MySQL veritabanı yedek dosyası.

---

##  Yerel Bilgisayarda Kurulum ve Çalıştırma Rehberi

Bu projeyi kendi bilgisayarınızda test etmek ve çalıştırmak için aşağıdaki adımları sırasıyla takip edebilirsiniz:

### 1. Ön Gereksinimler
Bilgisayarınızda aşağıdaki teknolojilerin kurulu olduğundan emin olun:
* **Node.js** (LTS sürümü tavsiye edilir)
* **MySQL Server** (XAMPP, WAMP, MySQL Workbench veya Docker üzerinde çalışabilir)

### 2. Veritabanının Hazırlanması
1. MySQL yönetim panelinizi (örneğin phpMyAdmin veya MySQL Workbench) açın.
2. `workforce_db` (veya dilediğiniz başka bir isimde) yeni ve boş bir veritabanı oluşturun.
3. Oluşturduğunuz veritabanını seçip **İçeri Aktar (Import)** sekmesine gidin.
4. Bu depodan indirdiğiniz `Calisan_Denetleme_Uygulamasi.sql` dosyasını seçerek içeri aktarma işlemini başlatın. Tabloların başarıyla yüklendiğinden emin olun.

### 3. Node-RED Kurulumu ve Başlatılması
1. Komut İstemi (Terminal) ekranını açın ve Node-RED'i global olarak başlatmak için şu komutu yazın:
   ```bash
   node-red

   Terminalde Server now running at http://127.0.0.1:1880/ uyarısını gördükten sonra tarayıcınızdan http://localhost:1880 adresine gidin.

4. Eksik Eklentilerin (Node) Yüklenmesi
Projenin sorunsuz çalışması için akışta kullanılan harici kütüphanelerin Node-RED'e eklenmesi gerekir:

Node-RED arayüzünde sağ üstteki menü butonuna (üç çizgi) tıklayıp Manage palette (Paleti Yönet) seçeneğini seçin.

Install sekmesine gelin.

Arama çubuğuna aşağıdaki modülleri sırasıyla yazarak install butonuna basın:

node-red-node-mysql (MySQL bağlantısı için)

node-red-dashboard (Arayüz bileşenleri için)

Yükleme tamamlandıktan sonra pencereyi kapatabilirsiniz.

5. Projenin İçe Aktarılması (Import)
Sağ üstteki menü butonuna tıklayıp Import (İçe Aktar) seçeneğini seçin.

select a file to import butonuna basarak bu depodan indirdiğiniz Calisan_Denetleme_Uygulamasi.json dosyasını seçin ve Import deyin.

Tüm akışlar ve paneller ekranınıza gelecektir.

6. Veritabanı Bağlantı Ayarlarının Güncellenmesi
Akış ekranında üzerinde MySQL ikonu bulunan veritabanı düğümlerini (node) bulun.

Herhangi bir MySQL düğümüne çift tıklayın.

Kalem (düzenle) ikonuna tıklayarak açılan bağlantı ayarlarında:

Host: localhost ya da 127.0.0.1

User: Kendi MySQL kullanıcı adınız (Genelde root)

Password: Kendi MySQL şifreniz

Database: İkinci adımda oluşturduğunuz veritabanı adı (workforce_db)

Ayarları kaydedip (Update/Done) çıkın.

7. Sistemi Canlıya Alma
Sağ üst köşede bulunan kırmızı renkli Deploy butonuna tıklayın.

Sisteminiz artık yerel olarak çalışmaktadır!

Kullanıcı panelini (Dashboard) görüntülemek için tarayıcınızdan şu adrese gidin:
http://localhost:1880/dashboard/login
