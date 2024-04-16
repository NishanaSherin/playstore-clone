import 'package:flutter/material.dart';
import 'package:playstore_application/screens/apps_screen/appcategoryscreen.dart';
import 'package:playstore_application/screens/apps_screen/appforyou.dart';
import 'package:playstore_application/screens/apps_screen/appkidscreen.dart';
import 'package:playstore_application/screens/apps_screen/apps_screen.dart';
import 'package:playstore_application/screens/apps_screen/apptopscreen.dart';
import 'package:playstore_application/screens/books_screen.dart';
import 'package:playstore_application/screens/games_screen/games_screen.dart';
import 'package:playstore_application/screens/offers_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> screenlist = [
    const GamesScreen(),
    const AppScreen(),
    const OfferScreen(),
    const BooksScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 12),
              labelText: "Search apps & games ",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey,
              filled: true,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic)),
          style: TextStyle(
            height: .5,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined)),
          const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                "https://tse4.explicit.bing.net/th?id=OIP.QJflWTxmsPT-yJcHCnabEwHaHk&pid=Api&P=0&h=220",
              ))
        ],
      ),
      body: screenlist[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        backgroundColor: const Color.fromARGB(255, 195, 177, 193),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
          BottomNavigationBarItem(icon: Icon(Icons.tag), label: "Offers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined), label: "Books"),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
