class BooksModel {
  final String title;
  final String author;
  final double price;
  final String description;
  final String image;
  String id;
  final int? quantity;

  BooksModel(
      {required this.title,
      required this.author,
      required this.price,
      required this.description,
      required this.image,
      this.quantity = 1,
      required this.id});

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      title: json['title'],
      author: json['author'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
      quantity: json['quantity'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'price': price,
      'description': description,
      'image': image,
      'quantity': quantity,
      'id': id,
    };
  }
}
