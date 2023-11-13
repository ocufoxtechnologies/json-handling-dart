import 'package:json_trial/rating.dart';

class Product {
  final String image;
  final String title;
  final String description;
  final num price;
  final Rating rating;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
  });

  factory Product.fromJson(dynamic jsonValue) {
    return Product(
      image: jsonValue['image'],
      title: jsonValue['title'],
      description: jsonValue['description'],
      price: jsonValue['price'],
      rating: Rating.fromMap(jsonValue['rating']),
    );
  }

  dynamic toJson() {
    return {
      'image': image,
      'description': description,
      'title': title,
      'price': price,
      // 'rating': {
      //   'rate': rating,
      //   'count': count
      // }
    };
  }
}
