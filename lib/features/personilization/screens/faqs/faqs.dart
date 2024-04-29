import 'package:flutter/material.dart';

class FAQsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
      ),
      body: ListView(
        children: [
          FAQItem(
            question: 'Why should I use Tama?',
            answer:
            'Tama simplifies reporting vehicle paperwork and traffic violations, rewarding users in the process. It automatically escalates issues to the appropriate authorities and provides accurate, detailed reports with geolocation and images.',
          ),
          FAQItem(
            question: 'What types of activities can a Tama user report?',
            answer:
            'Tama empowers users to: \n- Report accidents and unsafe vehicles.\n- Notify authorities of reckless drivers to enhance road safety.\n- Signal unusual traffic build-up quickly and effectively.',
          ),
          FAQItem(
            question: 'How does Tama ensure that violators settle their fines for users to receive payment?',
            answer:
            'Tama allows users to use the app to alert nearby enforcement agents about violators with outstanding fines in real-time. These agents can then take necessary steps to collect the fines promptly, ensuring that Whistlers receive their share without delay. Additionally, before renewing vehicle documents, violators must settle any outstanding fines, ensuring accountability and timely payment.',
          ),
          // Add more FAQs here
        ],
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                widget.question,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          if (_expanded)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                widget.answer,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
        ],
      ),
    );
  }
}
