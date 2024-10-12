import 'package:code/models/item.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2241720044 Muhammad Kemal Nugraha'),
        ],
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  static const routeName = '/item';

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return MaterialApp(
      title: 'Flutter layout: M Kemal Nugraha dan 2241720044 Anda',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: const Text('Shopping List'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Card(
            child: Container(
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display photo (assuming assets)
                  if (itemArgs.photo != null)
                    Hero(
                      tag: 'imageHero',
                      child: Image.asset(
                        itemArgs.photo!,
                        height: 400.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Expanded(
                    child: Text(
                      itemArgs.name,
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stock: ${itemArgs.stock}',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '${itemArgs.rating} stars',
                        style: TextStyle(color: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
