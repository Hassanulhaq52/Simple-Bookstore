import 'package:flutter/material.dart';
import 'package:simple_bookstore/screens/book_details_screen.dart';
import 'package:simple_bookstore/utils/constants.dart';

import '../model/book_model.dart';
import '../model/cart.dart';

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
      id: '1',
    ),
    BooksModel(
      title: 'THE NOTE',
      author: 'Nicholas Sparks',
      price: 30,
      description: Constants.noteBookDescription,
      image: 'images/the_note.png',
      id: '2',
    ),
    BooksModel(
      title: 'THE PATIENT',
      author: 'Eric Topol',
      price: 25,
      description: Constants.patientBookDescription,
      image: 'images/the_patient.png',
      id: '3',
    ),
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
        title: Text("Bookstore"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              showSearch(
                  context: context, delegate: BookSearch(books, widget.cart));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredBooks.length,
        itemBuilder: (context, index) {
          final book = filteredBooks[index];
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailsScreen(book: book, cart: widget.cart),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      book.image,
                      width: 400,
                      height: 420,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 4, top: 12),
                      child: Text(
                        book.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 4,),
                      child: Text(
                        'written by ${book.author}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 8, top: 10),
                      child: Text(
                        'Buy Now in Just \$${book.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BookSearch extends SearchDelegate<BooksModel> {
  final List<BooksModel> books;
  final Cart cart;

  BookSearch(this.books, this.cart);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement the search results here
    final searchResults = books.where((book) =>
        book.title.toLowerCase().contains(query.toLowerCase()) ||
        book.author.toLowerCase().contains(query.toLowerCase()));
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final book = searchResults.elementAt(index);
        return ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailsScreen(book: book, cart: cart),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    return Container();
  }
}











