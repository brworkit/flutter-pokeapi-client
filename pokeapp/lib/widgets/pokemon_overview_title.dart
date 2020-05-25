import 'package:flutter/material.dart';

class PokemonOverviewTitle extends StatelessWidget {
  const PokemonOverviewTitle({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Text(
        item["name"].toUpperCase(),
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
  }
}
