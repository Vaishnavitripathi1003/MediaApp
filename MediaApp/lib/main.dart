import 'package:flutter/material.dart';
import 'package:mydiary/Screens/DashBorad/dashboard.dart';
import 'package:mydiary/Screens/Home/home_screen.dart';
import 'package:mydiary/Screens/LanguageScreen.dart';

import 'Screens/Home/Profile.dart';
import 'Screens/Home/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //fjghfkjgh
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const LanguageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

