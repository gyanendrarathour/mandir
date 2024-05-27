import 'package:flutter/material.dart';
import 'package:mandir/view/mandirListView.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Select City'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 3,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MandirListView()));
                },
                child: Card(
                  elevation: 10,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      child: const Center(
                          child: Text(
                        'Mathura',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )
                    ]
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 10,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      child: const Center(
                          child: Text(
                        'Maharashtra',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )
                    ]
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 10,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      child: const Center(
                          child: Text(
                        'Rajyasthan',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )
                    ]
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 10,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      child: const Center(
                          child: Text(
                        'Bihar',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )
                    ]
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 10,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyan),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black54
                      ),
                      child: const Center(
                          child: Text(
                            textAlign: TextAlign.center,
                        'Madhya Pradesh',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
