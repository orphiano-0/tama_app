import 'package:flutter/material.dart';
import 'package:tama_app/common/widgets/side_menu/side_menu.dart';
import 'package:tama_app/screens/reports/add_report.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:tama_app/screens/home/widgets/item_news_feed.dart';
import 'package:tama_app/screens/home/widgets/item_service.dart';
import 'package:tama_app/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void _makePhoneCall() async {
    const phoneNumber = 'tel:+8898-4200';
    if (await UrlLauncher.canLaunchUrl(phoneNumber as Uri)) {
      await UrlLauncher.launchUrl(phoneNumber as Uri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  void _sendSMS() async {
    const smsNumber = 'sms:+8898-4200';
    if (await UrlLauncher.canLaunchUrl(smsNumber as Uri)) {
      await UrlLauncher.launchUrl(smsNumber as Uri);
    } else {
      throw 'Could not launch $smsNumber';
    }
  }

  void _onReportTrafficTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ReportForm()),
    );
  }

  void _onRoutePlannerTap(BuildContext context) {
    // Handle route planner tap
  }

  void _openDrawer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyDrawer()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _openDrawer(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Image.asset('assets/images/menu.png', color: Colors.white),
          ),
        ),
        title: const Text(
          'Tama App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 30),
            decoration: BoxDecoration(
              color: TColors.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white, letterSpacing: 1),
                        children: const [
                          TextSpan(text: 'Hi, '),
                          TextSpan(text: 'ByteBots!', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white70, width: 2), shape: BoxShape.circle),
                      child: const CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage('assets/images/content/user.png'),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'Do you have an emergency?',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Now you can contact us in case of any emergency. You can call or message just by pressing buttons below.',
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, height: 1.5),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: _makePhoneCall,
                        style: ElevatedButton.styleFrom(backgroundColor: TColors.error, foregroundColor: Colors.white, padding: const EdgeInsets.all(15)),
                        label: const Text('Call Now'),
                        icon: const Icon(Icons.call),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: _sendSMS,
                        style: ElevatedButton.styleFrom(backgroundColor: TColors.info, foregroundColor: Colors.white, padding: const EdgeInsets.all(15)),
                        label: const Text('Send SMS'),
                        icon: const Icon(Icons.message),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                ListTile(
                  title: Text('Our Services', style: Theme.of(context).textTheme.titleLarge),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemService(
                        title: 'Report Traffic\nCongestion',
                        image: 'assets/images/traffic.png',
                        onTap: () => _onReportTrafficTap(context),
                      ),
                      ItemService(
                        title: 'Route\nPlanner',
                        image: 'assets/images/route.png',
                        onTap: () => _onRoutePlannerTap(context),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: Text('News Feed', style: Theme.of(context).textTheme.titleLarge),
                ),
                const Column(
                  children: [
                    ItemNewsFeed(title: 'Lahore Police Conduct Search & Sweep Operations in City', image: 'assets/images/news1.jpg'),
                    ItemNewsFeed(title: "Met Police IT security breach could do 'incalculable damage in the wrong hands'", image: 'assets/images/news2.jpg'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
