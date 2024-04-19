import 'package:flutter/material.dart';

class BookComicsScreen extends StatelessWidget {
  const BookComicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: Text("This is Comics Area")),
    );
  }
}