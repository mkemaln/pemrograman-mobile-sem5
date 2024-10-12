import 'package:flutter/material.dart';
import 'package:code/pages/home_page.dart';
import 'package:code/pages/item_page.dart';
import 'package:code/pages/hero_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      ItemPage.routeName: (context) => const ItemPage(),
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
