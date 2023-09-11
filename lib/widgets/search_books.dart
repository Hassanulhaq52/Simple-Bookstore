import 'package:flutter/material.dart';

import '../model/book_model.dart';
import '../model/cart.dart';
import '../screens/book_details_screen.dart';

class SearchBooks extends SearchDelegate<BooksModel> {
  final List<BooksModel> books;
  final Cart cart;

  SearchBooks(this.books, this.cart);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
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
