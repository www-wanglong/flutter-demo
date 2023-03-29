// @dart=2.9
import 'package:flutter/material.dart';

import '07_third_party/03_shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Dem1o",
      home: Home(),
      theme: ThemeData(fontFamily: 'Merriweather'),
      debugShowCheckedModeBanner: false,
    );
  }
}
