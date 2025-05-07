import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Basic Widgets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container Demo
            const Text(
              'Container Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: const Text('Ini adalah Container dengan dekorasi'),
            ),

            const SizedBox(height: 20),

            // Text Demo
            const Text(
              'Text Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Text dengan berbagai style',
              style: TextStyle(
                fontSize: 16,
                color: Colors.purple,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),

            const SizedBox(height: 20),

            // Button Demo
            const Text(
              'Button Widgets:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
                TextButton(onPressed: () {}, child: const Text('Text Button')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              ],
            ),

            const SizedBox(height: 20),

            // Icon Demo
            const Text(
              'Icon Widgets:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.favorite, color: Colors.red, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.thumb_up, color: Colors.blue, size: 30),
              ],
            ),

            const SizedBox(height: 20),

            // Image Demo
            const Text(
              'Image Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 100,
                width: 100,
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // CircleAvatar Demo
            const Text(
              'CircleAvatar Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
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
