import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/widgets/carousel_widget.dart';

class GamesForuScreen extends StatelessWidget {
  const GamesForuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CarouselWidget(),
    );
  }
}
