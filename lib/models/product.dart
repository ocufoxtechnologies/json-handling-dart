import 'package:json_annotation/json_annotation.dart';
import 'package:json_trial/models/rating.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String image;
  final String title;
  @JsonKey(
    name: 'description',
  )
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

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
