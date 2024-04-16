import 'package:flutter/material.dart';
import 'package:playstore_application/screens/apps_screen/apps_screen.dart';
import 'package:playstore_application/screens/games_screen/games_screen.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int _selectedIndex =0;
  List<Widget> screenlist=[
    const GamesScreen(),
    const AppScreen(),
    const GamesScreen(),
    const GamesScreen(),
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screenlist[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        iconSize: 20,
        backgroundColor:const Color.fromARGB(255, 195, 177, 193) ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.games),label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Apps"),
          BottomNavigationBarItem(icon: Icon(Icons.tag),label: "Offers"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "Books"),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
      ),
      
      
    );
  }
}