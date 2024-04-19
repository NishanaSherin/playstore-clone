import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:playstore_application/widgets/offers_widget.dart';
import 'package:playstore_application/widgets/suggested_widget.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Text(
                "Limited-time offer",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
               height: 300,
                              //  width: 400,
               decoration: BoxDecoration(
                 border: Border.all(width: .5),
                 borderRadius: BorderRadius.circular(10),
               ),
               child:
                Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                     child:Image.network("https://tse2.mm.bing.net/th?id=OIP.HEVGf7x9llxi5DwxOueRuAHaEK&pid=Api&P=0&h=220")
                     //  Container(
                     //   height: 200,
                     // //  width: 400,
                     //   decoration:  BoxDecoration(
                     //      borderRadius: BorderRadius.circular(10),
                     //       image: DecorationImage(
                     //           image: NetworkImage(
                     //               "https://tse2.mm.bing.net/th?id=OIP.HEVGf7x9llxi5DwxOueRuAHaEK&pid=Api&P=0&h=220"))),
                     // ),
                   ),
                   const SizedBox(height: 6,),
                   const Text(
                     " Subway Surfaers . Expires in 3d",
                     style: TextStyle(fontSize: 13, color: Colors.grey),
                   ),
                   //const SizedBox(height: 1,),
                   const Text(
                     " Save 85% on the Bazar Breezers Bundle!",
                     style: TextStyle(fontSize: 16, color: Colors.black),
                   ),
                   const SizedBox(
                     height: 6,
                   ),
                   const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text(
                       "Learn more",
                       style: TextStyle(fontSize: 16, color: Colors.blue),
                     ),
                   ),
                 ],
               ),
                              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Offers for games you might like",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 320,child: OffersWidget(),),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Games on sale",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
                IconButton(onPressed: () {}, icon:  const Icon(Icons.arrow_forward)),
              ],
            ),
            SizedBox(height: 250,child: SuggestingWidgets(),)
            ],
          ),
        ),
      ),
    );
  }
}
