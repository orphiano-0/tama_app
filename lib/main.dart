import 'package:flutter/material.dart';
import 'package:tama_app/features/authentication/screens/login/login.dart';
import 'app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import './features/personilization/screens/wallet/providers/wallet_provider.dart';

import 'data/model/add_date.dart';


void main() async{
  // Todo: Add Widgets Binding-Done
  // Todo: Init Local Storage-Done
  // Todo: Await Native Splash-Done
  // Todo: Initialize Firebase-Done [Raymond]
  // Kaya matagal loading neto kasi inaantay matapos yung initialization ng firebase LMAO
  // Todo: Initialize Authentication
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WalletProvider()),
        // Add other providers if needed
      ],
      child: App(),
    ),
  );
  await Firebase.initializeApp();
}

