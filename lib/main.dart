// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:travel/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        primaryColorLight: const Color(0xFFD8ECF1),
      ),
      home: HomeScreen(),
    );
  }
}
