// import 'package:flutter/material.dart';
//
// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Implement Cart Page UI and logic here
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       // Build the cart items list and calculate the total price
//       body: const Center(
//         child: Text('Your shopping cart is empty.'),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// import 'book_details_screen.dart';
//
// class CartScreen extends StatelessWidget {
//   final Cart? cart;
//
//   const CartScreen({Key? key, this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       body: cart!.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart?.items.length,
//               itemBuilder: (context, index) {
//                 final book = cart?.items[index];
//                 return ListTile(
//                   title: Text(book!.title),
//                   subtitle: Text(book!.author),
//                   trailing: IconButton(
//                     icon: Icon(Icons.remove_shopping_cart),
//                     onPressed: () {
//                       cart?.items.remove(book);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('${book.title} removed from cart.'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${cart?.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


//
// import 'package:flutter/material.dart';
// import 'book_details_screen.dart';
//
// class CartScreen extends StatelessWidget {
//   final Cart? cart;
//
//   const CartScreen({Key? key, this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       body: cart == null || cart!.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart!.items.length,
//               itemBuilder: (context, index) {
//                 final book = cart!.items[index];
//                 return ListTile(
//                   title: Text(book.title),
//                   subtitle: Text(book.author),
//                   trailing: IconButton(
//                     icon: Icon(Icons.remove_shopping_cart),
//                     onPressed: () {
//                       cart!.items.remove(book);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('${book.title} removed from cart.'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${cart!.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// import 'book_details_screen.dart';
// class CartScreen extends StatelessWidget {
//   final Cart? cart;
//
//   const CartScreen({Key? key, this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       body: cart == null || cart!.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart!.items.length,
//               itemBuilder: (context, index) {
//                 final book = cart!.items[index];
//                 return ListTile(
//                   title: Text(book.title),
//                   subtitle: Text(book.author),
//                   trailing: IconButton(
//                     icon: Icon(Icons.remove_shopping_cart),
//                     onPressed: () {
//                       if (cart != null) {
//                         cart!.items.remove(book);
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text('${book.title} removed from cart.'),
//                             duration: Duration(seconds: 2),
//                           ),
//                         );
//                       }
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${cart!.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// import '../model/book_model.dart';
// import 'package:simple_bookstore/model/cart.dart';
//
// class CartScreen extends StatelessWidget {
//   final Cart cart;
//
//   const CartScreen({Key? key, required this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       body: cart.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.items.length,
//               itemBuilder: (context, index) {
//                 final book = cart.items[index];
//                 return ListTile(
//                   title: Text(book.title),
//                   subtitle: Text(book.author),
//                   trailing: IconButton(
//                     icon: Icon(Icons.remove_shopping_cart),
//                     onPressed: () {
//                       cart.items.remove(book);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('${book.title} removed from cart.'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${cart.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// import '../model/cart.dart';
//
//
// class CartScreen extends StatefulWidget {
//   final Cart cart;
//
//   CartScreen({required this.cart});
//
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       body: widget.cart.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: widget.cart.items.length,
//               itemBuilder: (context, index) {
//                 final book = widget.cart.items[index];
//                 return ListTile(
//                   title: Text(book.title),
//                   subtitle: Text(book.author),
//                   trailing: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.remove),
//                             onPressed: () {
//                               setState(() {
//                                 if (book.quantity > 1) {
//                                   book.quantity--;
//                                 }
//                               });
//                             },
//                           ),
//                           Text(book.quantity.toString()),
//                           IconButton(
//                             icon: Icon(Icons.add),
//                             onPressed: () {
//                               setState(() {
//                                 book.quantity++;
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                       // Expanded(
//                       //   child: Text(
//                       //     'Price: \$${(book.price * book.quantity).toStringAsFixed(2)}',
//                       //     style: TextStyle(
//                       //       fontSize: 16,
//                       //       fontWeight: FontWeight.bold,
//                       //     ),
//                       //   ),
//                       // ),
//                     ],
//
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${widget.cart.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/model/book_model.dart';
// import 'package:simple_bookstore/model/cart.dart';
//
// class CartScreen extends StatefulWidget {
//   final Cart cart;
//
//   const CartScreen({Key? key, required this.cart}) : super(key: key);
//
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping Cart'),
//       ),
//       body: widget.cart.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: widget.cart.items.length,
//               itemBuilder: (context, index) {
//                 final book = widget.cart.items[index];
//                 return ListTile(
//                   title: Text(book.title),
//                   subtitle: Text(book.author),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.remove),
//                         onPressed: () {
//                           setState(() {
//                             if (book.quantity > 1) {
//                               book.quantity--;
//                             }
//                           });
//                         },
//                       ),
//                       Text(book.quantity.toString()),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: () {
//                           setState(() {
//                             book.quantity++;
//                           });
//                         },
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.remove_shopping_cart),
//                         onPressed: () {
//                           setState(() {
//                             widget.cart.items.remove(book);
//                           });
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text('${book.title} removed from cart.'),
//                               duration: Duration(seconds: 2),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${widget.cart.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../model/cart.dart';


class CartScreen extends StatefulWidget {
  final Cart cart;

  const CartScreen({Key? key, required this.cart}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: widget.cart.items.isEmpty
          ? Center(
        child: Text('Your shopping cart is empty.'),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.items.length,
              itemBuilder: (context, index) {
                final item = widget.cart.items[index];
                final book = item.book;
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {

                            if (item.quantity > 1) {
                              widget.cart.updateQuantity(item, item.quantity - 1);

                            }
                          });
                          widget.cart.items.removeWhere((cartItem) =>
                          cartItem.quantity == 0);
                        },
                      ),
                      Text(item.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {

                          setState(() {

                            widget.cart.updateQuantity(item, item.quantity + 1);
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.remove_shopping_cart),
                        onPressed: () {

                          setState(() {
                            widget.cart.removeItem(item);
                            widget.cart.items.remove(item);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${book.title} removed from cart.'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Price: \$${widget.cart.totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// import '../model/cart.dart';
//
// class CartScreen extends StatelessWidget {
//   final Cart cart;
//
//   const CartScreen({Key? key, required this.cart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int cartItemCount = cart.items.length; // Add this line
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: cart.items.isEmpty
//           ? Center(
//         child: Text('Your shopping cart is empty.'),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.items.length,
//               itemBuilder: (context, index) {
//                 final cartItem = cart.items[index];
//                 return ListTile(
//                   title: Text(cartItem.book.title),
//                   subtitle: Text(cartItem.book.author),
//                   trailing: IconButton(
//                     icon: Icon(Icons.remove_shopping_cart),
//                     onPressed: () {
//                       cart.items.remove(cartItem);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content:
//                           Text('${cartItem.book.title} removed from cart.'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Total Price: \$${cart.totalPrice.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Text(
//             'Number of Items in Cart: $cartItemCount', // Display the cart item count
//           ),
//         ],
//       ),
//     );
//   }
// }
