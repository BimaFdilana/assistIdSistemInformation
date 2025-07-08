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
      // Body akan menampilkan halaman sesuai indeks yang dipilih
      body: _pages.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF5A5A9E),
        selectedItemColor: Colors.white,
        // ignore: deprecated_member_use
        unselectedItemColor: Colors.white.withOpacity(0.6),
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
    );
  }
}
