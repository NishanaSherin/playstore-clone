import 'package:flutter/material.dart';
import 'package:playstore_application/models/offlinegame_model.dart';

// ignore: must_be_immutable
class OfflineGameWidgets extends StatelessWidget {
  OfflineGameWidgets({super.key});
  List<GamesModel> gamesList = [
    GamesModel(
      gameimg1:
          "https://tse4.mm.bing.net/th?id=OIP.rY-8KVbCuldC7Y3W9QJWkwHaHa&pid=Api&P=0&h=220",
      gname11: "Talking Tom Gold Run",
      gname12: "Endless running game",
      gname13: "4.2",
      gname14: "Ends on 17 hours",
      gameimg2:
          "https://tse2.mm.bing.net/th?id=OIP.Nltf1f2cNyH4vz0wZND2BwHaHa&pid=Api&P=0&h=220",
      gname21: "Candy Smash Mania",
      gname22: "Solve sugar & collect candies",
      gname23: "3.5",
      gname24: "Ends in 3 days",
      gameimg3:
          "https://tse2.mm.bing.net/th?id=OIP.EYxzdwbl5itE-Ps_DLTiRQHaHa&pid=Api&P=0&h=220",
      gname31: "Block Puzzle Gem",
      gname32: "Offline block puzzle game",
      gname33: "4.1",
      gname34: "Ends in 6 days"
    ),
    GamesModel(
      gameimg1:
          "https://tse3.mm.bing.net/th?id=OIP.nuRZcCVldzVlvBr6DeGpXQHaHa&pid=Api&P=0&h=220",
      gname11: "Fruit Splash",
      gname12: "Match 3 or more fruits",
      gname13: "4.4",
      gname14: "61 MB",
      gameimg2:
          "https://tse3.mm.bing.net/th?id=OIP.dAdiDKDnnPxNKsBHkxFDMgHaHa&pid=Api&P=0&h=220",
      gname21: "Temple Run 2",
      gname22: "The sequel to the smash",
      gname23: "4.1",
      gname24: "130 MB",
      gameimg3:
          "https://tse2.mm.bing.net/th?id=OIP.IwEUNnxh3R5Mhujm7LehYgHaHa&pid=Api&P=0&h=220",
      gname31: "water Sort Quest",
      gname32: "A puzzle game where you collect water",
      gname33: "4.0",
      gname34: "44 MB"
    ),
    // GamesModel(
    //   gameimg1: "",
    //   gname11: "",
    //   gname12: "",
    //   gname13: "",
    //   gameimg2: "",
    //   gname21: "",
    //   gname22: "",
    //   gname23: "",
    //   gameimg3: "",
    //   gname31: "",
    //   gname32: "",
    //   gname33: ""
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: (context, index) {
          GamesModel item = gamesList[index];
          // ignore: sized_box_for_whitespace
          return Container(
            width: 350,
            //color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.gameimg1)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title:
                      Text(item.gname11, style: const TextStyle(fontSize: 15)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.gname12, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(item.gname13,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.gname14,style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.gameimg2)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title:
                      Text(item.gname21, style: const TextStyle(fontSize: 15)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.gname22, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(item.gname23,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.gname24,style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.gameimg3)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title:
                      Text(item.gname31, style: const TextStyle(fontSize: 15)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.gname32, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(item.gname33,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.gname34,style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: gamesList.length,
        scrollDirection: Axis.horizontal,
      )),
    );
  }
}
