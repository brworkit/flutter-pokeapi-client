import 'package:flutter/material.dart';

class PokemonOverviewTitle extends StatelessWidget {
  const PokemonOverviewTitle({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(item["name"].toUpperCase(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
