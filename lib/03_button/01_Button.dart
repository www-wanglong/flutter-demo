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
      body: ButtonDom(),
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

class ButtonDom extends StatelessWidget {
  const ButtonDom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
              onLongPress: () {
                print('long text button');
              },
              onPressed: () {
                print('点击 text button');
              },
              child: Text('TextButton')),
          ElevatedButton(
              onLongPress: () {
                print('long text button');
              },
              onPressed: () {
                print('点击 text button');
              },
              child: Text('ElevatedButton')),
          OutlinedButton(
            onLongPress: () {
              print('long text button');
            },
            onPressed: () {
              print('点击 text button');
            },
            child: Text('OutlinedButton'),
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 30,
                )),
                foregroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.blue;
                }),
                backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.yellow;
                  }
                  return Colors.white;
                }),
                shadowColor: MaterialStateProperty.all(Colors.amber),
                shape: MaterialStateProperty.all(StadiumBorder(
                    side: BorderSide(color: Colors.green, width: 2))),
                overlayColor: MaterialStateProperty.all(Colors.amber)),
          ),
          OutlinedButtonTheme(
              data: OutlinedButtonThemeData(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.amber))),
              child: OutlinedButton(
                onPressed: () {},
                child: Text('按钮'),
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alarm),
            color: Colors.red,
            tooltip: "闹钟",
          ),
          TextButton.icon(
            icon: Icon(Icons.add_alarm),
            label: Text('文本按钮'),
            onPressed: () {},
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            child: ButtonBar(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('按钮1')),
                ElevatedButton(onPressed: () {}, child: Text('按钮2')),
                ElevatedButton(onPressed: () {}, child: Text('按钮1')),
                ElevatedButton(onPressed: () {}, child: Text('按钮2')),
                ElevatedButton(onPressed: () {}, child: Text('按钮1')),
                ElevatedButton(onPressed: () {}, child: Text('按钮2')),
              ],
            ),
          ),
          BackButton(
            color: Colors.red,
            onPressed: () {},
          ),
          CloseButton(),
        ],
      ),
    );
  }
}
