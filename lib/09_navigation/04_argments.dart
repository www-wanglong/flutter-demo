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
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'product',
                    arguments: {'title': '主页的商品'}),
                child: Text('商品')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'productDetail',
                    arguments: {'id': 1}),
                child: Text('商品1')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'productDetail',
                    arguments: {'id': 2}),
                child: Text('商品2')),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    final Map argemnts = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("商品:" + argemnts['title']),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map argemnts = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("商品:" + argemnts['id'].toString()),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}

class UnkonePage extends StatelessWidget {
  const UnkonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('404'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('返回'),
          ),
        ],
      ),
    );
  }
}
