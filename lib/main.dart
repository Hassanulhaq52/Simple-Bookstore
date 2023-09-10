import 'package:flutter/material.dart';
import 'package:simple_bookstore/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Bookstore App',

      home: HomeScreen(),
    );
  }
}


