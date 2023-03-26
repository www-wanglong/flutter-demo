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
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  List<String> _list = ['曹操', '司马懿', '曹仁', '许褚', '荀彧'];

  List<Widget> _weiguo() {
    return _list
        .map((name) => Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text('魏'),
              ),
              label: Text(name),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Wrap(
          children: _weiguo(),
          spacing: 28,
          runSpacing: 100.0,
          alignment: WrapAlignment.spaceAround,
        ),
        Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('刘备'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('刘备'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('张飞'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('赵云'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('诸葛亮'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('关羽'),
            )
          ],
        )
      ],
    );
  }
}
