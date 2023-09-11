// cart.dart

// class Cart {
//   final List<BooksModel> items = [];
//
//   double get totalPrice => items.fold(0, (total, book) => total + book.price);
// }

// class Cart {
//   final List<BooksModel> items = [];
//
//   double get totalPrice =>
//       items.fold(0, (total, book) => total + book.price * item.quantity);
// }

// class Cart {
//   final List<CartItem> items = [];
//
//   double get totalPrice =>
//       items.fold(0, (total, item) => total + item.book.price * item.quantity);
// }
//
// class CartItem {
//   final BooksModel book;
//   int quantity;
//
//   CartItem({required this.book, this.quantity = 1});
// }

//
// class Cart {
//   final List<CartItem> items = [];
//
//   double get totalPrice =>
//       items.fold(0, (total, cartItem) => total + cartItem.book.price);
//
//
//
//
//   // Save the cart to SharedPreferences
//   Future<void> saveToPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartData = items.map((item) => item.toMap()).toList();
//     await prefs.setString('cart', jsonEncode(cartData));
//   }
//
//   // Load the cart from SharedPreferences
//   Future<void> loadFromPrefs() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartData = prefs.getString('cart');
//     if (cartData != null) {
//       final List<Map<String, dynamic>> decodedData = jsonDecode(cartData);
//       items.clear();
//       items.addAll(decodedData.map((item) => CartItem.fromMap(item)));
//     }
//   }
// }
//
// class CartItem {
//   final BooksModel book;
//   int quantity;
//
//   CartItem({
//     required this.book,
//     this.quantity = 1,
//   });
//
//
//   // Serialize CartItem to a map
//   Map<String, dynamic> toMap() {
//     return {
//       'bookId': book.id, // Use the book's id
//       'quantity': quantity,
//     };
//   }
//
//   // Deserialize CartItem from a map
//   factory CartItem.fromMap(Map<String, dynamic> map) {
//     return CartItem(
//       book: BooksModel.getById(map['bookId']), // Get the book by its id
//       quantity: map['quantity'],
//     );
//   }
// }

// import 'package:simple_bookstore/model/book_model.dart';
//
// class CartItem {
//   final String bookId; // Store the book's id
//   int quantity;
//
//   CartItem({
//     required this.bookId,
//     this.quantity = 1,
//   });
//
//   // Serialize CartItem to a map
//   Map<String, dynamic> toMap() {
//     return {
//       'bookId': bookId, // Use the book's id
//       'quantity': quantity,
//     };
//   }
//
//   // Deserialize CartItem from a map
//   factory CartItem.fromMap(Map<String, dynamic> map) {
//     return CartItem(
//       bookId: map['bookId'], // Get the book's id
//       quantity: map['quantity'],
//     );
//   }
// }
//
// class Cart {
//   final List<CartItem> items = [];
//
//
//
//   double get totalPrice {
//     double total = 0;
//     for (final item in items) {
//       final book = getBookById(item.bookId);
//       if (book != null) {
//         total += book.price * item.quantity;
//       }
//     }
//     return total;
//   }
//
// // Your other code here
// }

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'book_model.dart';

class CartItem {
  final BooksModel book;
  int quantity;

  CartItem({required this.book, this.quantity = 1});

  Map<String, dynamic> toJson() {
    return {
      'book': book.toJson(),
      'quantity': quantity,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      book: BooksModel.fromJson(json['book']),
      quantity: json['quantity'],
    );
  }
}

class Cart {
  final List<CartItem> items = [];

  double get totalPrice =>
      items.fold(0, (total, item) => total + item.book.price * item.quantity);

  Future<void> saveToPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cartDataSave = items.map((item) => item.toJson()).toList();
      await prefs.setString('cart', json.encode(cartDataSave));
      print('Cart data saved to SharedPreferences: $cartDataSave');
    } catch (e) {
      print('Error saving cart data: $e');
    }
  }

  Future<void> loadFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cartDataLoad = prefs.getString('cart');
      print('Cart data loaded from SharedPreferences: $cartDataLoad');
      if (cartDataLoad != null) {
        final Iterable decoded = jsonDecode(cartDataLoad);
        final List<CartItem> loadedCart =
        decoded.map((item) => CartItem.fromJson(item)).toList();
        items.clear();
        items.addAll(loadedCart);
        print('Cart data loaded successfully.');
      }
    } catch (e) {
      print('Error loading cart data: $e');
    }
  }

  void addItem(BooksModel book, int quantity) {
    CartItem? existingItem;
    for (var item in items) {
      if (item.book.id == book.id) {
        existingItem = item;
        break;
      }
    }

    if (existingItem != null) {
      existingItem.quantity += quantity;
    } else {
      items.add(CartItem(book: book, quantity: quantity));
    }
    saveToPrefs(); // Save cart data after adding an item
  }

  void updateQuantity(CartItem item, int newQuantity) {
    item.quantity = newQuantity;
    saveToPrefs(); // Save cart data after updating quantity
  }

  void removeItem(CartItem item) {
    items.remove(item);
    saveToPrefs(); // Save cart data after removing an item
  }

  int getCartItemCount() {
    return items.length;
  }
}













