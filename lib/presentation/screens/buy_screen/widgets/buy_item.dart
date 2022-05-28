import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';

class BuyItem extends StatelessWidget {
  final String? name;
  final int? price;
  final int? quantity;
  final double fontSize;
  final FontWeight fontWeight;

  const BuyItem({
    Key? key,
    this.name = '',
    required this.price,
    required this.quantity,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name: $name',
            style: TextStyle(
              fontSize: sizes.fontRatio * fontSize,
              fontWeight: fontWeight,
            ),
          ),
          verticalSpacer(10),
          Text(
            'Price: $price',
            style: TextStyle(
              fontSize: sizes.fontRatio * fontSize,
              fontWeight: fontWeight,
            ),
          ),
          verticalSpacer(10),
          Text(
            'Quantity: $quantity',
            style: TextStyle(
              fontSize: sizes.fontRatio * fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
