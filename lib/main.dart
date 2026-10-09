import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Menggunakan static const sesuai materi modul
  static const String judulApp = 'Latihan Widget Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(judulApp),
          backgroundColor: Colors.indigo,
        ),
        body: const Center(
          child: Text(
            'Halo, Ini Tampilan Awal Aplikasi',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}