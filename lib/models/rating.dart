import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});
}
