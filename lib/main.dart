import 'package:flutter/material.dart';
import 'package:project_2/Screens/Home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //theme: AppThemes.WhiteLightTheme
    );
  }
}