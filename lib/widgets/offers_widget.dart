import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/models/offers_model.dart';

// ignore: must_be_immutable
class OffersWidget extends StatelessWidget {
   OffersWidget({super.key});
List<OffersModel> offerList=[
   OffersModel(
  urlimg: "https://tse3.mm.bing.net/th?id=OIP.oPNZP7oFNMlfJW1kwGCaRwAAAA&pid=Api&P=0&h=220", 
  text1: "For the next week get a 25%", 
  text2: "discount on the Paradiso costume", 
  text3: "Expires in 6d", 
  gameimg: "https://tse2.mm.bing.net/th?id=OIP.6F6gmFxI89q2vAjjm5-hDwHaHn&pid=Api&P=0&h=220", 
  gname: "Robbery bob 2:Double Trouble", 
  gtitle: "Action . Adventure", 
  gsub1: "4.4", 
),
OffersModel(
  urlimg: "https://tse2.mm.bing.net/th?id=OIP.D0E56x4XEI3iKGhsc5VMOgHaDL&pid=Api&P=0&h=220", 
  text1: "Free in-game coins for new ", 
  text2: "players!", 
  text3: "Reward available", 
  gameimg: "https://tse4.mm.bing.net/th?id=OIF.adh9vaAA2q96Ka4ZUsbWrw&pid=Api&P=0&h=220", 
  gname: "Bubble shooter: Bubble", 
  gtitle: "Puzzle. Bubble shooter", 
  gsub1: "4.3", 
),
 
  // OffersModel(
  // urlimg: "", 
  // text1: "", 
  // text2: "", 
  // text3: "", 
  // gameimg: "", 
  // gname: "", 
  // gtitle: "", 
  // gsub1: "", 
  // ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  CarouselSlider(
        options: CarouselOptions(height: 320.0, viewportFraction: 1),
        items: offerList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(i.urlimg), fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(i.text1,style: const TextStyle(fontSize: 15,color: Colors.white),),
                              Text(i.text2,style: const TextStyle(fontSize: 15,color: Colors.white),),
                              Text(i.text3,style: const TextStyle(fontSize: 10,color: Colors.grey),)
                            ],
                          ),
                        ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                     leading:  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(i.gameimg)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                      title: Text(i.gname,style: const TextStyle(fontSize: 14,color: Colors.black,),),
                      subtitle:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(i.gtitle,style: const TextStyle(fontSize: 9,color: Colors.black,),),
                          Row(
                            children: [
                              Text(i.gsub1,style: const TextStyle(fontSize: 9,color: Colors.grey,)),
                              const Icon(Icons.star,size: 10,)
                            ],
                          ),
                        ],
                      ) ,
                  ),
                ],
              )
              );
            },
          );
        }).toList(),
      )),
    );
  }
}