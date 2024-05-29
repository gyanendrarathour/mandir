import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('About Mandir'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
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
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7,
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.cyanAccent
                                      : Colors.cyan),
                            ),
                          );
                        }).toList(),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Card(
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          'Banke Bihari Mandir:',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Container(
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LOCATION:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Vrandawan Road near bus stand Vrandawan Road near bus stand Vrandawan Road near bus stand',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 20,
                                  softWrap: true,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  'OPENING TIME:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '8 AM',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  'POOJA TIME:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '10 AM & 8 PM',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  'CLOSING TIME:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '11 PM',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NEAREST BUS STAND:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mathura Bus Stand',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 20,
                                  softWrap: true,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'RAILWAY STATION:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mathura Railway Stations',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 20,
                                  softWrap: true,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Container(
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ABOUT MANDIR:',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "In terms of the text-based programming in the UI of a Flutter app development, one can insert a Text widget within a Row widget during screen preparation. The overflow error can occur during this process if one is working with a longer text. That will not sufficiently fit into the width of the overall screen, whi In terms of the text-based programming in the UI of a Flutter app development, one can insert a Text widget within a Row widget during screen preparation. The overflow error can occur during this process if one is working with a longer text. That will not sufficiently fit into the width of the overall screen, which will throw off the whole design. To fix the issue, wrapping the text overflow is the right step, which is easily possible on Flutter with specific sequences. The right Flutter development expertise can help with this process, so hire a development team of Bosc Tech Labs to handle it.",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 20,
                                  softWrap: true,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
