// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/cart_screen.dart';
//
// import '../widgets/book_list.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bookstore'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               // Navigate to Cart Page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>  CartScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: const BookList(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/cart_screen.dart';
// import 'package:simple_bookstore/widgets/book_list.dart';
// import 'package:simple_bookstore/model/cart.dart'; // Import the Cart class
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final Cart cart = Cart(); // Create a Cart object
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bookstore'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               // Navigate to Cart Page and pass the cart object
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => CartScreen(cart: cart)),
//               );
//             },
//           ),
//         ],
//       ),
//       body: BookList(cart: cart), // Pass the cart object to the BookList widget
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import '../model/cart.dart';
// import '../widgets/book_list.dart';
// import 'cart_screen.dart';
//
// class HomeScreen extends StatefulWidget {
//   final Cart cart;
//
//   const HomeScreen({Key? key, required this.cart}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   @override
//   void dispose() {
//     widget.cart.saveToPrefs(); // Save cart data to SharedPreferences when the app is closed
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     int cartItemCount = widget.cart.items.length; // Add this line
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bookstore'),
//         actions: [
//           Stack(
//             alignment: Alignment.topRight,
//             children: [
//               IconButton(
//                 icon: Icon(Icons.shopping_cart),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => CartScreen(cart: widget.cart),
//                     ),
//                   );
//                 },
//               ),
//               cartItemCount > 0
//                   ? CircleAvatar(
//                       radius: 10.0,
//                       backgroundColor: Colors.red,
//                       foregroundColor: Colors.white,
//                       child: Text(
//
//                         cartItemCount.toString(),
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     )
//                   : SizedBox.shrink(),
//               // Hide the indicator if cartItemCount is 0
//             ],
//           ),
//         ],
//       ),
//       body: BookList(cart: widget.cart),
//     );
//   }
// }



import 'package:flutter/material.dart';

import '../model/cart.dart';
import '../widgets/book_list.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  final Cart cart;

  const HomeScreen({Key? key, required this.cart}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cartItemCount = 0; // Initialize cartItemCount

  @override
  void initState() {
    super.initState();
    updateCartItemCount(); // Initialize cartItemCount when the screen is created
  }

  // Function to update cart item count
  void updateCartItemCount() {
    setState(() {
      cartItemCount = widget.cart.items.length;
    });
  }

  @override
  void dispose() {
    widget.cart.saveToPrefs(); // Save cart data to SharedPreferences when the app is closed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookstore'),
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CartScreen(cart: widget.cart);
                      },
                    ),
                  ).then((_) {
                    // This code will run when you pop the CartScreen
                    setState(() {
                      // Update cart item count immediately when returning from CartScreen
                      cartItemCount = widget.cart.getCartItemCount();
                    });// Update cart item count after returning from CartScreen
                  });
                },
              ),
              cartItemCount > 0
                  ? CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Text(
                  cartItemCount.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              )
                  : SizedBox.shrink(),
              // Hide the indicator if cartItemCount is 0
            ],
          ),
        ],
      ),
      body: BookList(cart: widget.cart),
    );
  }
}










