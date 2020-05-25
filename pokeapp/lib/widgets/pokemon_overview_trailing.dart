import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class PokemonOverviewTrailing extends StatelessWidget {
  const PokemonOverviewTrailing({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Badge(
        toAnimate: true,
        badgeColor: Colors.red,
        badgeContent: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item["id"].toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
