

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
    saveToPrefs();
  }

  void updateQuantity(CartItem item, int newQuantity) {
    item.quantity = newQuantity;
    saveToPrefs();
  }

  void removeItem(CartItem item) {
    items.remove(item);
    saveToPrefs();
  }

  int getCartItemCount() {
    return items.length;
  }
}













