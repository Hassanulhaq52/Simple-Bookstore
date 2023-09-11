import 'package:flutter/material.dart';

import '../model/book_model.dart';
import '../screens/book_details_screen.dart';
import 'book_list.dart';

class BooksCard extends StatelessWidget {
  const BooksCard({
    super.key,
    required this.book,
    required this.widget,
  });

  final BooksModel book;
  final BookList widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    BookDetailsScreen(book: book, cart: widget.cart),
              ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(book.image, width: 400, height: 420, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 4, top: 12),
              child: Text(
                book.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 4),
              child: Text(
                'By ${book.author}',
                style:
                    const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 8, top: 10),
              child: Text(
                'Buy Now in Just \$${book.price.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
