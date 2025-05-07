import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
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
        title: const Text('Flutter Layout Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Row Demo
            const Text(
              'Row Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              color: Colors.amber.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 50, color: Colors.red),
                  Container(width: 50, color: Colors.green),
                  Container(width: 50, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Column Demo
            const Text(
              'Column Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              color: Colors.amber.shade100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 30, color: Colors.red, width: 100),
                  Container(height: 30, color: Colors.green, width: 100),
                  Container(height: 30, color: Colors.blue, width: 100),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ListView Demo
            const Text(
              'ListView Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 80,
                    margin: const EdgeInsets.all(8),
                    color: Colors.primaries[index % Colors.primaries.length],
                    child: Center(child: Text('Item ${index + 1}')),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // GridView Demo
            const Text(
              'GridView Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.primaries[index % Colors.primaries.length],
                    child: Center(child: Text('Grid ${index + 1}')),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // AspectRatio Demo
            const Text(
              'AspectRatio Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.orange),
            ),
            const SizedBox(height: 20),

            // Center & Expanded Demo
            const Text(
              'Center & Expanded Widgets:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 80,
              color: Colors.amber.shade100,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.purple.shade200),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Centered'),
                    ),
                  ),
                  Expanded(child: Container(color: Colors.purple.shade200)),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Wrap Demo
            const Text(
              'Wrap Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                8,
                (index) => Chip(
                  label: Text('Chip ${index + 1}'),
                  backgroundColor:
                      Colors.primaries[index % Colors.primaries.length],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Stack Demo
            const Text(
              'Stack Widget:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: Stack(
                children: [
                  Container(color: Colors.blue.shade200),
                  const Center(
                    child: Text('Stacked Text', style: TextStyle(fontSize: 24)),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black54,
                      child: const Text(
                        'Positioned Text',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
