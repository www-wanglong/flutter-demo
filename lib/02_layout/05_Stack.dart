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
      body: StackDome(),
    );
  }
}

class StackDome extends StatelessWidget {
  const StackDome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 200,
            backgroundImage: NetworkImage(
                'https://misc.360buyimg.com/jdf/1.0.0/unit/global-header/5.0.0/i/jdlogo-201708-@2x.png'),
          ),
          Positioned(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Text(
                '热卖',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            top: 100,
            right: 60,
          )
        ],
      ),
    );
  }
}
