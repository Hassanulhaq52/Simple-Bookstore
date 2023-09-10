import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookstore'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // // Navigate to Cart Page
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ),
              // );
            },
          ),
        ],
      ),
      // body: ,
    );
  }
}
