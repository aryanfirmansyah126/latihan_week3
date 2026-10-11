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
          title: const Text('Eksplorasi Layout & RichText'),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Alignment Teks di dalam Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Teks Rata Tengah (Center Alignment)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 15),

              // Handling Overflow Teks Panjan
              const Text(
                'Pengembangan aplikasi mobile menggunakan Flutter dan Dart sangat menyenangkan karena performanya tinggi dan mendukung multiplatform.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),

              // Penggunaan RichText dan TextSpan
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(text: 'Saya sedang belajar '),
                    TextSpan(
                      text: 'Flutter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(text: ' dan '),
                    TextSpan(
                      text: 'Dart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
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