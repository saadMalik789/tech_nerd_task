import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.initialize(context: context);
    return Scaffold(
      backgroundColor: colors.primaryLight,
      body: Center(
        child: Text(
          'Welcome to TechNerd',
          style: TextStyle(
            fontSize: sizes.fontRatio * 16,
            color: colors.primaryDark,
          ),
        ),
      ),
    );
  }
}
