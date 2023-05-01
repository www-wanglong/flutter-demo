// @dart=2.9
import 'package:flutter/material.dart';

import '09_navigation/04_argments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Dem1o",
      routes: {
        'hemo': (context) => Home(),
        'product': (context) => Product(),
        'productDetail': (context) => ProductDetail()
      },
      initialRoute: 'home',
      onUnknownRoute: (setting) =>
          MaterialPageRoute(builder: (context) => UnkonePage()),
      home: Home(),
      theme: ThemeData(fontFamily: 'Merriweather'),
      debugShowCheckedModeBanner: false,
    );
  }
}
