import 'package:flutter/material.dart';
import 'odd_even.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OddEvenPage(),  // This connects to your OddEvenPage
    );
  }
}