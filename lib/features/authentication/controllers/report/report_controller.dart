import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ReportController extends GetxController {
  static ReportController get instance => Get.find();

  late String date, hrs, mins, locDesc, incidentDesc, time;

  void initializeFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  void sendToFirebase(String date, String hrs, String mins, String locDesc, String incidentDesc) {
    this.date = date;
    this.hrs = hrs;
    this.mins = mins;
    this.locDesc = locDesc;
    this.incidentDesc = incidentDesc;
    String time = "$hrs : $mins";
    initializeFirebase();
    FirebaseFirestore.instance
        .collection('report')
        .add({'date': date,
              'time': time,
              'LocationDescription': locDesc,
              'IncidentDescription': incidentDesc});
  }
}