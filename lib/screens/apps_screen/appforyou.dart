import 'package:flutter/material.dart';
import 'package:playstore_application/widgets/app_reco_widgets.dart';
import 'package:playstore_application/widgets/app_sugg_widget.dart';

class AppforuScreen extends StatelessWidget {
  const AppforuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
                IconButton(onPressed: () {}, icon:  const Icon(Icons.arrow_forward)),
              ],
            ),
            SizedBox(
              height: 170,
              child: AppRecommendWidget(),
            ),
            ListTile(
              leading:const Text("Sponsored .",style: TextStyle(fontSize: 10),) ,
              title:const Text("Suggested for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
              trailing: IconButton(onPressed: (){},icon: const Icon(Icons.more_vert),), 
            ),
            SizedBox(
              height: 230,
              child: AppSuggestnWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Popular apps",
                    style:  TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
                IconButton(onPressed: () {}, icon:  const Icon(Icons.arrow_forward)),
              ],
            ),
            SizedBox(
              height: 170,
              child: AppRecommendWidget(),
            ),
          ],
        ),
      ),
    );
  }
}




