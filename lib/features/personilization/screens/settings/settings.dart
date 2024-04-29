// settings.dart
import 'package:flutter/material.dart';
import 'package:tama_app/features/authentication/screens/login/login.dart';
import 'package:tama_app/features/personilization/screens/faqs/faqs.dart';
import 'package:tama_app/features/personilization/screens/profile/profile.dart';
import 'package:tama_app/features/personilization/screens/settings/widgets/profile_widget.dart';
import 'package:tama_app/features/personilization/screens/wallet/wallet.dart';
import 'package:tama_app/utils/constants/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  // Function to navigate to profile screen
  void _navigateToProfileScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: const Text('Profile👤', style: TextStyle(color: TColors.primary)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: TColors.primary, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: ExactAssetImage('assets/images/content/user.png'),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: TColors.primary.withOpacity(.5),
                    width: 5.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width * .3,
                child: Row(
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        color: TColors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'johndoe@gmail.com',
                style: TextStyle(
                  color: TColors.black.withOpacity(.3),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: size.height * .7,
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ProfileWidget with onTap property
                      ProfileWidget(
                        icon: Icons.person,
                        title: 'My Profile',
                        onTap: () => _navigateToProfileScreen(context), // Navigate to profile screen
                      ),
                      ProfileWidget(
                        icon: Icons.wallet,
                        title: 'Wallet',
                        onTap: () {
                          // Add functionality here
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WalletScreen()),
                          );
                        },
                      ),
                      ProfileWidget(
                        icon: Icons.chat,
                        title: 'FAQs',
                        onTap: () {
                          // Add functionality here
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FAQsPage()),
                          );
                        },
                      ),
                      ProfileWidget(
                        icon: Icons.logout,
                        title: 'Log Out',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

