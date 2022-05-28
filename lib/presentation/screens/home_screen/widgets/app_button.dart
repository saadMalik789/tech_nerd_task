import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final Function onPressed;

  const AppButton({
    Key? key,
    this.title = '',
    this.width = 120,
    this.height = 40,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Container(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: sizes.fontRatio * 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
