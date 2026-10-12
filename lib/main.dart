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
      title: 'Showcase Widget Teks',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const TextShowcaseScreen(),
    );
  }
}

class TextShowcaseScreen extends StatelessWidget {
  const TextShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Showcase Widget Teks'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Bagian 1: Styling & Spacing
          const SectionTitle(title: '1. Styling & Spacing'),
          const Text(
            'Teks Bold & Letter Spacing',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 20),

          // Bagian 2: Text Alignment
          const SectionTitle(title: '2. Text Alignment'),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.indigo),
            ),
            child: const Text(
              'Teks diatur Rata Tengah',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20),

          // Bagian 3: RichText Example
          const SectionTitle(title: '3. RichText Example'),
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 16, color: Colors.black87),
              children: [
                TextSpan(text: 'Materi '),
                TextSpan(
                  text: 'Aplikasi Mobile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                TextSpan(text: ' Pertemuan 2.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Widget Reusable untuk Judul Bagian
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}