import 'package:flutter/material.dart';

// Halaman-halaman tujuan untuk setiap produk
class HemodaPage extends StatelessWidget {
  const HemodaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/imgs/hemoda.png', fit: BoxFit.cover),
      ),
    );
  }
}

class ClinicaPage extends StatelessWidget {
  const ClinicaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/imgs/clinica.png', fit: BoxFit.cover),
      ),
    );
  }
}

class HospitaPage extends StatelessWidget {
  const HospitaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/imgs/hospita.png', fit: BoxFit.cover),
      ),
    );
  }
}

class PrivataPage extends StatelessWidget {
  const PrivataPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/imgs/privata.png', fit: BoxFit.cover),
      ),
    );
  }
}

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/imgs/schedula.png', fit: BoxFit.cover),
      ),
    );
  }
}

class PharmaPage extends StatelessWidget {
  const PharmaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Image.asset('assets/imgs/pharma.png', fit: BoxFit.cover),
      ),
    );
  }
}
// --- Akhir dari halaman tujuan ---

// Model sederhana untuk data produk
class Product {
  final String name;
  final String imagePath;
  final Color color;

  Product({required this.name, required this.imagePath, required this.color});
}

class ProductServicesScreen extends StatelessWidget {
  ProductServicesScreen({super.key});

  final List<Product> products = [
    Product(
      name: 'Hemoda',
      imagePath: 'assets/imgs/layanan_image_1.png',
      color: const Color(0xFF00729C),
    ),
    Product(
      name: 'Clinica',
      imagePath: 'assets/imgs/layanan_image_2.png',
      color: const Color(0xFF4B8BBF),
    ),
    Product(
      name: 'Hospita',
      imagePath: 'assets/imgs/layanan_image_3.png',
      color: const Color(0xFFD7EDFF),
    ),
    Product(
      name: 'Privata',
      imagePath: 'assets/imgs/layanan_image_4.png',
      color: const Color(0xFFAA80FF),
    ),
    Product(
      name: 'Schedule',
      imagePath: 'assets/imgs/layanan_image_5.png',
      color: const Color(0xFF6cb3d9),
    ),
    Product(
      name: 'Pharma',
      imagePath: 'assets/imgs/layanan_image_6.png',
      color: const Color(0xFF74c8b5),
    ),
  ];

  final Color primaryColor = const Color(0xFF5A5A9E);

  // Fungsi untuk menangani navigasi berdasarkan nama produk
  void _navigateToProductPage(BuildContext context, String productName) {
    Widget page;
    switch (productName) {
      case 'Hemoda':
        page = const HemodaPage();
        break;
      case 'Clinica':
        page = const ClinicaPage();
        break;
      case 'Hospita':
        page = const HospitaPage();
        break;
      case 'Privata':
        page = const PrivataPage();
        break;
      case 'Schedule':
        page = const SchedulePage();
        break;
      case 'Pharma':
        page = const PharmaPage();
        break;
      default:
        page = Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Halaman tidak ditemukan')),
        );
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text(
          'Layanan Produk',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 100.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return _ProductCard(
            product: product,
            // Berikan fungsi onTap yang akan dipanggil oleh IconButton
            onTap: () => _navigateToProductPage(context, product.name),
          );
        },
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  const _ProductCard({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Tidak ada InkWell di sini, kembali ke struktur asli
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Stack(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: product.color,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              alignment: Alignment.bottomCenter,
              product.imagePath,
              height: 180,
              width: double.infinity,
            ),
          ),
          Center(
            child: Text(
              product.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black45,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                // IconButton ini sekarang menjadi satu-satunya yang memanggil onTap
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, size: 20),
                  color: Colors.black,
                  onPressed: onTap, // Langsung panggil fungsi onTap di sini
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
