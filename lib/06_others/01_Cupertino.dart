import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //
          Text('android'),
          MaterialDemo(),
          Text('IOS'),
          CupertinoDemo()
        ],
      ),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('确认删除吗'),
        actions: [
          TextButton(onPressed: () {}, child: Text('取消')),
          TextButton(onPressed: () {}, child: Text('确认'))
        ],
      ),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
          title: Text('提示'),
          content: Text('确认删除吗'),
          actions: [
            TextButton(onPressed: () {}, child: Text('取消')),
            TextButton(onPressed: () {}, child: Text('确认'))
          ]),
    );
  }
}
