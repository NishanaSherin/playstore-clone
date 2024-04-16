import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore_application/widgets/carousel_model.dart';

class CarouselWidget extends StatelessWidget {
  CarouselWidget({super.key});
  List<CarouselModel> img = [
    CarouselModel(
        urlimg:
            "https://up.yimg.com/ib/th?id=OIP.Oc-T0TUXo2iuOBfQfLSbDAHaEo&%3Bpid=Api&rs=1&c=1&qlt=95&w=157&h=98 "),
    CarouselModel(
        urlimg:
            "https://up.yimg.com/ib/th?id=OIP.Jek3CDQGyU5V2g3mChz8wQHaE-&%3Bpid=Api&rs=1&c=1&qlt=95&w=146&h=98g")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CarouselSlider(
        options:
            CarouselOptions(height: 300.0, viewportFraction: 1),
        items: img.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration:  BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage(i.urlimg),fit: BoxFit.fill)
                     
                          ),
                  );
            },
          );
        }).toList(),
      )),
    );
  }
}
