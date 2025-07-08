import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF5A5A9E);
    const Color secondaryColor = Color(0xFFe0eefe); // Warna latar kartu

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(primaryColor),
            _buildInfoCard(secondaryColor),
            _buildMultiPlatformSection(),
            _buildFeaturesGrid(),
            _buildTechnologySection(),
            _buildSystemFitSection(),
            _buildMigrationCard(secondaryColor),
          ],
        ),
      ),
    );
  }

  // --- WIDGET UNTUK SETIAP BAGIAN ---

  Widget _buildHeroSection(Color primaryColor) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/imgs/logo.png', height: 50),
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/imgs/Home_image_1.png', height: 200),
          const SizedBox(height: 20),
          const Text(
            'Kelola Klinik, Apotek Lebih\nMudah Pakai Assist.id',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Daftar Sekarang',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(Color backgroundColor) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: Image.asset('assets/imgs/Home_image_2.png')),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Didesain Untuk Membantu Operasional Klinik Lebih Mudah',
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kami membantu Anda mempercepat proses operasional dari pendaftaran pasien, pembayaran dan laporan otomatis...',
                  style: TextStyle(color: Colors.black87, fontSize: 8),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Lihat Video Cara Kerja Assist.id',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMultiPlatformSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        children: [
          Image.asset('assets/imgs/Home_image_3.png'),
          const SizedBox(height: 20),
          const Text(
            'Mudah Kelola Klinik dan Apotek Dalam Satu Aplikasi',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Assist.id hadir sebagai solusi manajemen informasi fasilitas kesehatan Indonesia berbasis cloud profesional sehingga platform Assist.id dapat diakses berbagai device seperti komputer, tablet dan smartphone yang didesain simple dan mudah digunakan untuk Tim Anda ',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87, fontSize: 7),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeatureItem(
                'assets/logos/Home_Menu_logo_1.png',
                'Cukup Satu Aplikasi',
                'Tidak perlu install banyak aplikasi diklnik ada. pendaftaran, rekam medis, stok, obat, kasir, hingga laporan saling terhubung dalam satu aplikasi',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                'assets/logos/Home_Menu_logo_2.png',
                'Laporan Otomatis',
                'Waktu anda sangat berharga, segera beralih kepada proses laporan otomatis modren dan akurat untuk menghemat waktu anda',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                'assets/logos/Home_Menu_logo_3.png',
                'Akses Multiplatform',
                'Dengan bantuan teknologi terbaru, Anda dapat lebih fokus kepada bisnis faskes anda untuk menjaga pelanggan anda kembali lagi dan lagi',
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeatureItem(
                'assets/logos/Home_Menu_logo_4.png',
                'Pengalaman Terbaik',
                'Proses pelayanan jadi lebih cepat dan profesional dengan fitur panggilan pasien otomatis, menampilkan antrian pasien yang ada di Tv klinik / apotek anda',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                'assets/logos/Home_Menu_logo_5.png',
                'Berdasarkan Tim Klinik',
                'Kini manajeman melakukan penggajian karyawan (payroll), komisi tindakan dan penjualan, bonus, kinerja tim anda menjadi lebih ringan dari sebelumnya',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                'assets/logos/Home_Menu_logo_6.png',
                'Kembangkan Bisnis Klinik',
                'Jadi klinik luar biasa dengan solusi teknologi modern, anda dapat lebih fokus kepada bisnis faskes anda untuk menjaga pelanggan anda kembali lagi dan lagi',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String imagePath, String title, String subtitle) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 6,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.grey[700], fontSize: 6),
            softWrap: true,
          ),
        ],
      ),
    );
  }

  Widget _buildTechnologyItem(String imagePath, String title) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 25, height: 30, fit: BoxFit.contain),
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 6),
            softWrap: true,
          ),
        ],
      ),
    );
  }

  Widget _buildTechnologySection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Jalankan Bisnis Dengan Memanfaatkan Teknologi',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Solusi dari awal hingga kontrol dan monitor. Platform Assist.id membantu Anda membuat proses operasional lebih cepat dan efektif dengan fitur yang lengkap untuk melayani pasien dengan pelayanan yang terbaik',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, fontSize: 7),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildTechnologyItem(
                'assets/logos/Home_Manfaat_logo_1.png',
                'Booking Konsultasi',
              ),
              _buildTechnologyItem(
                'assets/logos/Home_Manfaat_logo_2.png',
                'Rekam Medis',
              ),
              _buildTechnologyItem(
                'assets/logos/Home_Manfaat_logo_3.png',
                'Data Stok Obat',
              ),
              _buildTechnologyItem(
                'assets/logos/Home_Manfaat_logo_4.png',
                'Kasir Pembayaran',
              ),
              _buildTechnologyItem(
                'assets/logos/Home_Manfaat_logo_5.png',
                'Laporan Otomatis',
              ),
              _buildTechnologyItem(
                'assets/logos/Home_Manfaat_logo_6.png',
                'Manajemen Staff',
              ),
            ],
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Mau lihat seluruh fitur Assist.id? Yuk jelajahi seluruh fitur Assist.id',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSystemFitSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        children: [
          const Text(
            'Sistem Cocok Digunakan Berbagai Jenis Fasilitas Kesehatan',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            'Mulai dari praktek pribadi hingga klinik dan apotek multi-cabang bisa menggunakan Assist.id. Kami paham kebutuhan pada sistem fasilitas kesehatan anda mungkin berbeda-beda maka dari itu kami merancang produk khusus dengan kebutuhan anda',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87, fontSize: 7),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset('assets/imgs/Home_image_4.png'),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    _buildFacilityItem(
                      'assets/logos/icon_2.png',
                      'Klinik Utama dan Pratama BPJS',
                    ),
                    _buildFacilityItem(
                      'assets/logos/icon_3.png',
                      'Klinik Kecantikan',
                    ),
                    _buildFacilityItem(
                      'assets/logos/icon_1.png',
                      'Klinik Hemodialisis',
                    ),
                    _buildFacilityItem(
                      'assets/logos/icon_4.png',
                      'Mandiri Dokter dan Bidan',
                    ),
                    _buildFacilityItem(
                      'assets/logos/icon_5.png',
                      'Rumah Sakit',
                    ),
                    _buildFacilityItem(
                      'assets/logos/icon_6.png',
                      'Apotek dan Farmasi',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFacilityItem(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey[200]!, width: 1.0),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 25, height: 30, fit: BoxFit.contain),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMigrationCard(Color backgroundColor) {
    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        children: [
          const Text(
            'Pusing Pindah dari Sistem Lama? Kami Bantu!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/imgs/Home_image_5.png',
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sebagai ahli dalam sistem manajemen pengelolaan klinik, Tim Assist.id akan bekerja sama langsung dengan Anda untuk melakukan migrasi data klinik dan melakukan transisi yang dibutuhkan agar karyawan Anda bisa mulai mengunakan.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text('Hubungi Kami', style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
