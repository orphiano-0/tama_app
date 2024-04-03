import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget appBarDefault() => AppBar(
  leading: RotatedBox(
    quarterTurns: 3,
    child: IconButton(
      onPressed: () { },
      icon: const Icon(Icons.filter_list_outlined),
    ),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 24, top: 4, bottom: 4),
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.elliptical(15, 15)),
          border: Border.all(color: Get.theme.primaryColorLight, width: 1.5)
        ),
        child: Image.asset('assets/images/content/user.png'),
      ),
    )
  ],
);
