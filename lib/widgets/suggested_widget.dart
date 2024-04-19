import 'package:flutter/material.dart';
import 'package:playstore_application/models/suggesting_model.dart';

// ignore: must_be_immutable
class SuggestingWidgets extends StatelessWidget {
   SuggestingWidgets({super.key});
  List<SuggestingModel> suggestList =[
   SuggestingModel(
    gmimg1: "https://tse2.mm.bing.net/th?id=OIP.1dxXUkOyg849PSWC6MaGpwHaD4&pid=Api&P=0&h=220",
    gmimg2: "https://tse2.mm.bing.net/th?id=OIP.pCvPh6wyP-5u4PLtRnAkDQHaHa&pid=Api&P=0&h=220", 
    gmname: "Bubble Shooter: Bubble",
    gmname2: "Puzzle . Bubble shooter",
    gmname3: "4.3",
    gmname4: "45 MB"
   ),
    SuggestingModel(
    gmimg1: "https://tse1.mm.bing.net/th?id=OIP.uFFL0l63sA3QIOW0K-OrkAAAAA&pid=Api&P=0&h=220",
    gmimg2: "https://tse2.mm.bing.net/th?id=OIP.1k8DBzCvASvXVq_IuxWgPwHaFj&pid=Api&P=0&h=220", 
    gmname: "Ludo",
    gmname2: "Board . Ludo",
    gmname3: "4.1",
    gmname4: "30 MB"
   ),
    SuggestingModel(
    gmimg1: "https://tse1.mm.bing.net/th?id=OIP.gh4hgdLOUpEdgoDUZfFnlAHaEK&pid=Api&P=0&h=220",
    gmimg2: "https://tse2.mm.bing.net/th?id=OIP.lG6xCujU7Xv7YC8E12tlPwAAAA&pid=Api&P=0&h=220", 
    gmname: "My Cooking: Restaurant",
    gmname2: "Simulation",
    gmname3: "4.1",
    gmname4: "134 MB" 
   ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(itemBuilder: (context,index){
          SuggestingModel item = suggestList[index];
          return SizedBox(
            height: 200,
            width: 300,
            //color: Colors.yellow,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(item.gmimg1),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.gmimg2)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title: Text(item.gmname,style: const TextStyle(fontSize: 15),),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.gmname2,style: const TextStyle(fontSize: 10)),
                        Row(
                          children: [
                            Text(item.gmname3,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.gmname4,style: const TextStyle(fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  
                )
              ],
            ),          
          );
        },
        itemCount: suggestList.length,
        scrollDirection: Axis.horizontal,)
      ),
    );
  }
}