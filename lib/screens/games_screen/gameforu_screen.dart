import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/widgets/carousel_widget.dart';

class GamesForuScreen extends StatelessWidget {
  const GamesForuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 250,
            child: CarouselWidget()),
          const SizedBox(height: 10,),
          ListTile(
              leading:const Text("Sponsored .",style: TextStyle(fontSize: 10),) ,
              title:const Text("Suggested for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              trailing: IconButton(onPressed: (){},icon: const Icon(Icons.more_vert),), 
            ),
          
         
        ],
      ),
    );
  }
}
