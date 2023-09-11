import 'package:flutter/material.dart';

import 'package:simple_bookstore/screens/home_screen.dart';

import '../model/cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cart = Cart();
  try {
    await cart.loadFromPrefs();
  } catch (e) {
    print('Error loading cart data: $e');
  }
  runApp(MyApp(cart: cart));
}

class MyApp extends StatelessWidget {
  final Cart cart;

  const MyApp({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Bookstore App',
      home: HomeScreen(
        cart: cart,
      ),
    );
  }
}
