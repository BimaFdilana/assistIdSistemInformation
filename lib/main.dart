import 'package:flutter/material.dart';

import 'splashscreen/splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assist.id',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
