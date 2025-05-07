import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Navigation'),
          backgroundColor: Colors.purple,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: 'Mobil'),
              Tab(icon: Icon(Icons.directions_transit), text: 'Kereta'),
              Tab(icon: Icon(Icons.directions_bike), text: 'Sepeda'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab Mobil')),
            Center(child: Text('Tab Kereta')),
            Center(child: Text('Tab Sepeda')),
          ],
        ),
      ),
    );
  }
}
