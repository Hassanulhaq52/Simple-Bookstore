import 'package:flutter/material.dart';
import 'package:simple_bookstore/utils/constants.dart';
import 'package:simple_bookstore/widgets/search_books.dart';

import '../model/book_model.dart';
import '../model/cart.dart';
import 'books_card.dart';

class BookList extends StatefulWidget {
  const BookList({Key? key, required this.cart}) : super(key: key);

  final Cart cart;

  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  TextEditingController searchController = TextEditingController();
  List<BooksModel> books = [
    BooksModel(
        title: 'QUEERBOOK',
        author: 'Maia Kobabe',
        price: 20,
        description: Constants.queerBookDescription,
        image: 'images/queens.png',
        id: '1'),
    BooksModel(
        title: 'THE NOTE',
        author: 'Nicholas Sparks',
        price: 30,
        description: Constants.noteBookDescription,
        image: 'images/the_note.png',
        id: '2'),
    BooksModel(
        title: 'THE PATIENT',
        author: 'Eric Topol',
        price: 25,
        description: Constants.patientBookDescription,
        image: 'images/the_patient.png',
        id: '3'),
  ];
  List<BooksModel> filteredBooks = [];

  @override
  void initState() {
    super.initState();
    filteredBooks.addAll(books);
  }

  void filterBooks(String query) {
    filteredBooks.clear();
    if (query.isEmpty) {
      filteredBooks.addAll(books);
    } else {
      filteredBooks.addAll(books.where((book) =>
          book.title.toLowerCase().contains(query.toLowerCase()) ||
          book.author.toLowerCase().contains(query.toLowerCase())));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text("Bookstore"),
          actions: [
            IconButton(
                icon: const Icon(Icons.search, color: Colors.black, size: 30),
                onPressed: () {
                  showSearch(
                      context: context,
                      delegate: SearchBooks(books, widget.cart));
                })
          ]),
      body: ListView.builder(
        itemCount: filteredBooks.length,
        itemBuilder: (context, index) {
          final book = filteredBooks[index];
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: BooksCard(book: book, widget: widget),
          );
        },
      ),
    );
  }
}
