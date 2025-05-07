import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Menggunakan Navigator.pop untuk kembali ke halaman sebelumnya
            Navigator.pop(context);
          },
          child: const Text('Kembali ke Home'),
        ),
      ),
    );
  }
}
