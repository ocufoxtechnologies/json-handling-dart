import 'package:flutter/material.dart';
import 'package:json_trial/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Image.network(
            product.image,
            height: 300,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "USD ${product.price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  product.desc,
                ),
              ),
              Column(
                children: [
                  Chip(
                    label: Text(
                      '${product.rating.rate}',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  Text(
                    "${product.rating.count} reviews",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
