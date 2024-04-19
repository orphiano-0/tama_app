import 'package:flutter/material.dart';
import 'package:tama_app/screens/reports/add_report.dart';

import '../../utils/constants/colors.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SelectWidget - FRAME
   return Scaffold(
     extendBodyBehindAppBar: true,
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
     body: Column(
      children: [
         Container(
         width: 375,
         height: 727,
         decoration: const BoxDecoration(
           color: Color.fromRGBO(255, 255, 255, 1),
         ),
         child: Stack(
           children: <Widget>[
             Positioned(
               top: 81,
               left: 36,
               child: SizedBox(
                 width: 303,
                 height: 115,
                 child: Stack(
                   children: <Widget>[
                     const Positioned(
                       top: 25,
                       left: 0,
                       child: Text(
                         'Report Traffic Congestion',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           color: Color.fromRGBO(252, 172, 28, 1),
                           fontFamily: 'Poppins Bold',
                           fontSize: 26,
                           letterSpacing: 0,
                           fontWeight: FontWeight.w500,
                           height: 1.5,
                         ),
                       ),
                     ),
                     const SizedBox(height: 30),
                     Positioned(
                       top: 65,
                       left: 0,
                       child: Container(
                         width: 303,
                         height: 43,
                         decoration: const BoxDecoration(
                           color: Color.fromRGBO(252, 172, 28, 0.1899999976158142),
                         ),
                       ),
                     ),
                     Positioned(
                       top: 65,
                       left: 221,
                       child: Container(
                         width: 82,
                         height: 43,
                         decoration: const BoxDecoration(
                           color: Color.fromRGBO(252, 172, 28, 1),
                         ),
                       ),
                     ),

                     const Positioned(
                       top: 79,
                       left: 21,
                       child: Text(
                         'What is your report?',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           color: Color.fromRGBO(252, 172, 28, 1),
                           fontFamily: 'Poppins',
                           fontSize: 13,
                           letterSpacing: 0,
                           fontWeight: FontWeight.normal,
                           height: 1.5,
                         ),
                       ),
                     ),
                     Positioned(
                       top: 81,
                       left: 239,
                       child: GestureDetector(
                         onTap: () {
                           // Add your on tap logic here, such as navigating to another window
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => ReportForm()),
                           );
                         },
                         child: const Text(
                           'Proceed',
                           textAlign: TextAlign.left,
                           style: TextStyle(
                             color: Color.fromRGBO(255, 255, 255, 1),
                             fontFamily: 'Poppins',
                             fontSize: 12,
                             letterSpacing: 0,
                             fontWeight: FontWeight.normal,
                             height: 1.5,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             Positioned(
               top: 220,
               left: 36,
               child: SizedBox(
                 width: 303,
                 height: 517,
                 child: Stack(
                   children: <Widget>[
                     Positioned(
                       top: 21,
                       left: 0,
                       child: Container(
                         width: 303,
                         height: 1,
                         decoration: const BoxDecoration(
                           color: Color.fromRGBO(208, 208, 208, 1),
                         ),
                       ),
                     ),
                     const Positioned(
                       top: 0,
                       left: 0,
                       child: Text(
                         'Or select',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           color: Color.fromRGBO(115, 115, 115, 1),
                           fontFamily: 'Poppins',
                           fontSize: 13,
                           letterSpacing: 0,
                           fontWeight: FontWeight.normal,
                           height: 1.5,
                         ),
                       ),
                     ),
                     const Positioned(
                       top: 24,
                       left: 1,
                       child: Text(
                         'Traffic Incidents\nRoad Safety Violations\nTraffic Violations\nInfrastructure Issues\nPublic Transportation Issues\nWeather-related Incidents\nSpecial Events\nTraffic Enforcement\nTraffic Flow\nPedestrian Safety',
                         textAlign: TextAlign.left,
                         style: TextStyle(
                           color: Color.fromRGBO(115, 115, 115, 1),
                           fontFamily: 'Poppins',
                           fontSize: 15,
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
   );
  }
}