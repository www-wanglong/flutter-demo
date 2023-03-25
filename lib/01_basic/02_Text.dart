import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: TextDome(),
    );
  }
}

class TextDome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Text",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 30, color: Colors.red, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        RichText(
            text: const TextSpan(
                text: "hello",
                style: TextStyle(fontSize: 40, color: Colors.amber),
                children: [
              TextSpan(
                  text: "Flutter",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(0xff, 0x00, 0xff, 0x00)))
            ]))
      ],
    );
  }
}
