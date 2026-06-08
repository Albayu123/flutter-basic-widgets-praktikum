import 'package:flutter/material.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum Widget Dasar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HalamanProfil(),
    );
  }
}

// HalamanProfil: Halaman utama praktikum (Section J + Tugas 1, 2, 3)
class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Tugas 1: Modifikasi Tampilan Profil
            const Icon(
              Icons.face,
              size: 96,
              color: Colors.teal,
            ),
            const SizedBox(height: 10),
            const Text(
              'Muhammad Alief Albayu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mahasiswa Teknik Informatika',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hari ini saya mempelajari Text, Icon, Button, Column, dan Row.',
                textAlign: TextAlign.center,
              ),
            ),
            
            // Tugas 2: Menambah Baris Menu
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.home, color: Colors.teal),
                    Text('Home'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.search, color: Colors.teal),
                    Text('Cari'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.person, color: Colors.teal),
                    Text('Profil'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Tugas 3: Tombol Interaktif
            Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    debugPrint('ElevatedButton: Mulai Belajar ditekan');
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Mulai Belajar'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {
                    debugPrint('OutlinedButton: Lihat Detail ditekan');
                  },
                  child: const Text('Lihat Detail'),
                ),
                const SizedBox(height: 8),
                IconButton(
                  onPressed: () {
                    debugPrint('IconButton: Favorit ditekan');
                  },
                  icon: const Icon(Icons.favorite),
                  color: Colors.redAccent,
                  iconSize: 36,
                  tooltip: 'Favorit',
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Tugas 4: Navigasi ke Halaman Baru
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanBelajar()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal.shade100,
              ),
              child: const Text('Buka Halaman Belajar'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// HalamanBelajar: Halaman tantangan mandiri (Tugas 4, 5, 6, 7)
class HalamanBelajar extends StatelessWidget {
  const HalamanBelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Belajar'),
        backgroundColor: Colors.teal.shade200,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Section 5 Text dengan variasi style
            const Text('Statistik Belajar', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal)),
            const Text('Minggu Ini', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const Text('8 Jam Terlampaui', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
            const Text('Target: 10 Jam', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
            const Text('Tetap Semangat!', style: TextStyle(fontSize: 20, color: Colors.orange, letterSpacing: 1.5)),
            
            const Divider(height: 30),

            // Section 5 Icon dengan variasi warna/ukuran
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.book, color: Colors.brown, size: 30),
                Icon(Icons.code, color: Colors.blue, size: 40),
                Icon(Icons.timer, color: Colors.red, size: 50),
                Icon(Icons.workspace_premium, color: Colors.amber, size: 40),
                Icon(Icons.lightbulb, color: Colors.yellow, size: 30),
              ],
            ),

            const SizedBox(height: 30),

            // Tugas 6: Latihan Column Mandiri (SectionProfilKartu)
            const SectionProfilKartu(),

            const SizedBox(height: 30),

            // Tugas 5: Latihan Button Mandiri
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text('Section Kontrol', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  // ElevatedButton: tombol utama dengan tampilan menonjol, digunakan untuk aksi primer
                  ElevatedButton(
                    onPressed: () => debugPrint('Mulai ditekan'),
                    child: const Text('Mulai'),
                  ),
                  const SizedBox(height: 8),
                  // OutlinedButton: tombol ringan dengan garis tepi, digunakan untuk aksi sekunder
                  OutlinedButton(
                    onPressed: () => debugPrint('Detail ditekan'),
                    child: const Text('Detail'),
                  ),
                  const SizedBox(height: 8),
                  // IconButton: tombol berbasis ikon tanpa teks, digunakan untuk aksi cepat
                  IconButton(
                    onPressed: () => debugPrint('Favorit ditandai'),
                    icon: const Icon(Icons.star),
                    tooltip: 'Tandai',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Tugas 7: Latihan Row Mandiri (Menu Horizontal)
            const MenuHorizontal(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// Tugas 6: Latihan Column Mandiri
class SectionProfilKartu extends StatelessWidget {
  const SectionProfilKartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.school, size: 80, color: Colors.teal),
        const SizedBox(height: 10),
        const Text(
          'Stt Stikma Internasional',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Teknik Informatika',
          style: TextStyle(fontSize: 16, color: Colors.teal),
        ),
        const SizedBox(height: 5),
        const Text(
          'Belajar membangun masa depan dengan kode.',
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 15),
        OutlinedButton(
          onPressed: () => debugPrint('Kartu Profil Ditekan'),
          child: const Text('Hubungi Saya'),
        ),
      ],
    );
  }
}

// Tugas 7: Latihan Row Mandiri
class MenuHorizontal extends StatelessWidget {
  const MenuHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMenuItem(Icons.event_note, 'Jadwal'),
        _buildMenuItem(Icons.assignment, 'Tugas'),
        _buildMenuItem(Icons.chat, 'Diskusi'),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 28, color: Colors.teal),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
