import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tama_app/firebase_options.dart';
import 'package:tama_app/screens/reports/add_report.dart';

class ReportController extends GetxController {
  static ReportController get instance => Get.find();

  void initializeFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
}