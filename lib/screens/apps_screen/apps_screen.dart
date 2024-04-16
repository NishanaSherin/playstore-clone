import 'package:flutter/material.dart';
import 'package:playstore_application/screens/apps_screen/appcategoryscreen.dart';
import 'package:playstore_application/screens/apps_screen/appforyou.dart';
import 'package:playstore_application/screens/apps_screen/appkidscreen.dart';
import 'package:playstore_application/screens/apps_screen/apptopscreen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(
        title: const TabBar(
          tabs: [
            Tab(text: "For you"),
            Tab(
              text: "Top charts",
            ),
            Tab(text: "Kids"),
            Tab(text: "Categories"),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          AppforuScreen(),
          AppTopScreen(),
          AppKidScreen(),
          AppCategoryScreen(),
        ],
      ),
      ),
    );
  }
}
