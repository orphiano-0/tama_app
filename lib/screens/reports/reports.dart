import 'package:flutter/material.dart';
import 'package:tama_app/screens/home/widgets/item_news_feed.dart';
import 'package:tama_app/screens/home/widgets/item_service.dart';
import 'package:tama_app/screens/reports/add_report.dart';
import 'package:tama_app/screens/reports/widgets/search.dart';

import '../../utils/constants/colors.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
          },
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange,
                width: 1.4,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'What is your Report?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Add your on tap logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportForm()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 32,
                    width: 75,
                    child: const Center(
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}