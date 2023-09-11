// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:simple_bookstore/application/books_bloc/books_bloc.dart';
// import 'package:simple_bookstore/screens/home_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple Bookstore App',
//       home: HomeScreen(),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// import 'package:simple_bookstore/screens/home_screen.dart';
// import 'package:simple_bookstore/model/cart.dart'; // Import your Cart class
//
// void main() {
//   final cart = Cart(); // Create a Cart object
//   runApp(MyApp(cart: cart)); // Pass the Cart object to MyApp
// }
//
// class MyApp extends StatelessWidget {
//   final Cart cart; // Add a Cart parameter to MyApp
//
//   const MyApp({Key? key, required this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple Bookstore App',
//       home: HomeScreen(cart: cart), // Pass the Cart object to HomeScreen
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:simple_bookstore/screens/book_details_screen.dart';
import 'package:simple_bookstore/screens/home_screen.dart';
import 'package:simple_bookstore/utils/constants.dart';

import '../model/book_model.dart';
import '../model/cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cart = Cart();
  try {
    await cart.loadFromPrefs();
  } catch (e) {
    print('Error loading cart data: $e');
    // Handle the error gracefully, e.g., by initializing an empty cart.
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
      home: HomeScreen(cart: cart,),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:simple_bookstore/model/cart.dart';
// import 'package:simple_bookstore/screens/home_screen.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // Required for async methods
//   final cart = Cart(); // Create an instance of the cart
//   await cart.loadFromPrefs(); // Load the cart from SharedPreferences
//   runApp(MyApp(cart: cart)); // Pass the cart to your app
// }
//
// class MyApp extends StatelessWidget {
//   final Cart cart;
//
//   const MyApp({Key? key, required this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple Bookstore App',
//       home: HomeScreen(cart: cart),
//     );
//   }
// }
//
// // ... (other code)
//
