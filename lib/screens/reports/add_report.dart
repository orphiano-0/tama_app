import 'package:flutter/material.dart';
import 'package:tama_app/screens/reports/preview_screen.dart';

import '../../utils/constants/colors.dart';

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {

  @override
  Widget build(BuildContext context) {
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
          height: 1041,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 973,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PreviewScreen()),
                              );
                            },
                            child: const Text(
                              'Preview',
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
              Positioned(
                top: 552.9999389648438,
                left: 34,
                child: SizedBox(
                  width: 308,
                  height: 262.00006103515625,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 29,
                        left: 0,
                        child: Container(
                          width: 305,
                          height: 125.59327697753906,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Rectangle16.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 2.0000810623168945,
                        left: 0,
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromRGBO(115, 115, 115, 1),
                              size: 18,
                            ),
                            SizedBox(width: 8), // Add some spacing between the icon and the text
                            Text(
                              'Use current location',
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
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 181.0000762939453,
                        left: 0,
                        child: Text(
                          'Is this location above correct?',
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
                      Positioned(
                        top: 206.0000762939453,
                        left: 0,
                        child: Container(
                          width: 150,
                          height: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 206.0000762939453,
                        left: 154,
                        child: Container(
                          width: 151,
                          height: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 227.0000762939453,
                        left: 0,
                        child: Text(
                          'Yes',
                          textAlign: TextAlign.center,
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
                        top: 227.0000762939453,
                        left: 155,
                        child: Text(
                          'No edit',
                          textAlign: TextAlign.center,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 449,
                left: 34,
                child: SizedBox(
                  width: 305,
                  height: 84,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Where did it happen?',
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
                      Positioned(
                        top: 21,
                        left: 0,
                        child: Container(
                          width: 305,
                          height: 63,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 31,
                        left: 241,
                        child: Text(
                          'Upload',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
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
                top: 377,
                left: 34,
                child: SizedBox(
                  width: 305,
                  height: 54,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Image Upload*',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),),
                      ),
                      Positioned(
                        top: 21,
                        left: 0,
                        child: Container(
                          width: 305,
                          height: 33,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 21,
                        left: 219,
                        child: Container(
                          width: 86,
                          height: 33,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(252, 172, 28, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 31,
                        left: 241,
                        child: Text(
                          'Upload',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
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
                top: 308,
                left: 34,
                child: SizedBox(
                  width: 212,
                  height: 51,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Time*',
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
                      const Positioned(
                        top: 29,
                        left: 71,
                        child: Text(
                          '  :',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins Bold',
                            fontSize: 10,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 0,
                        child: Container(
                          width: 71,
                          height: 33,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 83,
                        child: Container(
                          width:71,
                          height: 33,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 29,
                        left: 8,
                        child: Text(
                          '00',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 29,
                        left: 94,
                        child: Text(
                          '00',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
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
              const Positioned(
                top: 72,
                left: 32,
                child: SizedBox(
                  width: 307,
                  height: 133,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 50,
                        left: 2,
                        child: Text(
                          'Please fill out the relevant information in each section.*',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 0,
                        child: Text(
                          'Fields marked with * are mandatory',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 1,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 221,
                left: 33,
                child: SizedBox(
                  width: 306,
                  height: 69,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 18,
                        left: 1,
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
                      const Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'When did it happen?',
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
                      Positioned(
                        top: 36,
                        left: 1,
                        child: Container(
                          width: 305,
                          height: 33,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Date Here",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 825,
                left: 34,
                child: SizedBox(
                  width: 314,
                  height: 130,
                  child: Stack(
                    children: <Widget>[
                      const Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'What happened?',
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
                      Positioned(
                        top: 21,
                        left: 0,
                        child: Container(
                          width: 305,
                          height: 109,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 36,
                        left: 9,
                        child: Text(
                          'Please write what happened...',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(115, 115, 115, 0.41999998688697815),
                            fontFamily: 'Poppins',
                            fontSize: 12,
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
            ],
          ),
        )
          ],
        ),
      )
    );
  }
}

