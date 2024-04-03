import 'package:crypto_icons_flutter/crypto_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:tama_app/app.dart';
import 'package:tama_app/features/congestion/widgets/app_bar_default.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDefault(),

    );
  }
}
