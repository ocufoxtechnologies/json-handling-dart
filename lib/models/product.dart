import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:json_trial/models/rating.dart';

@jsonSerializable
class Product {
  final String image;
  final String title;
  @JsonProperty(name: 'description')
  final String desc;
  final num price;
  final Rating rating;

  Product({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    required this.rating,
  });
}
