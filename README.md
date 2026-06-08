# Praktikum Widget Dasar Flutter

Proyek ini adalah hasil pengerjaan tugas praktikum dasar Flutter yang mencakup implementasi widget-widget fundamental seperti `Text`, `Icon`, `Button`, `Column`, dan `Row`.

## Identitas
- **Mahasiswa:** Alief Albayu
- **Topik:** Widget Dasar Flutter (Praktikum 2026)

## Fitur Proyek
Proyek ini terdiri dari dua halaman utama yang mencakup 7 tugas terstruktur:

### 1. Halaman Profil (Tugas 1, 2, 3)
- Modifikasi profil dengan nama, minat, dan ikon kustom.
- Baris menu horizontal menggunakan `Row` dan `Column` (Home, Cari, Profil).
- Implementasi berbagai jenis tombol interaktif (`ElevatedButton`, `OutlinedButton`, `IconButton`) dengan aksi `debugPrint`.

### 2. Halaman Belajar (Tugas 4, 5, 6, 7)
- Navigasi antar halaman menggunakan `Navigator`.
- Penggunaan variasi gaya teks dan ikon yang kreatif.
- Implementasi custom widget:
  - **`SectionProfilKartu`**: Widget kartu profil berbasis `Column`.
  - **`MenuHorizontal`**: Widget navigasi bawah berbasis `Row`.
- Latihan mandiri berbagai jenis button dengan dokumentasi fungsi di dalam kode.

## Teknologi yang Digunakan
- **Framework:** Flutter
- **Bahasa:** Dart
- **Design Pattern:** StatelessWidgets dengan fokus pada komposisi widget dasar.

## Prasyarat
Sebelum menjalankan proyek ini, pastikan Anda telah menginstal:
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-started/install)
- Emulator Android/iOS atau Chrome untuk menjalankan aplikasi.

## Cara Menjalankan
1. Clone repositori ini:
   ```bash
   git clone <url-repo-anda>
   ```
2. Masuk ke direktori proyek:
   ```bash
   cd Profile-page
   ```
3. Ambil dependensi:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```

## Standar Kode
- Menggunakan `const` constructor untuk performa optimal.
- Bebas dari *layout overflow* menggunakan `SingleChildScrollView`.
- Mengikuti pedoman penamaan *PascalCase* untuk class dan *camelCase* untuk variabel.
