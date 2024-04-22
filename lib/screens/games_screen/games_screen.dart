import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/screens/games_screen/gamecategory_screen.dart';
import 'package:playstore_application/screens/games_screen/gameforu_screen.dart';
import 'package:playstore_application/screens/games_screen/gamekids_screen.dart';
import 'package:playstore_application/screens/games_screen/gamepremium_screen.dart';
import 'package:playstore_application/screens/games_screen/gametop_screen.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child:  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const TabBar(
         // dragStartBehavior: DragStartBehavior.down,
          indicatorPadding:EdgeInsets.zero ,
          isScrollable: true,
          tabs: [
            Tab(text: "For you"),
            Tab(
              text: "Top charts",
            ),
            Tab(text: "Kids"),
            Tab(text: "Premium"),
            Tab(text: "Categories"),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
         GamesForuScreen(),
         GameTopScreen(),
         GameKidsScreen(),
         GamePremiumScreen(),
         GameCategoryScreen(),
        ],
      ),
    ),
    );
  }
}