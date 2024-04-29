import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tama_app/screens/reports/preview_screen.dart';
// import 'package:tama_app/features/authentication/controllers/report/report_controller.dart';
import '../../utils/constants/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tama_app/firebase_options.dart';

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  // final controller = Get.put(ReportController());
  var date = '', hrs = '', mins = '', locDesc = '',
      incidentDesc = '', time = '';

  @override
  Widget build(BuildContext context) {
    CollectionReference reports = FirebaseFirestore.instance.collection('reports');
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Image.asset('assets/images/menu.png', color: TColors.primary),
        ),
        title: const Text('Tama App', style: TextStyle(color: TColors.primary),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: TColors.primary, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white70, width: 2),
                shape: BoxShape.circle
            ),
            child: const CircleAvatar(
                radius: 20,
                foregroundImage: AssetImage('assets/images/content/user.png')
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Container(
          width: 375,
          height: 700,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(
            children: <Widget>[
              const Positioned(
                top: 25,
                left: 32,
                child: SizedBox(
                  width: 320,
                  height: 120,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 17,
                        child: Text(
                          'Report Traffic Congestion',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(252, 172, 28, 1),
                            fontFamily: 'Poppins Medium',
                            fontSize: 26,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45,
                        left: 15,
                        child: Text(
                          'Please fill out the relevant information in each section.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(150, 150, 150, 1),
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 70,
                        child: Text(
                          'Fields marked with * are mandatory',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(245, 48, 48, 1.0),
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 125,
                left: 33,
                child: SizedBox(
                  width: 306,
                  height: 80,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 13,
                        child: Text(
                          'When did the incident happen?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 18,
                        left: 13,
                        child: Text(
                          'Date* (mm-dd-yyyy)',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 36,
                        left: 1,
                        child: Container(
                          width: 305,
                          height: 40,
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Date Here",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(115, 115, 115, 0.7),
                              ),
                            ),
                              style: const TextStyle(
                                color: Color.fromRGBO(115, 115, 115, 1),
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                              ),
                            onChanged: (value) {
                              date = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // TODO: Remove the image upload functionality
              Positioned(
                top: 225,
                left: 34,
                child: SizedBox(
                  width: 212,
                  height: 100,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 13,
                        child: Text(
                          'Time of Incident'
                        ),
                      ),
                      const Positioned(
                        top: 18,
                        left: 13,
                        child: Text(
                          'Time (24hr Format e.g. 13:00)*',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 36,
                        left: 0,
                        child: Container(
                          width: 71,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: 'Hrs',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(
                                    110, 106, 106, 1.0),
                              ),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: const TextStyle(
                              color: Color.fromRGBO(115, 115, 115, 1),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                            ),
                            onChanged: (value) => hrs = value,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 48,
                        left: 68,
                        child: Text(
                          '  :',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins Bold',
                            fontSize: 15,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 36,
                        left: 83,
                        child: Container(
                          width:71,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: 'Mins',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(
                                    110, 106, 106, 1.0),
                              ),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              // FilteringTextInputFormatter.allow(RegExp(r'^d{0,2}')),
                            ],
                            style: const TextStyle(
                              color: Color.fromRGBO(115, 115, 115, 1),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                            ),
                            onChanged: (value) => mins = value,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 335,
                left: 34,
                child: SizedBox(
                  width: 305,
                  height: 84,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 13,
                        child: Text(
                          'Where did the incident happen?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 21,
                        left: 0,
                        child: Container(
                          width: 305,
                          height: 63,
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: "Please describe the location of the incident",
                              contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              hintStyle: TextStyle(
                              ),
                            ),
                            maxLines: 4,
                            style: const TextStyle(
                              color: Color.fromRGBO(115, 115, 115, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                            ),
                            onChanged: (value) => locDesc = value,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 445,
                left: 34,
                child: SizedBox(
                  width: 314,
                  height: 130,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 13,
                        child: Text(
                          'What happened?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 21,
                        left: 0,
                        child: Container(
                          width: 305,
                          height: 109,
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: "Please describe the incident",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(115, 115, 115, 0.7),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            maxLines: 8,
                            style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                            ),
                            onChanged: (value) => incidentDesc = value,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 600,
                left: 31,
                child: SizedBox(
                  width: 306,
                  height: 51,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 250, // Fixed width
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(0, 0, 0, 1), // Button background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Circular edge
                              ),
                            ),
                            onPressed: () {
                              // Add your button press logic here
                              reports
                                  .add({
                                    'date':date,
                                    'time':'$hrs : $mins',
                                    'locationDescription': locDesc,
                                    'incidentDescription':incidentDesc,
                                  })
                                  .then((value) => print('Report Submitted'))
                                  .catchError(
                                      (error) => print('Failed to add user: $error'));
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PreviewScreen()),
                              );
                            },
                            child: const Text(
                              'Submit Report',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
          ],
        ),
      )
    );
  }
}

