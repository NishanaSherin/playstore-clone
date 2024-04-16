import 'package:flutter/material.dart';
//import 'package:playstore_application/screens/examplescreen.dart';
import 'package:playstore_application/screens/home_screen.dart';
import 'package:playstore_application/widgets/card_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
    );
  }
}