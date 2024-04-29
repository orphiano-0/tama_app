import 'package:flutter/material.dart';
import 'package:tama_app/common/widgets/side_menu/text_icon_button.dart';
import 'package:tama_app/features/authentication/screens/login/login.dart';
import 'package:tama_app/features/personilization/screens/settings/settings.dart';
import 'package:tama_app/features/personilization/screens/wallet/wallet.dart';
import 'package:tama_app/navigation_menu.dart';
import 'package:tama_app/utils/constants/colors.dart';

import '../../../features/personilization/screens/profile/profile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          // Header part of the drawer
          InkWell(
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const ProfileScreen(),
              ),
            ),
            child: buildHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextIconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const NavigationMenu(),
                    ),
                  ),
                  icon: Icons.home,
                  label: 'Home Screen',
                ),
                TextIconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const WalletHomeScreen(),
                    ),
                  ),
                  icon: Icons.wallet,
                  label: 'Wallet',
                ),
                TextIconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const SettingsScreen(),
                    ),
                  ),
                  icon: Icons.settings,
                  label: 'Settings',
                ),
                const Divider(
                  height: 50,
                  color: Colors.black,
                  thickness: 1,
                ),
                TextIconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const LoginScreen(),
                    ),
                  ),
                  icon: Icons.logout,
                  label: 'Log Out',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildHeader() => InkWell(
  child: Container(
    padding: const EdgeInsets.only(
      top: 40,
      bottom: 20,
    ),
    color: TColors.primary,
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/content/user.png'),
        ),
        SizedBox(height: 15),
        Text(
          'ByteBots',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    ),
  ),
);