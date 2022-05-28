import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';

class CallItem extends StatelessWidget {
  final String? name;
  final String? number;
  final double fontSize;
  final FontWeight fontWeight;

  const CallItem({
    Key? key,
    this.name = '',
    required this.number,
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
            'Number: $number',
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
