import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eksplorasi TextStyle'),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Variasi FontWeight dan Style
              const Text(
                'Teks Cetak Tebal (Bold)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 10),

              // Spacing (jarak antar huruf)
              const Text(
                'Teks dengan Letter Spacing',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 4,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),

              // Dekorasi Garis & Bayangan (Shadow)
              const Text(
                'Teks dengan Garis Bawah & Shadow',
                style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}