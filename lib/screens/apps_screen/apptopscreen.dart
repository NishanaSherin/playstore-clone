import 'package:flutter/material.dart';

class  AppTopScreen extends StatelessWidget {
  const  AppTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Apps Top chart screen")),
    );
  }
}