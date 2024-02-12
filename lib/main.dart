import 'package:flutter/material.dart';
import 'package:ui1/building_details.dart';
import 'package:ui1/home_screen.dart';
import 'package:ui1/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  MyThemeData.lightTheme,
      home:BuildingDetails()
      //HomeScreen(),
    );
  }
}
