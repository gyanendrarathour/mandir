import 'package:flutter/material.dart';
import 'package:mandir/view/homeView.dart';
import 'package:mandir/view/mandirDetailsView.dart';
import 'package:mandir/view/mandirListView.dart';
import 'package:mandir/view/splashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: false,
      ),
      home: const SplashView(),
    );
  }
}