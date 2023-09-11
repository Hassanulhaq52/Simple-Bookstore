import 'package:flutter/material.dart';

import '../model/cart.dart';
import 'home_screen.dart';

class CartScreen extends StatefulWidget {
  final Cart cart;

  const CartScreen({Key? key, required this.cart}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => HomeScreen(cart: widget.cart),
          ),
          (route) => false, // Remove all existing routes
        );
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Cart'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(cart: widget.cart),
                ),
                (route) => false, // Remove all existing routes
              );
            },
          ),
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
                                      widget.cart.updateQuantity(
                                          item, item.quantity - 1);
                                    }
                                  });
                                  widget.cart.items.removeWhere(
                                      (cartItem) => cartItem.quantity == 0);
                                },
                              ),
                              Text(item.quantity.toString()),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    widget.cart.updateQuantity(
                                        item, item.quantity + 1);
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
                                      content: Text(
                                          '${book.title} removed from cart.'),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}













