import 'package:flutter/material.dart';
//import 'package:playstore_application/models/app_reco_model.dart';
import 'package:playstore_application/models/app_sugg_model.dart';

// ignore: must_be_immutable
class AppSuggestnWidget extends StatelessWidget {
   AppSuggestnWidget({super.key});
List<AppSuggestingModel> appSList=[
  AppSuggestingModel(
    appimg1: "https://tse1.mm.bing.net/th?id=OIP.-ZirgQE5pr8e7htQWowJIgHaHa&pid=Api&P=0&h=220", 
    aname11: "Instagram", 
    aname12: "Social . Networking", 
    aname13: "4.8", 
    aname14: "150 MB", 
    appimg2: "https://tse4.mm.bing.net/th?id=OIP.EAq12cEThxJ9Bpu9mpqzeAHaHa&pid=Api&P=0&h=220", 
    aname21: "Nykaa -Beauty Shopping App", 
    aname22: "Beauty . Shopping", 
    aname23: "4.5", 
    aname24: "20 MB", 
    appimg3: "https://tse3.mm.bing.net/th?id=OIP.Vq_q9O_hkF-IHSYQFbEESwHaHa&pid=Api&P=0&h=220", 
    aname31: "ShareChat Trends Video & Live", 
    aname32: "Social . Networking", 
    aname33: "4.2", 
    aname34: "42 MB",
  ),
  AppSuggestingModel(
    appimg1: "https://tse3.mm.bing.net/th?id=OIP.ISya7g4nFLb03z7F4S9BAQHaHa&pid=Api&P=0&h=220", 
    aname11: "Groww Stock, Mutual Fund", 
    aname12: "Finance", 
    aname13: "4.1", 
    aname14: "50 MB", 
    appimg2: "https://tse3.mm.bing.net/th?id=OIP.9AZaS8ACsahNZzyaTgfqiAHaHa&pid=Api&P=0&h=220", 
    aname21: "Purplle Online Shopping", 
    aname22: "Beauty . Shopping", 
    aname23: "4.3", 
    aname24: "24 MB", 
    appimg3: "https://tse2.mm.bing.net/th?id=OIP.7Qt6seAJiT33BMgoy18v7wHaHa&pid=Api&P=0&h=220", 
    aname31: "TeraBox: Cloud Storage Space", 
    aname32: "Tools . Storage & backup", 
    aname33: "4.1", 
    aname34: "68 MB",
  ),
  // AppSuggestingModel(
  //   appimg1: "", 
  //   aname11: "", 
  //   aname12: "", 
  //   aname13: "", 
  //   aname14: "", 
  //   appimg2: "", 
  //   aname21: "", 
  //   aname22: "", 
  //   aname23: "", 
  //   aname24: "", 
  //   appimg3: "", 
  //   aname31: "", 
  //   aname32: "", 
  //   aname33: "", 
  //   aname34: "",
  // ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
        itemBuilder: (context, index) {
          AppSuggestingModel item = appSList[index];
          return SizedBox(
            width: 350,
            //color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.appimg1)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title:
                      Text(item.aname11, style: const TextStyle(fontSize: 15)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.aname12, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(item.aname13,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.aname14,style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.appimg2)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title:
                      Text(item.aname21, style: const TextStyle(fontSize: 15)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.aname22, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(item.aname23,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.aname24,style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(item.appimg3)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  title:
                      Text(item.aname31, style: const TextStyle(fontSize: 15)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.aname32, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(item.aname33,style: const TextStyle(fontSize: 10)),
                            const SizedBox(width: 1,),
                            const Icon(Icons.star,size: 10,),
                            const SizedBox(width: 7,),
                            Text(item.aname34,style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: appSList.length,
        scrollDirection: Axis.horizontal,
      ),
      ),
      );
  }
}