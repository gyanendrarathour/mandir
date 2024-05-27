import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MandirDetailsView extends StatefulWidget {
  const MandirDetailsView({super.key});

  @override
  State<MandirDetailsView> createState() => _MandirDetailsViewState();
}

class _MandirDetailsViewState extends State<MandirDetailsView> {
  List imageList = [
    {"id": 1, "imagePath": "images/m1.jpg"},
    {"id": 2, "imagePath": "images/m2.jpg"},
    {"id": 3, "imagePath": "images/m3.jpg"},
    {"id": 4, "imagePath": "images/m4.jpg"},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Mandir'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                  items: imageList
                      .map((item) => Image.asset(
                            item["imagePath"],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ))
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      })),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      print(entry);
                      return GestureDetector(
                        onTap: ()=>carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key?17:7,
                          height: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key?Colors.cyanAccent:Colors.cyan
                          ),
                        ),
                      );
                    }).toList(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
