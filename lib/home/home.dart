import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF5A5A9E);
    const Color secondaryColor = Color(0xFFF0F5FF); // Warna latar kartu

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withValues(alpha: 0.6),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
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
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/imgs/logo.png', height: 30),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/imgs/Home_image_1.png', height: 200),
          const SizedBox(height: 20),
          const Text(
            'Kelola Klinik, Apotek Lebih\nMudah Pakai Assist.id',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Daftar Sekarang',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/imgs/dashboard_info.png'),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Didesain Untuk Membantu Operasional Klinik Lebih Mudah',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kami membantu Anda mempercepat proses operasional dari pendaftaran pasien, pembayaran dan laporan otomatis...',
                  style: TextStyle(color: Colors.grey[700], height: 1.5),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lihat Video Cara Kerja Assist.id',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          Image.asset('assets/imgs/multi_platform.png'),
          const SizedBox(height: 20),
          const Text(
            'Mudah Kelola Klinik dan Apotek Dalam Satu Aplikasi',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Assist.id hadir sebagai solusi manajemen informasi fasilitas kesehatan Indonesia berbasis cloud...',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700], height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeatureItem(
                Icons.phone_iphone,
                'Cukup Satu Aplikasi',
                'Tidak perlu banyak aplikasi di kiosk Anda, cukup Assist.id...',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                Icons.file_copy,
                'Laporan Otomatis',
                'Tidak perlu banyak kertas, semua laporan dapat diakses...',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                Icons.devices,
                'Akses Multiplatform',
                'Dengan teknologi terbaru, Anda dapat mengakses platform...',
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeatureItem(
                Icons.star,
                'Pengalaman Terbaik',
                'Proses pelayanan jadi lebih cepat dan profesional...',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                Icons.people,
                'Berdasarkan Tim Klinik',
                'Manajemen kepegawaian karyawan jadi lebih ringan...',
              ),
              const SizedBox(width: 16),
              _buildFeatureItem(
                Icons.trending_up,
                'Kembangkan Bisnis Klinik',
                'Jadi lebih mudah dengan adanya teknologi modern...',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String subtitle) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Colors.blue, size: 30),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700], fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildTechnologySection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          const Text(
            'Jalankan Bisnis Dengan Memanfaatkan Teknologi',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Solusi dari awal hingga kontrol dan monitor Platform Assist.id membantu Anda...',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700], height: 1.5),
          ),
          const SizedBox(height: 30),
          // Icons for technology features
          // ... (You would build a Row of icons and text here similar to other sections)
          TextButton(
            onPressed: () {},
            child: const Text(
              'Mau lihat seluruh fitur Assist.id? Yuk jelajahi seluruh fitur Assist.id',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSystemFitSection() {
    return Container(
      color: Colors.white, // assuming white bg for this section
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          const Text(
            'Sistem Cocok Digunakan Berbagai Jenis Fasilitas Kesehatan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Mulai dari praktek pribadi hingga klinik dan apotek multi-cabang bisa menggunakan Assist.id...',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700], height: 1.5),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Image.asset('assets/imgs/system_fit_illustration.png'),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    _buildFacilityItem(
                      Icons.local_hospital,
                      'Klinik Utama dan Pratama BPJS',
                    ),
                    _buildFacilityItem(Icons.face, 'Klinik Kecantikan'),
                    _buildFacilityItem(Icons.bloodtype, 'Klinik Hemodialisis'),
                    // ... and so on for other facilities
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFacilityItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  Widget _buildMigrationCard(Color backgroundColor) {
    return Container(
      width: double.infinity,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          const Text(
            'Pusing Pindah dari Sistem Lama? Kami Bantu!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/imgs/migration_illustration.png'),
          const SizedBox(height: 20),
          Text(
            'Sebagai ahli dalam sistem manajemen pengelolaan klinik, Tim Assist.id akan bekerja sama...',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700], height: 1.5),
          ),
        ],
      ),
    );
  }
}
