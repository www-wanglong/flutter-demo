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
  MyWidget({super.key});

  final List<dynamic> _tiles = [
    Container(color: Colors.yellow),
    Container(color: Colors.red)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
      itemBuilder: (context, index) {
        return _tiles[index];
      },
      itemCount: _tiles.length,
    ));
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        maxCrossAxisExtent: 200,
        children: List.generate(10, (index) => Icon(Icons.expand)),
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) => Icon(Icons.person)),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        childAspectRatio: 1.5,
        padding: EdgeInsets.symmetric(horizontal: 40),
      ),
    );
  }
}
