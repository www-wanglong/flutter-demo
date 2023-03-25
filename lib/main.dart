import 'package:flutter/material.dart';

import '02_layout/03_Flex.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
