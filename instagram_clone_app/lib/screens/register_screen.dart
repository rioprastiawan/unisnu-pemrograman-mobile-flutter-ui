import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              // Logo Instagram
              Image.network(
                'https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png',
                height: 64,
              ),
              const SizedBox(height: 64),
              // Field input nama lengkap
              TextField(
                decoration: InputDecoration(
                  hintText: 'Nama lengkap',
                  border: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              // Field input email
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              // Field input username
              TextField(
                decoration: InputDecoration(
                  hintText: 'Nama pengguna',
                  border: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              // Field input password
              TextField(
                decoration: InputDecoration(
                  hintText: 'Kata Sandi',
                  border: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24),
              // Tombol daftar
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Daftar'),
                ),
              ),
              const SizedBox(height: 12),
              Flexible(flex: 2, child: Container()),
              // Sudah punya akun
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text('Sudah punya akun? '),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'Masuk.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
