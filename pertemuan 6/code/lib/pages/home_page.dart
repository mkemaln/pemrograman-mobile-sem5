import 'package:flutter/material.dart';
import 'package:code/models/item.dart';

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

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gulaku',
        price: 13000,
        stock: 100,
        rating: 5.0,
        photo: 'gulaku.jpg'),
    Item(
        name: 'Garam cap kapal',
        price: 2000,
        stock: 20,
        rating: 3.9,
        photo: 'garam.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display photo (assuming assets)
                      if (item.photo != null)
                        Hero(
                          tag: 'imageHero',
                          child: Image.asset(
                            item.photo!,
                            height: 200.0,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      Expanded(
                        child: Text(
                          item.name,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stock: ${item.stock}',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '${item.rating} stars',
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
