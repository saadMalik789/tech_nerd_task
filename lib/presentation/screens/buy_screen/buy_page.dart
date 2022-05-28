import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyPage extends GetView<BuyController> {
  BuyPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colors.primaryLight,
      appBar: AppBarWidget(
        title: controller.type == 1 ? 'Buy List' : 'Sell List',
        onBack: controller.onBack,
      ),
      body: controller.obx(
        (state) => getBody(context),
        onLoading: const LoadingState(),
        onEmpty: const EmptyState(),
      ),
    );
  }

  Widget getBody(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return BuyItem(
            name: controller.data[index].name,
            price: controller.data[index].price,
            quantity: controller.data[index].quantity,
          );
        },
        separatorBuilder: (context, index) => Divider(
              height: 1,
              indent: 0,
              endIndent: 0,
              color: colors.colorGrey,
            ),
        itemCount: controller.data.length);
  }
}
