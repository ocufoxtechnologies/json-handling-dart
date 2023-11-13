class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});

  factory Rating.fromMap(dynamic jsonValue) {
    return Rating(rate: jsonValue['rate'], count: jsonValue['count']);
  }
}
