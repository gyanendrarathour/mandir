import 'package:flutter/material.dart';
import 'package:mandir/view/mandirDetailsView.dart';

class MandirListView extends StatefulWidget {
  const MandirListView({super.key});

  @override
  State<MandirListView> createState() => _MandirListViewState();
}

class _MandirListViewState extends State<MandirListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Mandir'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MandirDetailsView()));
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 40,
                          child: Icon(
                            Icons.home,
                            size: 20,
                          ),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                          child: Text(
                            'Mandir ${index + 1}',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
