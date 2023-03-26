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
    return Column(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          reverse: true,
          child: Column(
            children: [
              OutlinedButton(onPressed: () {}, child: Text('button1')),
              OutlinedButton(onPressed: () {}, child: Text('button1')),
              OutlinedButton(onPressed: () {}, child: Text('button1')),
              OutlinedButton(onPressed: () {}, child: Text('button1')),
              OutlinedButton(onPressed: () {}, child: Text('button1')),
            ],
          ),
        )
      ],
    );
  }
}
