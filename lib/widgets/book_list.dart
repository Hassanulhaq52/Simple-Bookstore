import 'package:flutter/material.dart';
import 'package:simple_bookstore/screens/book_details_screen.dart';
import 'package:simple_bookstore/utils/constants.dart';

import '../model/book_model.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Book> books = [
      Book('QUEERBOOK', 'Maia Kobabe', 20, Constants.queerBookDescription, 'images/queens.png'),
      Book('THE NOTE', 'Nicholas Sparks', 30, Constants.noteBookDescription, 'images/the_note.png'),
      Book('THE PATIENT', 'Eric Topol', 25, Constants.patientBookDescription, 'images/the_patient.png'),
    ];

    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return ListTile(
          leading: Image.asset(book.image),
          title: Text(book.title),
          subtitle: Text(book.author),
          trailing: Text('\$${book.price.toStringAsFixed(2)}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailsScreen(book: book),
              ),
            );
          },
        );
      },
    );
  }
}
