import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: M Kemal Nugraha dan 2241720044 Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
        ),
        body: const Center(
          child: Text('Choosen Item'),
        ),
      ),
    );
  }
}
