import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:playstore_application/widgets/books_ebook_widgets.dart';

class BookEbookScreen extends StatelessWidget {
  const BookEbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Recently reduced ebooks",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                      Text("Our latest offers",style: TextStyle(fontSize: 14,color: Colors.grey),),
                    ],
                  ),
                ),
                IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward)),
              ],
            ),
            SizedBox(height: 210,child: BookWidgets(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Top sellers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                      Text("Most popular on Google Play",style: TextStyle(fontSize: 14,color: Colors.grey),),
                    ],
                  ),
                ),
                IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward)),
              ],
            ),
            SizedBox(height: 210,child: BookWidgets(),),
          ],
        ),),
    );
  }
}