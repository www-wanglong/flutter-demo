import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "flutter",
        style: TextStyle(fontSize: 20),
      ),
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(12, 24, 12, 24),
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 10, color: Colors.red),
            left: BorderSide(width: 10, color: Colors.red),
            bottom: BorderSide(width: 10, color: Colors.red),
            right: BorderSide(width: 10, color: Colors.red),
          ),
          //borderRadius: BorderRadius.all(Radius.circular(30))),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
          color: Colors.blueGrey),
      alignment: Alignment.bottomCenter,
      transform: Matrix4.translationValues(100, 0, 0),
    );
  }
}
