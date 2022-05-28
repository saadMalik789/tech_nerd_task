import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colors.primaryLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              title: 'Call List',
              onPressed: controller.openCallPage,
            ),
            verticalSpacer(20),
            AppButton(
              title: 'Buy List',
              onPressed: controller.openBuyPage,
            ),
            verticalSpacer(20),
            AppButton(
              title: 'Sell List',
              onPressed: controller.openSellPage,
            ),
          ],
        ),
      ),
    );
  }
}
