// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/cart_screen.dart';
//
// import '../model/book_model.dart';
//
// class BookDetailsScreen extends StatelessWidget {
//   final Book book;
//
//   const BookDetailsScreen({super.key, required this.book});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(book.title),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(book.image,
//               height: 500,
//               width: 300,),
//               Text('Title: ${book.title}'),
//               Text('Author: ${book.author}'),
//               Text('Price: \$${book.price.toStringAsFixed(2)}'),
//               Text('Description: ${book.description}'),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const CartScreen(),
//                     ),
//                   );
//                 },
//                 child: const Text('Add to Cart'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/cart_screen.dart';
//
// import '../model/book_model.dart';
//
// class BookDetailsScreen extends StatelessWidget {
//   final BooksModel book;
//
//   const BookDetailsScreen({Key? key, required this.book}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(book.title),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 400,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     book.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 book.title,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Author: ${book.author}',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Price: \$${book.price.toStringAsFixed(2)}',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Description:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 book.description,
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const CartScreen(),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue, // Button color
//                   elevation: 3, // Shadow
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   child: Text(
//                     'Add to Cart',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/cart_screen.dart';
//
// import '../model/book_model.dart';
//
// class Cart {
//   final List<BooksModel> items = [];
//
//   double get totalPrice => items.fold(0, (total, book) => total + book.price);
// }
//
// class BookDetailsScreen extends StatelessWidget {
//   final BooksModel book;
//   final Cart? cart;
//
//   const BookDetailsScreen({Key? key, required this.book, this.cart})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(book.title),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 400,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     book.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 book.title,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Author: ${book.author}',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Price: \$${book.price.toStringAsFixed(2)}',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Description:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 book.description,
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () {
//                   cart?.items.add(book);
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text('Added to Cart'),
//                         content: Text('${book.title} has been added to your cart.'),
//                         actions: <Widget>[
//                           TextButton(
//                             child: Text('OK'),
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                   elevation: 3,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   child: Text(
//                     'Add to Cart',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import '../model/book_model.dart';
// class Cart {
//   final List<BooksModel> items = [];
//
//   double get totalPrice => items.fold(0, (total, book) => total + book.price);
// }
//
// class BookDetailsScreen extends StatelessWidget {
//   final BooksModel book;
//   final Cart? cart;
//
//   const BookDetailsScreen({Key? key, required this.book, this.cart})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(book.title),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 400,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     book.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 book.title,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Author: ${book.author}',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Price: \$${book.price.toStringAsFixed(2)}',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Description:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 book.description,
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () {
//                   cart?.items.add(book);
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text('Added to Cart'),
//                         content: Text('${book.title} has been added to your cart.'),
//                         actions: <Widget>[
//                           TextButton(
//                             child: Text('OK'),
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                   elevation: 3,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   child: Text(
//                     'Add to Cart',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import '../model/book_model.dart';
//
// class Cart {
//   final List<BooksModel> items = [];
//
//   double get totalPrice => items.fold(0, (total, book) => total + book.price);
// }
//
//
// class BookDetailsScreen extends StatefulWidget {
//   final BooksModel book;
//   final Cart? cart;
//
//   const BookDetailsScreen({Key? key, required this.book, this.cart}) : super(key: key);
//
//   @override
//   _BookDetailsScreenState createState() => _BookDetailsScreenState();
// }
//
// class _BookDetailsScreenState extends State<BookDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.book.title),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 400,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     widget.book.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 widget.book.title,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Author: ${widget.book.author}',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Price: \$${widget.book.price.toStringAsFixed(2)}',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Description:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 widget.book.description,
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () {
//                   if (widget.cart != null) {
//                     widget.cart!.items.add(widget.book);
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Added to Cart'),
//                           content: Text('${widget.book.title} has been added to your cart.'),
//                           actions: <Widget>[
//                             TextButton(
//                               child: Text('OK'),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                   elevation: 3,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   child: Text(
//                     'Add to Cart',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import '../model/book_model.dart';
// import 'package:simple_bookstore/model/cart.dart';
//
// class BookDetailsScreen extends StatefulWidget {
//   final BooksModel book;
//   final Cart cart;
//
//   const BookDetailsScreen({Key? key, required this.book, required this.cart})
//       : super(key: key);
//
//   @override
//   _BookDetailsScreenState createState() => _BookDetailsScreenState();
// }
//
// class _BookDetailsScreenState extends State<BookDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.book.title),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 400,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(20),
//                     child: Image.asset(
//                       widget.book.image,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   widget.book.title,
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Author: ${widget.book.author}',
//                   style: TextStyle(fontSize: 16, color: Colors.grey),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Price: \$${widget.book.price.toStringAsFixed(2)}',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Description:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   widget.book.description,
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 24),
//                 ElevatedButton(
//                   onPressed: () {
//                     widget.cart.items.add(widget.book);
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Added to Cart'),
//                           content: Text(
//                               '${widget.book.title} has been added to your cart.'),
//                           actions: <Widget>[
//                             TextButton(
//                               child: Text('OK'),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blue,
//                     elevation: 3,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 24, vertical: 12),
//                     child: Text(
//                       'Add to Cart',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

import '../model/book_model.dart';
import 'package:simple_bookstore/model/cart.dart';

class BookDetailsScreen extends StatefulWidget {
  final BooksModel book;
  final Cart cart;
  final Function()? updateCartItemCount;

  const BookDetailsScreen({Key? key, required this.book, required this.cart,this.updateCartItemCount,})
      : super(key: key);

  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.book.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                widget.book.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Author: ${widget.book.author}',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                'Price: \$${widget.book.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Description:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                widget.book.description,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  bool isBookInCart = false;

                  for (final item in widget.cart.items) {
                    if (item.book.id == widget.book.id) {
                      isBookInCart = true;
                      break;
                    }
                  }

                  if (isBookInCart) {
                    // Book is already in the cart, you can show a message or handle it as needed
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Book Already in Cart'),
                          content: Text('${widget.book.title} is already in your cart.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // Book is not in the cart, add it
                    final cartItem = CartItem(book: widget.book);
                    widget.cart.items.add(cartItem);
                    widget.cart.saveToPrefs(); // Save cart
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Added to Cart'),
                          content: Text('${widget.book.title} has been added to your cart.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 3,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}









