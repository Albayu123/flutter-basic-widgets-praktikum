# AGENT.md — Praktikum Flutter Widget Dasar

## Identitas
- **Nama Mahasiswa:** Alief Albayu
- **Topik:** Widget Dasar Flutter — Text, Icon, Button, Column, Row
- **Sumber Materi:** Section J, K, L, M, N — Materi Praktikum Flutter 2026

---

## Tujuan Agent
Kamu adalah coding agent yang bertugas membuat proyek Flutter dari nol, kemudian mengerjakan seluruh tugas praktikum (Tugas 1 hingga Tugas 7) secara lengkap dan terstruktur dalam satu file `lib/main.dart`. Hasil akhir harus bisa langsung dijalankan dengan `flutter run` tanpa error.

---

## Langkah 0 — Buat Proyek Baru

Jalankan perintah berikut di terminal:

```bash
flutter create praktikum_widget_dasar
cd praktikum_widget_dasar
```

Setelah proyek dibuat, hapus seluruh isi `lib/main.dart` dan ganti dengan kode yang akan kamu tulis sesuai instruksi di bawah.

---

## Langkah 1 — Buat Praktikum Utama (Section J)

Buat file `lib/main.dart` dengan struktur dasar berikut:

- `void main()` → memanggil `runApp(const PraktikumApp())`
- Class `PraktikumApp extends StatelessWidget` → mengembalikan `MaterialApp` dengan:
  - `debugShowCheckedModeBanner: false`
  - `title: 'Praktikum Widget Dasar'`
  - `theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true)`
  - `home: const HalamanProfil()`
- Class `HalamanProfil extends StatelessWidget` → mengembalikan `Scaffold` dengan `AppBar` dan `body` berisi `Column` yang memuat:
  - `Icon(Icons.account_circle, size: 96, color: Colors.blue)`
  - `Text('Halo, Saya Belajar Flutter', ...)`
  - `Text('Hari ini saya mempelajari Text, Icon, Button, Column, dan Row.', ...)`
  - `Row` berisi tiga ikon: `Icons.text_fields`, `Icons.star`, `Icons.smart_button`
  - `ElevatedButton.icon` dengan label `'Mulai Praktikum'` dan `onPressed: () { debugPrint('Praktikum dimulai'); }`

---

## Langkah 2 — Tugas 1: Modifikasi Tampilan Profil

Modifikasi kode `HalamanProfil` dengan ketentuan berikut:

- Ganti teks utama menjadi: **`'Halo, Saya Alief Albayu'`**
- Tambahkan `Text` baru di bawah deskripsi, isi dengan minat atau asal, contoh: `'Mahasiswa Pemrograman Mobile'`
- Ganti ikon profil dari `Icons.account_circle` menjadi `Icons.face` (atau ikon lain yang relevan)
- Ubah `seedColor` pada `ThemeData` menjadi `Colors.teal`

---

## Langkah 3 — Tugas 2: Menambah Baris Menu

Tambahkan sebuah `Row` baru di bawah `ElevatedButton` dengan ketentuan:

- Berisi minimal **tiga item menu**
- Setiap item menu adalah `Column` kecil yang berisi `Icon` dan `Text` pendek
- Gunakan `mainAxisAlignment: MainAxisAlignment.spaceEvenly`
- Contoh item menu: Home (`Icons.home`, `'Home'`), Search (`Icons.search`, `'Cari'`), Profile (`Icons.person`, `'Profil'`)

Contoh struktur satu item menu:
```dart
Column(
  children: [
    Icon(Icons.home),
    Text('Home'),
  ],
)
```

---

## Langkah 4 — Tugas 3: Tombol Interaktif

Tambahkan tiga tombol di dalam `Column` utama:

1. **`ElevatedButton`** — label `'Mulai Belajar'`, onPressed mencetak `'ElevatedButton: Mulai Belajar ditekan'`
2. **`OutlinedButton`** — label `'Lihat Detail'`, onPressed mencetak `'OutlinedButton: Lihat Detail ditekan'`
3. **`IconButton`** — icon `Icons.favorite`, color `Colors.redAccent`, iconSize `36`, tooltip `'Favorit'`, onPressed mencetak `'IconButton: Favorit ditekan'`

Setiap tombol dipisahkan dengan `SizedBox(height: 8)`.

---

## Langkah 5 — Tugas 4: Tantangan Mandiri (Halaman Baru)

Buat **class baru** bernama `HalamanBelajar extends StatelessWidget` dengan tema **aplikasi belajar**. Halaman ini dipanggil dari tombol di `HalamanProfil` (gunakan `Navigator.push`).

Ketentuan wajib:
- Minimal **5 Text** dengan variasi style (ukuran, warna, bold)
- Minimal **5 Icon** dengan variasi warna dan ukuran
- Minimal **2 Button** (boleh campuran jenis)
- Minimal **2 Column** (bisa nested)
- Minimal **2 Row**
- Tidak boleh overflow pada layar emulator standar (gunakan `SingleChildScrollView` jika konten panjang)

Tambahkan tombol di `HalamanProfil` untuk navigasi ke halaman ini:
```dart
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HalamanBelajar()),
    );
  },
  child: const Text('Buka Halaman Belajar'),
)
```

---

