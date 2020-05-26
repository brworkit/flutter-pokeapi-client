import 'package:flutter/material.dart';
import 'package:pokeapp/data.dart';
import 'package:pokeapp/pages/root_page.dart';
import 'package:pokeapp/providers/pokemons.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  // final List<Map<String, dynamic>> items = POKEMONS;

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<Pokemons>(context).items;
    return RootPage(items: items);
  }
}


