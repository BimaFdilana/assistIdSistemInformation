import 'package:flutter/material.dart';

class ContactServiceScreen extends StatelessWidget {
  const ContactServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Kontak Layanan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Bungkus semuanya dengan widget Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // BAGIAN KIRI: Hubungi Kami
                Expanded(
                  flex: 1, // Mengambil setengah ruang yang tersedia
                  // 2. Ganti Row menjadi Column agar teks tersusun ke bawah
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hubungi Kami',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Kami siap menjawab pertanyaan kamu mengenai sistem klinik.',
                        style: TextStyle(color: Colors.black, fontSize: 8),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Kamu bisa hubungin kami',
                        style: TextStyle(color: Colors.black, fontSize: 8),
                      ),
                      const SizedBox(height: 16),
                      _buildContactInfo(
                        Icons.mail_outline,
                        'Email',
                        'info@assist.id',
                      ),
                      const SizedBox(height: 8),
                      _buildContactInfo(
                        Icons
                            .wechat_sharp, // Anda mengubah ikon ini, saya pertahankan
                        'WhatsApp',
                        '082112322500',
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  width: 24,
                ), // Memberi jarak antara kiri dan kanan
                // BAGIAN KANAN: Peta Lokasi
                Expanded(
                  flex: 1, // Mengambil setengah ruang sisanya
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/imgs/Contact_map.png', // Ganti dengan gambar peta statis
                        width: double.infinity,
                        height: 150, // Sesuaikan tinggi agar seimbang
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // --- Teks Panjang Deskripsi ---
            Text(
              'Fasilitas kesehatan, seperti praktek mandiri, apotek, klinik pratama, klinik utama, klinik kecantikan, klinik BPJS, klinik Hemodialisis, dan rumah sakit, di Indonesia memegang peranan penting untuk layanan kesehatan terbaik masyarakat. Assist.id adalah software aplikasi klinik, apotek dan rumah sakit terbaik yang dapat membantu Anda dalam mengelola bisnis faskes Anda. Assist.id merupakan solusi digitalisasi faskes di Indonesia. Jika Anda sebelumnya memiliki data pasien, Assist.id memiliki fitur import sehingga Anda dapat mengupload filenya dengan mudah.',
              style: TextStyle(color: Colors.black, fontSize: 7, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Text(
              'Melakukan pendaftaran pasien baru dan menerima online booking konsultasi dokter menjadi lebih mudah untuk Admisi klinik Anda. Assist.id juga dapat diintegrasikan dengan bridging BPJS P-Care. Untuk mempermudah dokter - dokter dalam menyimpan rekam medis (EMR) pasien, software klinik Assist.id juga menyediakan catatan dokter dengan standar ICD 10, catatan perawat, odontogram, upload foto dsb. Untuk fitur apotek juga merupakan salah satu fitur yang penting dalam pencatatan stok obat, daftar obat, peringatan obat habis, peringatan obat kedaluarsa hingga laporannya yang lengkap. Software apotek Assist.id dapat diakses dimana saja kapan saja, Anda tidak perlu selalu berada diapotek lagi. Berbagai fitur di aplikasi klinik Assist.id saling terintegrasi terhubung satu fitur dengan fitur lainnya. Software klinik Assist.id merupakan software klinik berbasis cloud. Berlangganan dengan Assist.id bisa bulanan maupun tahunan sehingga Anda dapat bayar lebih murah dan terjangkau. Pekerjaan admisi. dokter, dan apoteker kini dapat lebih terotomatisasi dan efektif.',
              style: TextStyle(color: Colors.black, fontSize: 7, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),

            // --- Assist.id, Produk, Tipe Faskes, Solusi ---
            // Menggunakan LayoutBuilder untuk membuat kolom responsif
            LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _buildCategoryColumn('Assist.id', [
                        'Assist.id hadir sebagai solusi...',
                        'Manajemen operasional...',
                        'Mandiri Dokter dan Bidan, Klinik...',
                        'Pratama dan Utama BPJS, Klinik...',
                        'Hemodialisis, Klinik Kecantikan, Rumah...',
                        'Sakit dan Apotek',
                      ]),
                    ),
                    Expanded(
                      child: _buildCategoryColumn('Produk', [
                        'Klinik',
                        'Hemoda',
                        'Clinica',
                        'Privata',
                        'Hospita',
                        'Pharos',
                      ]),
                    ),
                    Expanded(
                      child: _buildCategoryColumn('Tipe Faskes', [
                        'Klinik Pratama',
                        'Klinik Utama',
                        'Apotek',
                        'Klinik Kecantikan',
                        'Klinik Hemodialisis',
                        'Praktik Mandiri',
                        'Rumah Sakit',
                        'Bidan',
                        'Kontak',
                      ]),
                    ),
                    Expanded(
                      child: _buildCategoryColumn('Solusi', [
                        'Online Booking Konsultasi Dokter',
                        'Pendaftaran Pasien',
                        'Rekam Medis Elektronik (RMK)',
                        'Data Stok Obat & Farmasi',
                        'Kasir dan Pembayaran (POS)',
                        'Laporan Keuangan',
                        'Manajemen Kepegawaian, Billing, Pajak, Staff',
                      ]),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 24),

            // --- Pencarian Terkait ---
            const Text(
              'Pencarian Terkait',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              'Aplikasi Kesehatan, Software Klinik, Sistem Informasi Klinik, Software Kesehatan, Sistem Klinik, Sistem Manajemen Klinik, Klinik Digital, Software Klinik, Software Terbaik Untuk Klinik Anda, Aplikasi Kesehatan, Aplikasi Klinik Umum, Aplikasi Rumah Sakit, Primary Care BPJS, SIMRS, SIM RS.',
              style: TextStyle(color: Colors.black, fontSize: 8, height: 1.5),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'FAQ | Kebijakan Privasi | Syarat dan Ketentuan |',
                style: TextStyle(color: Colors.black54, fontSize: 6),
                textAlign: TextAlign.center,
              ),
            ),
            const Center(
              child: Text(
                '2019 © Assist.id . All Rights Reserved.',
                style: TextStyle(color: Colors.black54, fontSize: 6),
                textAlign: TextAlign.center,
              ),
            ),
            const Center(
              child: Text(
                'PT. Jaga Anugrah Giat Asa.',
                style: TextStyle(color: Colors.black54, fontSize: 6),
                textAlign: TextAlign.center,
              ),
            ),
            const Center(
              child: Text(
                'Jalan Palaraya no 325 Pekanbaru.',
                style: TextStyle(color: Colors.black54, fontSize: 6),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  // Helper widget untuk membuat info kontak
  Widget _buildContactInfo(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.black, fontSize: 8),
            ),
          ],
        ),
      ],
    );
  }

  // Helper widget untuk membuat kolom kategori di footer
  Widget _buildCategoryColumn(String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(height: 8),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Text(
                item,
                style: TextStyle(fontSize: 7, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
