import 'package:assist_id_application/home/about_screen.dart';
import 'package:assist_id_application/home/contact_service.dart';
import 'package:assist_id_application/home/home_screen.dart';
import 'package:assist_id_application/home/product_service_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State untuk melacak indeks item yang dipilih
  int _selectedIndex = 0;

  // Daftar semua halaman yang akan ditampilkan
  static final List<Widget> _pages = <Widget>[
    HomePage(),
    AboutScreen(),
    ProductServicesScreen(),
    ContactServiceScreen(),
  ];

  // Fungsi untuk mengubah halaman saat item di-tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Properti bottomNavigationBar dihapus dari sini

      // Body diubah menjadi Stack untuk menumpuk halaman dan navigasi kustom
      body: Stack(
        children: [
          // LAPISAN 1: KONTEN HALAMAN UTAMA
          // Menampilkan halaman sesuai indeks yang dipilih
          _pages.elementAt(_selectedIndex),

          // LAPISAN 2: CUSTOM BOTTOM NAVIGATION BAR
          // Menggunakan Align untuk memposisikan bar di bawah tengah
          Align(alignment: Alignment.bottomCenter, child: _buildCustomNavBar()),
        ],
      ),
    );
  }

  // WIDGET KUSTOM UNTUK NAVIGATION BAR
  Widget _buildCustomNavBar() {
    const Color navBarColor = Color(0xFF5A5A9E);
    const Color selectedColor = Colors.white;
    final Color unselectedColor = Colors.white.withValues(alpha: 0.6);

    return Container(
      // Margin untuk memberi efek "terangkat" dari bawah dan samping
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: navBarColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Item Home
          IconButton(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? selectedColor : unselectedColor,
            ),
            onPressed: () => _onItemTapped(0),
          ),
          // Item Info
          IconButton(
            icon: Icon(
              Icons.info,
              color: _selectedIndex == 1 ? selectedColor : unselectedColor,
            ),
            onPressed: () => _onItemTapped(1),
          ),
          // Item Transaction
          IconButton(
            icon: Icon(
              Icons.receipt_long,
              color: _selectedIndex == 2 ? selectedColor : unselectedColor,
            ),
            onPressed: () => _onItemTapped(2),
          ),
          // Item Menu
          IconButton(
            icon: Icon(
              Icons.menu,
              color: _selectedIndex == 3 ? selectedColor : unselectedColor,
            ),
            onPressed: () => _onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
