import 'package:flutter/material.dart';
import 'package:instagram_clone_app/screens/forgot_password_screen.dart';
import 'register_screen.dart';
import '../dummy_data.dart';

final usernameController = TextEditingController(text: 'rio');
final passwordController = TextEditingController(text: '12345678');

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Future<void> _login(BuildContext context) async {
    final user = dummyUsers.firstWhere(
      (user) =>
          user.username == usernameController.text &&
          user.password == passwordController.text,
      orElse: () => DummyUser(username: '', password: ''),
    );

    if (user.username.isNotEmpty && user.password.isNotEmpty) {
      // Navigate to home screen
      Navigator.pushNamed(context, '/home');
    } else {
      // Show error message
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Invalid credentials')));
    }
  }

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
              // Field input email
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Nomor telepon, email, atau nama pengguna',
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
              const SizedBox(height: 24),
              // Field input password
              TextField(
                controller: passwordController,
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
              // Tombol masuk
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () async {
                    _login(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Masuk'),
                ),
              ),
              const SizedBox(height: 12),
              // Lupa kata sandi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text('Lupa kata sandi?'),
                    ),
                  ),
                ],
              ),
              Flexible(flex: 2, child: Container()),
              // Daftar akun
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text('Tidak punya akun? '),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'Buat akun.',
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
