//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:playstore_application/widgets/carousel_widget.dart';
import 'package:playstore_application/widgets/offlinegame_widget.dart';
import 'package:playstore_application/widgets/suggested_widget.dart';

class GamesForuScreen extends StatelessWidget {
  const GamesForuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 10,),
          SizedBox(
            height: 200,
            child: CarouselWidget()),
          const SizedBox(height: 13,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Suggested for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
          ),
            SizedBox(
              height: 250,
              child:  SuggestingWidgets(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Offline games",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                ),
                IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward)),
              ],
            ),
            SizedBox(
              height: 250,
              child:  OfflineGameWidgets(),
            ),
        ],
      ),
    );
  }
}
