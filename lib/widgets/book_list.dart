// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/book_details_screen.dart';
// import 'package:simple_bookstore/utils/constants.dart';
//
// import '../model/book_model.dart';
//
// class BookList extends StatelessWidget {
//   const BookList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Book> books = [
//       Book('QUEERBOOK', 'Maia Kobabe', 20, Constants.queerBookDescription, 'images/queens.png'),
//       Book('THE NOTE', 'Nicholas Sparks', 30, Constants.noteBookDescription, 'images/the_note.png'),
//       Book('THE PATIENT', 'Eric Topol', 25, Constants.patientBookDescription, 'images/the_patient.png'),
//     ];
//
//     return ListView.builder(
//       itemCount: books.length,
//       itemBuilder: (context, index) {
//         final book = books[index];
//         return ListTile(
//           leading: Image.asset(book.image),
//           title: Text(book.title),
//           subtitle: Text(book.author),
//           trailing: Text('\$${book.price.toStringAsFixed(2)}'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => BookDetailsScreen(book: book),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/book_details_screen.dart';
// import 'package:simple_bookstore/utils/constants.dart';
//
// import '../model/book_model.dart';
//
// class BookList extends StatelessWidget {
//   const BookList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Book> books = [
//       Book('QUEERBOOK', 'Maia Kobabe', 20, Constants.queerBookDescription, 'images/queens.png'),
//       Book('THE NOTE', 'Nicholas Sparks', 30, Constants.noteBookDescription, 'images/the_note.png'),
//       Book('THE PATIENT', 'Eric Topol', 25, Constants.patientBookDescription, 'images/the_patient.png'),
//     ];
//
//     return ListView.builder(
//       itemCount: books.length,
//       itemBuilder: (context, index) {
//         final book = books[index];
//         return Card(
//           elevation: 4, // Add some elevation for a professional look
//           margin: EdgeInsets.all(8), // Add margin for spacing
//           child: ListTile(
//             leading: Container(
//               width: 80, // Set the width of the image container
//               height: 180, // Set the height of the image container
//               child: Image.asset(
//                 book.image,
//                 fit: BoxFit.cover, // Ensure the image covers the container
//               ),
//             ),
//             title: Text(
//               book.title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold, // Make the title bold
//                 fontSize: 16, // Adjust the font size
//               ),
//             ),
//             subtitle: Text(
//               book.author,
//               style: TextStyle(
//                 fontSize: 14, // Adjust the font size
//               ),
//             ),
//             trailing: Text(
//               '\$${book.price.toStringAsFixed(2)}',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold, // Make the price bold
//                 fontSize: 16, // Adjust the font size
//               ),
//             ),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => BookDetailsScreen(book: book),
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/book_details_screen.dart';
// import 'package:simple_bookstore/utils/constants.dart';
//
// import '../model/book_model.dart';
//
// class BookList extends StatelessWidget {
//   const BookList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Book> books = [
//       Book('QUEERBOOK', 'Maia Kobabe', 20, Constants.queerBookDescription, 'images/queens.png'),
//       Book('THE NOTE', 'Nicholas Sparks', 30, Constants.noteBookDescription, 'images/the_note.png'),
//       Book('THE PATIENT', 'Eric Topol', 25, Constants.patientBookDescription, 'images/the_patient.png'),
//     ];
//
//     return ListView.builder(
//       itemCount: books.length,
//       itemBuilder: (context, index) {
//         final book = books[index];
//         return Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Card(
//             elevation: 4, // Add some elevation for a professional look
//             margin: EdgeInsets.all(8), // Add margin for spacing
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => BookDetailsScreen(book: book),
//                   ),
//                 );
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset(
//                     width: 400,
//                     height: 350,
//                     book.image,
//
//                     // fit: BoxFit.cover, // Ensure the image covers the container
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 60, bottom: 6, top: 8),
//                     child: Text(
//                       book.title,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold, // Make the title bold
//                         fontSize: 18, // Adjust the font size
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 60, bottom: 6, top: 8),
//                     child: Text(
//                       book.author,
//                       style: TextStyle(
//                         fontSize: 16, // Adjust the font size
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 60, bottom: 6, top: 8),
//                     child: Text(
//                       '\$${book.price.toStringAsFixed(2)}',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold, // Make the price bold
//                         fontSize: 18, // Adjust the font size
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:simple_bookstore/screens/book_details_screen.dart';
// import 'package:simple_bookstore/utils/constants.dart';
//
// import '../model/book_model.dart';
//
// class BookList extends StatefulWidget {
//   const BookList({super.key});
//
//   @override
//   _BookListState createState() => _BookListState();
// }
//
// class _BookListState extends State<BookList> {
//   TextEditingController searchController = TextEditingController();
//   List<BooksModel> books = [
//   BooksModel(
//          title: 'QUEERBOOK', author: 'Maia Kobabe', price: 20, description: Constants.queerBookDescription, image: 'images/queens.png',),
//     BooksModel( title: 'THE NOTE', author: 'Nicholas Sparks', price: 30, description: Constants.noteBookDescription, image: 'images/the_note.png',),
//     BooksModel( title: 'THE PATIENT', author: 'Eric Topol', price: 25, description: Constants.patientBookDescription, image: 'images/the_patient.png',),
//   ];
//   List<BooksModel> filteredBooks = [];
//
//   @override
//   void initState() {
//     super.initState();
//     filteredBooks.addAll(books); // Initialize filteredBooks with all books
//   }
//
//   void filterBooks(String query) {
//     filteredBooks.clear();
//     if (query.isEmpty) {
//       filteredBooks.addAll(books); // If the query is empty, show all books
//     } else {
//       filteredBooks.addAll(books.where((book) =>
//       book.title.toLowerCase().contains(query.toLowerCase()) ||
//           book.author.toLowerCase().contains(query.toLowerCase())).toList());
//     }
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         title: Text("Bookstore"),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search,color: Colors.black,size: 30,),
//             onPressed: () {
//               showSearch(context: context, delegate: BookSearch(books)); // Pass the 'books' list
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: filteredBooks.length,
//         itemBuilder: (context, index) {
//           final book = filteredBooks[index];
//           return Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Card(
//               elevation: 4,
//               margin: EdgeInsets.all(8),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => BookDetailsScreen(book: book, cart: cart,),
//                     ),
//                   );
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       book.image,
//                       width: 400,
//                       height: 420,
//                       fit: BoxFit.cover,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20, bottom: 4, top: 12),
//                       child: Text(
//                         book.title,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20, bottom: 4, top: 6),
//                       child: Text(
//                         book.author,
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20, bottom: 4, top: 6),
//                       child: Text(
//                         '\$${book.price.toStringAsFixed(2)}',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class BookSearch extends SearchDelegate<BooksModel> {
//   final List<BooksModel> books;
//
//   BookSearch(this.books);
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
//
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // Implement the search results here
//     final searchResults = books.where((book) =>
//     book.title.toLowerCase().contains(query.toLowerCase()) ||
//         book.author.toLowerCase().contains(query.toLowerCase()));
//     return ListView.builder(
//       itemCount: searchResults.length,
//       itemBuilder: (context, index) {
//         final book = searchResults.elementAt(index);
//         return ListTile(
//           title: Text(book.title),
//           subtitle: Text(book.author),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => BookDetailsScreen(book: book),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // You can implement suggestions here, if needed
//     return Container();
//   }
// }

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
    filteredBooks.addAll(books); // Initialize filteredBooks with all books
  }

  void filterBooks(String query) {
    filteredBooks.clear();
    if (query.isEmpty) {
      filteredBooks.addAll(books); // If the query is empty, show all books
    } else {
      filteredBooks.addAll(books.where((book) =>
          book.title.toLowerCase().contains(query.toLowerCase()) ||
          book.author.toLowerCase().contains(query.toLowerCase())));
    }
    setState(() {});
  }

  // static BooksModel? getBookById(String id) {
  //   return books.firstWhere((book) => book.id == id, orElse: () => null);
  // }

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
                          const EdgeInsets.only(left: 20, bottom: 4, top: 12),
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
                          const EdgeInsets.only(left: 20, bottom: 4, top: 6),
                      child: Text(
                        book.author,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, bottom: 4, top: 6),
                      child: Text(
                        '\$${book.price.toStringAsFixed(2)}',
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
    // You can implement suggestions here, if needed
    return Container();
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:simple_bookstore/application/books_bloc/books_bloc.dart';
// import 'package:simple_bookstore/screens/book_details_screen.dart';
// import 'package:simple_bookstore/utils/constants.dart';
//
// import '../model/book_model.dart';
//
// class BookList extends StatefulWidget {
//   const BookList({super.key});
//
//   @override
//   _BookListState createState() => _BookListState();
// }
//
// class _BookListState extends State<BookList> {
//   TextEditingController searchController = TextEditingController();
//   List<BooksModel> books = [
//     BooksModel(
//          title: 'QUEERBOOK', author: 'Maia Kobabe', price: 20, description: Constants.queerBookDescription, image: 'images/queens.png',),
//     BooksModel( title: 'THE NOTE', author: 'Nicholas Sparks', price: 30, description: Constants.noteBookDescription, image: 'images/the_note.png',),
//     BooksModel( title: 'THE PATIENT', author: 'Eric Topol', price: 25, description: Constants.patientBookDescription, image: 'images/the_patient.png',),
//   ];
//   List<BooksModel> filteredBooks = [];
//
//   @override
//   void initState() {
//     super.initState();
//     filteredBooks.addAll(books); // Initialize filteredBooks with all books
//   }
//
//   void filterBooks(String query) {
//     filteredBooks.clear();
//     if (query.isEmpty) {
//       filteredBooks.addAll(books); // If the query is empty, show all books
//     } else {
//       filteredBooks.addAll(books
//           .where((book) =>
//               book.title.toLowerCase().contains(query.toLowerCase()) ||
//               book.author.toLowerCase().contains(query.toLowerCase()))
//           .toList());
//     }
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BooksBloc, BooksState>(builder: (context, state) {
//       return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0.0,
//           title: Text("Bookstore"),
//           actions: [
//             IconButton(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.black,
//                 size: 30,
//               ),
//               onPressed: () {
//                 showSearch(
//                     context: context,
//                     delegate: BookSearch(books)); // Pass the 'books' list
//               },
//             ),
//           ],
//         ),
//         body: ListView.builder(
//           itemCount: filteredBooks.length,
//           itemBuilder: (context, index) {
//             final book = filteredBooks[index];
//             return Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Card(
//                 elevation: 4,
//                 margin: EdgeInsets.all(8),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => BookDetailsScreen(book: book),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         book.image,
//                         width: 400,
//                         height: 420,
//                         fit: BoxFit.cover,
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(left: 20, bottom: 4, top: 12),
//                         child: Text(
//                           state.title,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(left: 20, bottom: 4, top: 6),
//                         child: Text(
//                           state.author,
//                           style: TextStyle(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(left: 20, bottom: 4, top: 6),
//                         child: Text(
//                           '\$${state.price.toStringAsFixed(2)}',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       );
//     });
//   }
// }
//
// class BookSearch extends SearchDelegate<BooksModel> {
//   final List<BooksModel> books;
//
//   BookSearch(this.books);
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // Implement the search results here
//     final searchResults = books.where((book) =>
//         book.title.toLowerCase().contains(query.toLowerCase()) ||
//         book.author.toLowerCase().contains(query.toLowerCase()));
//     return ListView.builder(
//       itemCount: searchResults.length,
//       itemBuilder: (context, index) {
//         final book = searchResults.elementAt(index);
//         return ListTile(
//           title: Text(book.title),
//           subtitle: Text(book.author),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => BookDetailsScreen(book: book),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // You can implement suggestions here, if needed
//     return Container();
//   }
// }
