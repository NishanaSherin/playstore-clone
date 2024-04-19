import 'package:flutter/material.dart';
import 'package:playstore_application/screens/books_screen/book_comics_screen.dart';
import 'package:playstore_application/screens/books_screen/book_ebook_screen.dart';
import 'package:playstore_application/screens/books_screen/book_genres_screen.dart';
import 'package:playstore_application/screens/books_screen/book_newrelease_screen.dart';
import 'package:playstore_application/screens/books_screen/book_topfree_screen.dart';
import 'package:playstore_application/screens/books_screen/book_topselling_screen.dart';
import 'package:playstore_application/screens/books_screen/boook_audiobook_screen.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    DefaultTabController(
      length:7 ,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            indicatorPadding:EdgeInsets.zero ,
            isScrollable: true,
            tabs: [
              Tab(text: "Ebooks"),
              Tab(
                text: "Audiobooks",
              ),
              Tab(text: "Comics"),
              Tab(text: "Genres"),
              Tab(text: "Top selling"),
              Tab(text: "New release"),
              Tab(text: "Top free"),
            ],
          ),
        ),
        body:const TabBarView(
          children: [
            BookEbookScreen(),
            BookAudiobookScreen(),
            BookComicsScreen(),
            BookGenresScreen(),
            BookTopsellScreen(),
            BookNewreleaseScreen(),
            BookTopfreeScreen(),
      
        ]), 
      ),
    );
  }
}