## Langkah 6 — Tugas 5: Latihan Button Mandiri

Di dalam `HalamanBelajar`, tambahkan section khusus tombol dengan:

- **`ElevatedButton`** → label `'Mulai'`, aksi: `debugPrint('Mulai ditekan')`
- **`OutlinedButton`** → label `'Detail'`, aksi: `debugPrint('Detail ditekan')`
- **`IconButton`** → icon `Icons.star`, tooltip `'Tandai'`, aksi: `debugPrint('Favorit ditandai')`

Tambahkan komentar kode di atas setiap tombol yang menjelaskan perbedaan fungsinya, contoh:
```dart
// ElevatedButton: tombol utama dengan tampilan menonjol, digunakan untuk aksi primer
// OutlinedButton: tombol ringan dengan garis tepi, digunakan untuk aksi sekunder
// IconButton: tombol berbasis ikon tanpa teks, digunakan untuk aksi cepat
```

---

## Langkah 7 — Tugas 6: Latihan Column Mandiri

Buat **class baru** bernama `SectionProfilKartu extends StatelessWidget` yang mengembalikan sebuah `Column` dengan:

- 1 `Icon` (ukuran besar, misalnya 80)
- 3 `Text` (judul, subjudul, deskripsi) dengan style berbeda
- 1 `ElevatedButton` atau `OutlinedButton`
- 2 `SizedBox` sebagai spasi antar widget
- `mainAxisAlignment: MainAxisAlignment.center`
- `crossAxisAlignment: CrossAxisAlignment.center`

Widget ini digunakan di dalam `HalamanBelajar` sebagai salah satu bagian konten.

---

## Langkah 8 — Tugas 7: Latihan Row Mandiri

Buat **class baru** bernama `MenuHorizontal extends StatelessWidget` yang mengembalikan sebuah `Row` dengan:

- Minimal **3 item menu**, masing-masing berisi `Column(children: [Icon(...), Text(...)])`
- Gunakan `mainAxisAlignment: MainAxisAlignment.spaceEvenly`
- Setiap ikon berukuran `28` dan teks berukuran font `12`
- Tidak boleh overflow (jika perlu gunakan `Expanded` atau kurangi padding)

Widget ini digunakan di bagian bawah `HalamanBelajar`.

---

## Struktur File Akhir

```
praktikum_widget_dasar/
└── lib/
    └── main.dart   ← SATU FILE berisi semua class berikut:
        ├── main()
        ├── PraktikumApp
        ├── HalamanProfil         (Praktikum Utama + Tugas 1, 2, 3)
        ├── HalamanBelajar        (Tugas 4, 5, 6, 7)
        ├── SectionProfilKartu    (Tugas 6)
        └── MenuHorizontal        (Tugas 7)
```

---

## Aturan Penulisan Kode

- Gunakan `const` di mana memungkinkan untuk performa lebih baik
- Setiap class harus memiliki constructor `const ClassName({super.key})`
- Indentasi menggunakan 2 spasi (standar Dart/Flutter)
- Nama class menggunakan **PascalCase**, nama variabel menggunakan **camelCase**
- Tambahkan komentar singkat `//` di atas setiap section utama untuk keterbacaan
- Gunakan `debugPrint` bukan `print` untuk output ke console
- Jangan ada kode yang tidak terpakai (no dead code)

---

## Validasi Akhir (Section K & M)

Setelah semua kode selesai ditulis, pastikan semua poin berikut terpenuhi:

### Checklist Fungsional
- [ ] `flutter analyze` tidak menampilkan error
- [ ] `flutter run` berhasil tanpa crash
- [ ] Teks nama `Alief Albayu` muncul di halaman profil
- [ ] Semua tombol memiliki `onPressed` yang aktif (tidak `null`)
- [ ] `debugPrint` muncul di console saat tombol ditekan
- [ ] Tidak ada overflow (garis kuning-hitam) di layar emulator

### Checklist Rubrik (Section M)
| Aspek | Bobot | Target |
|---|---|---|
| Kebenaran penggunaan widget | 30% | Text, Icon, Button, Column, Row digunakan sesuai fungsi |
| Kerapian layout | 25% | Rapi, jarak konsisten, tidak overflow |
| Interaktivitas tombol | 20% | Semua Button punya onPressed dengan aksi nyata |
| Kreativitas modifikasi | 15% | Ada variasi ikon, warna, teks, struktur |
| Kerapian kode | 10% | Indentasi jelas, nama class mudah dipahami |

---

## Penanganan Error Umum (Section N)

| Masalah | Solusi |
|---|---|
| Tampilan overflow kuning-hitam | Bungkus Column dengan `SingleChildScrollView`, atau gunakan `Expanded` pada elemen fleksibel |
| Tombol tidak bisa ditekan | Pastikan `onPressed` diisi fungsi, bukan `null` |
| Ikon tidak muncul | Pastikan nama ikon benar dari kelas `Icons` dan `MaterialApp` digunakan |
| Kode merah setelah copy | Cek pasangan kurung `()`, `[]`, `{}` dan koma antar widget |

---

## Output yang Diharapkan

Satu file `lib/main.dart` yang lengkap, bisa langsung di-run, mencakup semua tugas 1–7, rapi, dan memenuhi rubrik penilaian dengan nilai terbaik.
