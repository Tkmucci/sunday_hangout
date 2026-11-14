import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'After Church Hangout',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sunday Hangout')),

        body: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Where should we go after church?'),
              SizedBox(height: 16),
              RestaurantCard(
                  name: 'Nehemiah Coffee',
                  location: 'Arlington',
                  price: '\$\$'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.name,
    required this.location,
    required this.price,
  });

  final String name;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(17),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Restaurant: $name',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Location: $location'),
            Text('Price: $price'),
          ],
        ),
      ),
    );
  }

}