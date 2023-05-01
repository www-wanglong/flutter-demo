import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => LikesModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("首页"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('${context.watch<LikesModel>().counter}'),
          TextButton(
              onPressed: Provider.of<LikesModel>(context)._incrementCounter,
              child: Icon(Icons.thumb_up))
        ],
      ),
    );
  }
}

// 创建数据模型
class LikesModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  _incrementCounter() {
    _counter++;

    // 通知ui更新
    notifyListeners();
  }
}
