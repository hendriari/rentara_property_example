# Rentara Property Example 🏡

Proyek ini dikembangkan sebagai bagian dari **Skill Test Assessment**. Aplikasi ini dirancang untuk menunjukkan implementasi fitur-fitur utama dalam aplikasi manajemen properti yang dibangun menggunakan framework Flutter dengan fokus pada performa dan skalabilitas.

## 🛠 Persiapan Sebelum Menjalankan Proyek

Agar aplikasi dapat berjalan dengan sebagaimana mestinya, mohon kesediaannya untuk mengikuti langkah-langkah berikut:

1. **Berkas Konfigurasi**: Silakan gunakan berkas konfigurasi (seperti `.env`) yang telah disediakan [disini](https://github.com/hendriari/rentara_property_example/releases/download/config/api.env).
2. **Penempatan Berkas**: Letakkan berkas tersebut pada **direktori akar** (root directory) proyek ini.
3. **Folder Config**: Jika terdapat berkas konfigurasi tambahan terkait environment, mohon untuk meletakkannya di dalam folder `config/`.

## 🚀 Langkah-langkah Menjalankan Proyek

1. **Clone Repository:**
   ```bash
   git clone https://github.com/your-username/rentara_property_clone.git
   ```

2. **Instalasi Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Kode Generasi (Penting):** Karena proyek ini menggunakan *code generation* untuk manajemen data (Freezed) dan Dependency Injection (Injectable), mohon jalankan perintah berikut terlebih dahulu:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Menjalankan Aplikasi:**
   ```bash
   flutter run
   ```

## 🏗 Arsitektur Proyek
Untuk menjaga keterbacaan dan kemudahan pemeliharaan kode, proyek ini menerapkan prinsip **Clean Architecture**:
- **Data Layer:** Bertanggung jawab atas pengelolaan API, DTO (Data Transfer Object), dan Mapper.
- **Domain Layer:** Berisi logika inti aplikasi (Entities & Use Cases).
- **Presentation Layer:** Mengelola tampilan UI serta state management menggunakan BLoC.

---

## 📱Download Aplikasi Release 
[download v.1.1.0 release](https://github.com/hendriari/rentara_property_example/releases/download/app_release_1.1.0/app-release.apk)
