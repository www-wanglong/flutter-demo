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
      body: MyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: 'Increment',
        elevation: 0,
        backgroundColor: Colors.green,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 190,
            mainAxisSpacing: 30,
            crossAxisSpacing: 10,
            childAspectRatio: 1.5),
        children: [
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green)
        ],
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 1.5),
        children: [
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green)
        ],
      ),
    );
  }
}
