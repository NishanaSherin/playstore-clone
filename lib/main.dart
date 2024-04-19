import 'package:flutter/material.dart';
//import 'package:playstore_application/screens/examplescreen.dart';
import 'package:playstore_application/screens/home_screen.dart';
//import 'package:playstore_application/widgets/books_ebook_widgets.dart';
//import 'package:playstore_application/widgets/offers_widget.dart';
//import 'package:playstore_application/widgets/offlinegame_widget.dart';
//import 'package:playstore_application/widgets/suggested_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}