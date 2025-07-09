import 'package:flutter/material.dart';

// Model sederhana untuk data produk
class Product {
  final String name;
  final String imagePath;
  final Color color;

  Product({required this.name, required this.imagePath, required this.color});
}

class ProductServicesScreen extends StatelessWidget {
  ProductServicesScreen({super.key});

  // Daftar data produk yang akan ditampilkan
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
          return _ProductCard(product: products[index]);
        },
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Product product;

  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
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

            // Teks Nama Produk
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

            // Tombol Panah
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

                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 20),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
