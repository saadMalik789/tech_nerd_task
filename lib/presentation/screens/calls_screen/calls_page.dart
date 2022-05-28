import 'package:technerd_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallsPage extends GetView<CallsController> {
  CallsPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colors.primaryLight,
      appBar: AppBarWidget(title: 'Call List',onBack: controller.onBack,),
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
          return CallItem(
            name: controller.data[index].name,
            number: controller.data[index].number,
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
