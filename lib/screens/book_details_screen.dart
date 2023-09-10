import 'package:flutter/material.dart';
import 'package:simple_bookstore/screens/cart_screen.dart';

import '../model/book_model.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  const BookDetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(book.image),
          Text('Title: ${book.title}'),
          Text('Author: ${book.author}'),
          Text('Price: \$${book.price.toStringAsFixed(2)}'),
          Text('Description: ${book.description}'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}