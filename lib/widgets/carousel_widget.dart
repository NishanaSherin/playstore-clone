import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/models/carousel_model.dart';

// ignore: must_be_immutable
class CarouselWidget extends StatelessWidget {
  CarouselWidget({super.key});
  List<CarouselModel> img = [
    CarouselModel(
        urlimg: "https://tse3.mm.bing.net/th?id=OIP.UK6168PkUzSrPhMqzw76qQAAAA&pid=Api&P=0&h=220",
        uptext: "Update available",
        gname: "Compete against other alliance in the new Canyon Clash game mode",
        gameimg: "https://up.yimg.com/ib/th?id=OIP.TequxDQvtCLB42e-IlTucAHaHa&%3Bpid=Api&rs=1&c=1&qlt=95&w=105&h=105",
        gtitle: "Whiteout Survival",
        gsubtitle: "Century Games Pte.Ltd."
      ),
        
            
    CarouselModel(
        urlimg: "https://up.yimg.com/ib/th?id=OIP.Jek3CDQGyU5V2g3mChz8wQHaE-&%3Bpid=Api&rs=1&c=1&qlt=95&w=146&h=98g",
        uptext: "Ends on 5/9/24",
        gname: "Realistic furniture from favorite brands. Decorate your dream",
        gameimg: "https://up.yimg.com/ib/th?id=OIP.3PqwSK5iu3MSKBOtq2guWgHaHa&%3Bpid=Api&rs=1&c=1&qlt=95&w=99&h=99",
        gtitle: "Design Home",
        gsubtitle: "Crowdstar Inc"
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CarouselSlider(
        options: CarouselOptions(height: 250.0, viewportFraction: 1),
        items: img.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(i.urlimg), fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(i.uptext,style: const TextStyle(backgroundColor: Color.fromARGB(255, 201, 199, 199)),),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
                    child: Text(i.gname,style: const TextStyle(fontSize: 20,color: Colors.white,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8,left:8,right:8),
                    child: ListTile(
                      leading:   Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(i.gameimg)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                      title: Text(i.gtitle,style: const TextStyle(fontSize: 14,color: Colors.white,),),
                      subtitle:Text(i.gsubtitle,style: const TextStyle(fontSize: 9,color: Colors.white,),) ,
                      trailing: Column(
                        children: [
                          ElevatedButton(onPressed: (){}, child: const Text("Install",)),
                          const Text("In-app purchases",style: TextStyle(fontSize: 5,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              );
            },
          );
        }).toList(),
      )),
    );
  }
}
