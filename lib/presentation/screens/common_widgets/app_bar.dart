import 'package:flutter/material.dart';
import 'package:technerd_task/export.dart';

PreferredSizeWidget AppBarWidget(
    {required String title, required Function onBack}) {
  return AppBar(
    leading: IconButton(
      onPressed: () => onBack(),
      icon: Icon(
        Icons.arrow_back_ios,
        color: colors.primaryDark.withOpacity(0.5),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(
          color: colors.primaryDark,
          fontSize: sizes.fontRatio * 26,
          fontWeight: FontWeight.w900),
    ),
    centerTitle: true,
    backgroundColor: colors.colorGrey.withOpacity(0.5),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 14.0),
        child: Icon(
          Icons.more_vert,
          color: colors.primaryDark.withOpacity(0.5),
        ),
      ),
    ],
  );
}
