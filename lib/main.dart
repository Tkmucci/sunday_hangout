import 'package:flutter/material.dart';

void main() {
  runApp(const AfterAmen());
}

class AfterAmen extends StatelessWidget {
  const AfterAmen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(title: 'After Amen'),
    );
  }
}
