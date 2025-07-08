import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF5A5A9E); // Warna latar belakang utama

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: const Text(
          'Tentang Assist.id',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- Ilustrasi Atas ---
            Image.asset(
              'assets/imgs/tentang_imgae_1.png', // Ganti dengan path gambar Anda
              height: 180,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),

            // --- Judul ASSIST.ID ---
            const Text(
              'ASSIST.ID',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // --- Paragraf 1 ---
            const Text(
              'Assist.id adalah perusahaan teknologi yang menyediakan sistem manajemen klinik dan layanan digital untuk mendukung kemajuan layanan kesehatan di Indonesia.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 12),

            // --- Paragraf 2 ---
            const Text(
              'Kami percaya bahwa teknologi yang tepat dapat membuat layanan kesehatan lebih efisien, mudah diakses, dan terintegrasi.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),

            // --- Ilustrasi Bawah ---
            Image.asset(
              'assets/imgs/tentang_image_2.png', // Ganti dengan path gambar Anda
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),

            // --- Judul Bawah ---
            const Text(
              'Kelola Klinik, Apotek Lebih\nMudah Pakai Assist.id',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 32),

            // --- Tombol Daftar Sekarang ---
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Daftar Sekarang',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20), // Memberi sedikit ruang di bagian bawah
          ],
        ),
      ),
    );
  }
}
