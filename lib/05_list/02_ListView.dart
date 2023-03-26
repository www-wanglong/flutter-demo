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
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewBasic(),
          ListViewHorizontal(),
          ListViewBuildDemo(),
          ListViewSeparatedDemo()
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text('accss'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.keyboard),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text('accss'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.keyboard),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text('accss'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.keyboard),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text('accss'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.keyboard),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm_outlined),
            title: Text('accss'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.swipe_right),
            selected: true,
            selectedTileColor: Colors.grey,
          )
        ],
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.purple,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}

class ListViewBuildDemo extends StatelessWidget {
  final List<Widget> users = new List<Widget>.generate(
      20, (index) => OutlinedButton(onPressed: () {}, child: Text('姓名$index')));

  ListViewBuildDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: users.length,
          itemExtent: 30,
          itemBuilder: (context, index) {
            return users[index];
          }),
    );
  }
}

class ListViewSeparatedDemo extends StatelessWidget {
  ListViewSeparatedDemo({super.key});

  final List<Widget> products = new List<Widget>.generate(
      20,
      (index) => ListTile(
            leading: Icon(Icons.accessibility),
            title: Text('商品$index'),
            subtitle: const Text('subtitle'),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(title: Text('商品列表')),
        Container(
          height: 200,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return products[index];
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.blue,
                  thickness: 2,
                );
              },
              itemCount: products.length),
        )
      ],
    );
  }
}
