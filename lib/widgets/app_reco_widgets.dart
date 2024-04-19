import 'package:flutter/material.dart';
import 'package:playstore_application/models/app_reco_model.dart';

// ignore: must_be_immutable
class AppRecommendWidget extends StatelessWidget {
   AppRecommendWidget({super.key});
List<ApprecommendModel> appList = [
  ApprecommendModel(
    aimg: "https://up.yimg.com/ib/th?id=OIP.jWJxOzQUmwNZNBHnkR_oXQHaHa&%3Bpid=Api&rs=1&c=1&qlt=95&w=116&h=116",
    aname1: "Video Editor & ", 
    aname2: "Maker -inshot", 
    aname3: "4.7"),
    ApprecommendModel(
    aimg: "https://up.yimg.com/ib/th?id=OIP.qZnuDhzYH8oGOKjiUZkwiAHaHa&%3Bpid=Api&rs=1&c=1&qlt=95&w=105&h=105",
    aname1: "Meesho: Online", 
    aname2: "Shopping App", 
    aname3: "4.4"),
    ApprecommendModel(
    aimg: "https://tse2.mm.bing.net/th?id=OIP.3-uOPegG6tmkRLb_bxExcAHaHa&pid=Api&P=0&h=220",
    aname1: "Amazone Prime", 
    aname2: "video", 
    aname3: "3.9"),
    ApprecommendModel(
    aimg: "https://tse3.mm.bing.net/th?id=OIP.SEH9Juh4vrgD8nlZYJh9zgHaHa&pid=Api&P=0&h=220",
    aname1: "Zomato: Food", 
    aname2: "Delivery & Dining", 
    aname3: "4.5"),
    ApprecommendModel(
    aimg: "https://tse3.mm.bing.net/th?id=OIP.7fjkS3ybGNyji01Zc1NZtgHaHa&pid=Api&P=0&h=220",
    aname1: "BookMyShow |", 
    aname2: "Movies & Events", 
    aname3: "4.2"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(itemBuilder: (context,index){
          ApprecommendModel item= appList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          image:
                               DecorationImage(image: NetworkImage(item.aimg)),
                          borderRadius: BorderRadius.circular(15)),
                  ),
                  Text(item.aname1),
                  Text(item.aname2),
                  Row(
                    children: [
                      Text(item.aname3),
                      const Icon(Icons.star,size: 10,)
                    ],
                  )
                ],
              ),
            ),
          );
        },itemCount: appList.length,scrollDirection: Axis.horizontal,)),
    );
  }
}